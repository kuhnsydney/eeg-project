# EEG Seizure Detection – Final Project

This project looks at whether EEG signals differ between seizure and non-seizure segments. The data come from a [Kaggle EEG dataset](https://www.kaggle.com/datasets/subirbiswas19/eeg-dataset) of pediatric epilepsy patients. The report has a table of how many segments are seizure vs. non-seizure, and a boxplot comparing line length between the two groups.

## Building the report

From the project folder, run:

```
make
```

This creates `report.html`. You'll need R with `dplyr`, `ggplot2`, `knitr`, `rmarkdown`, and `here` installed. `make clean` deletes everything that was generated.

## Where the table and figure come from

- **Table 1:** `code/01_make_table.R`
- **Figure 1:** `code/02_make_figure.R`

The other scripts in `code/` clean the data (`00_clean_data.R`) and render the report (`03_render_report.R`). Outputs get saved to `output/`.

## Data

The full dataset is about 2.5 GB, which is too big for GitHub, so `data/eeg_features.csv` is a random sample of 2,000 segments. Each segment is summarized with five features: mean amplitude, SD of amplitude, mean absolute amplitude, peak-to-peak range, and line length.