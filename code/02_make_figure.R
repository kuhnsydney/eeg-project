here::i_am("code/02_make_figure.R")

library(ggplot2)

eeg <- readRDS(here::here("output/eeg_clean.rds"))

# Figure 1: boxplot of line length by seizure status
figure_one <- ggplot(eeg, aes(x = seizure, y = line_length, fill = seizure)) +
  geom_boxplot() +
  labs(
    title = "Line Length by Seizure Status",
    x = "Seizure Status",
    y = "Line Length"
  ) +
  theme_minimal(base_size = 14) +
  theme(legend.position = "none")

ggsave(
  here::here("output/figure_one.png"),
  plot = figure_one,
  device = "png"
)