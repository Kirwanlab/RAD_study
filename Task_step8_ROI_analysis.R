# Script to read in the output of 3dROIstats, do some stats, make some graphs
# 
# I wrote this to be a bit more interactive than a bash script. I load it in 
# R studio, comment/uncomment sections, source/run sections of code and look at the output.


# Load required packages
library(stringr)
library(readr)
library(dplyr)

# ===============================
# User parameters
# ===============================

# analysis directory
outDir <- "/Volumes/Yorick/Duraccio_RAD/derivatives/grp-2025-08-27"

# Interactive bit: change depending on which mask you want:

# ## Main effect of task:
# # Input filename
# filename <- "MVM1_ME_task_p.01_k55_a.05_mask+tlrc.txt"
# #ROI names
# roi_names <- c(
#   "L. Inf. Occipital/Temporal",
#   "R. Inf. Occipital/Temporal",
#   "R. Pre/Post Central Gyrus",
#   "R. Inf. Parietal Lobule",
#   "L. DLPFC",
#   "R. Anterior Insula/Striatum",
#   "R. DLPFC",
#   "L. Middle Temporal Gyrus",
#   "R. Amygdala",
#   "L. Anterior Insula",
#   "R. ACC",
#   "L. ACC",
#   "R. SMA"
# )


# ## Main effect of DLMO (dichotomous):
# # Input filename
# filename <- "MVM1_ME_DLMOd_p.01_k55_a.05_mask+tlrc.txt"
# #ROI names
# roi_names <- c(
#   "R. Precuneus"
# )

# ## Main effect of Duration (dichotomous):
# # Input filename
# filename <- "MVM1_ME_DURd_p.01_k55_a.05_mask+tlrc.txt"
# #ROI names
# roi_names <- c(
#   "L. Hipp./Striatum/Insula/Midbrain",
#   "R. Striatum/Insula/STS",
#   "B. Dors. MPFC",
#   "R. Pars Triang.",
#   "L. Pars Triang.",
#   "L. STS",
#   "R. Hipp./Parahipp. Ctx."
# )

## Main effect of Social Jetlag (dichotomous):
# Input filename
filename <- "MVM1_ME_SJLd_p.01_k55_a.05_mask+tlrc.txt"
#ROI names
roi_names <- c(
  "B. Ventral Midbrain",
  "L. Amygdala"
)




# ===============================
# Read file
# ===============================
# Read all lines
infile <- paste0(outDir,"/",filename)
all_lines <- readLines(infile)

# Your header line (first line)
header_line <- all_lines[1]

# Remove all lines exactly equal to header_line (the repeated headers)
data_lines <- all_lines[all_lines != header_line]

# Create a temporary file with only data lines
temp_file <- tempfile()
writeLines(data_lines, temp_file)

# Split the header line by whitespace for column names
col_names <- str_split(header_line, "\\s+", simplify = TRUE)
col_names <- col_names[col_names != ""]  # remove empty strings if any

# Read the filtered file with correct column names
df <- read_table(temp_file, col_names = col_names)

# ===============================
# Extract some information and organize data frame
# ===============================

# Extract subject ID
df <- df %>%
  mutate(subjID = str_extract(name, "sub-\\d+"))

# Extract task condition
df <- df %>%
  mutate(
    subbrick = str_extract(name, "(?<=_)(\\d+)(?=\\[)"),
    task_condition_raw = str_extract(name, "(?<=\\[)[^\\]]+"),
    subbrick = as.numeric(subbrick),
    task_condition = ifelse(subbrick %% 2 == 1, task_condition_raw, NA_character_),
    # Remove trailing '#0' or any '#' followed by digits
    task_condition = str_remove(task_condition, "#\\d+$")
  ) %>%
  filter(subbrick %in% c(1, 5)) %>% #hard coding the sub-brick numbers here...figure out a way to generalize?
  select(-task_condition_raw)

# ===============================
# Plot Stuff
# ===============================

library(dplyr)
library(tidyr)
library(ggplot2)

# Gather Mean_1 to Mean_n columns into long format, ROI as factor
n_rois <- length(roi_names)

df_long <- df %>%
  pivot_longer(
    cols = starts_with("Mean_"),
    names_to = "ROI",
    values_to = "value"
  ) %>%
  mutate(ROI = factor(ROI, levels = paste0("Mean_", 1:n_rois)))

# add roi names
df_long <- df_long %>%
  mutate(ROI = factor(ROI, levels = paste0("Mean_", 1:n_rois), labels = roi_names))

# Compute mean and SEM by ROI and task_condition
summary_df <- df_long %>%
  filter(!is.na(task_condition)) %>%    # exclude rows without task_condition
  group_by(ROI, task_condition) %>%
  summarise(
    mean_value = mean(value, na.rm = TRUE),
    sem = sd(value, na.rm = TRUE) / sqrt(n()),
    .groups = "drop"
  )

# Plot bar graph with error bars
ggplot(summary_df, aes(x = ROI, y = mean_value, fill = task_condition)) +
  geom_col(position = position_dodge(0.8), width = 0.7) +
  geom_errorbar(aes(ymin = mean_value - sem, ymax = mean_value + sem),
                width = 0.2, position = position_dodge(0.8)) +
  labs(
    x = "ROI",
    y = "Mean Value",
    fill = "Task Condition",
    title = "Mean by ROI and Task Condition with SEM"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# ===============================
# Stats Stuff
# ===============================
library(dplyr)
library(tidyr)
library(broom)
library(purrr)

# Paired t-tests go_corr vs nogo_corr within each ROI
ttest_results <- df_long %>%
  select(subjID, ROI, task_condition, value) %>%
  pivot_wider(names_from = task_condition, values_from = value) %>%
  group_by(ROI) %>%
  summarise(
    test = list(t.test(go_corr, nogo_corr, paired = TRUE)),
    .groups = "drop"
  ) %>%
  mutate(stats = map(test, tidy)) %>%
  unnest(stats) %>%
  # note: "parameter" = degrees of freedom from t.test()
  select(ROI, estimate, statistic, parameter, p.value, conf.low, conf.high)

print(ttest_results)

# ===============================
# comparisons b/w dichotomous variables
# ===============================
library(openxlsx)

# Read in subjects table with predictor variables 
derDir <- "/Volumes/Yorick/Duraccio_RAD/derivatives/grp-2025-08-27"
xlsfilename <- "Subject_table_dich.xlsx"
xlsinfile <- paste0(derDir,"/",xlsfilename)
subject_table <- read.xlsx(xlsinfile, sheet = 1)


# Join with subject predictors
df_long_joined <- df_long %>%
  left_join(subject_table, by = c("subjID" = "subjectID"))

# the dichotomous variables are all factors
df_long_joined <- df_long_joined %>%
  mutate(
    DLMOd = factor(DLMOd),
    CMId  = factor(CMId),
    SJLd  = factor(SJLd),
    DURAd = factor(DURAd)
  )


# # DLMO comparison - ind groups ttest
# ttest_DLMOd <- df_long_joined %>%
#   group_by(ROI) %>%
#   summarise(
#     test = list(t.test(value ~ DLMOd, data = cur_data())),
#     .groups = "drop"
#   ) %>%
#   mutate(stats = map(test, tidy)) %>%
#   unnest(stats) %>%
#   select(ROI, estimate1, estimate2, statistic, parameter, p.value, conf.low, conf.high)
# 
# print(ttest_DLMOd)

# # DURA comparison - ind groups ttest
# ttest_DURAd <- df_long_joined %>%
#   group_by(ROI) %>%
#   summarise(
#     test = list(t.test(value ~ DURAd, data = cur_data())),
#     .groups = "drop"
#   ) %>%
#   mutate(stats = map(test, tidy)) %>%
#   unnest(stats) %>%
#   select(ROI, estimate1, estimate2, statistic, parameter, p.value, conf.low, conf.high)
# 
# print(ttest_DURAd)

# SJL comparison - ind groups ttest
ttest_SJLd <- df_long_joined %>%
  group_by(ROI) %>%
  summarise(
    test = list(t.test(value ~ SJLd, data = cur_data())),
    .groups = "drop"
  ) %>%
  mutate(stats = map(test, tidy)) %>%
  unnest(stats) %>%
  select(ROI, estimate1, estimate2, statistic, parameter, p.value, conf.low, conf.high)

print(ttest_SJLd)


# ===========
# write out csv file with all the data for this mask
# ===========
df_wide <- df_long_joined %>%
  select(subjID, ROI, task_condition, value, DLMOd, CMId, SJLd, DURAd) %>%
  unite(roi_condition, ROI, task_condition, sep = "_") %>%   # combine ROI + condition into one column name
  pivot_wider(
    names_from = roi_condition,
    values_from = value
  )

# Write to CSV
outfile <- paste0(outDir,"/",filename,".csv")
write.csv(df_wide, outfile, row.names = FALSE)
