here::i_am("code/01_make_table.R")

library(dplyr)

eeg <- readRDS(here::here("output/eeg_clean.rds"))

# Table 1: number and percent of EEG segments by seizure status
class_counts <- eeg %>%
  count(seizure) %>%
  mutate(percent = round(100 * n / sum(n), 1))

saveRDS(class_counts, file = here::here("output/table_one.rds"))