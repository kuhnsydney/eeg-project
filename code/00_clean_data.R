here::i_am("code/00_clean_data.R")

library(dplyr)

dir.create(here::here("output"), showWarnings = FALSE)

eeg <- read.csv(here::here("data/eeg_features.csv"))

# Drop the incomplete segment and label seizure status
eeg <- eeg %>%
  filter(!is.na(target)) %>%
  mutate(
    seizure = factor(
      target,
      levels = c(0, 1),
      labels = c("Non-seizure", "Seizure")
    )
  )

saveRDS(eeg, file = here::here("output/eeg_clean.rds"))
