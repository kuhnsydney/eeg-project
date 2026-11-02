report.html: report.Rmd code/03_render_report.R output/table_one.rds output/figure_one.png
	Rscript code/03_render_report.R

output/eeg_clean.rds: code/00_clean_data.R data/eeg_features.csv
	Rscript code/00_clean_data.R

output/table_one.rds: code/01_make_table.R output/eeg_clean.rds
	Rscript code/01_make_table.R

output/figure_one.png: code/02_make_figure.R output/eeg_clean.rds
	Rscript code/02_make_figure.R

.PHONY: clean
clean:
	rm -f output/*.rds output/*.png report.html
