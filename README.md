This is a quick demo to suggest a way of iteratively creating rmarkdown or quarto files.

The run_quarto_or_rmarkdown.R file shows how this can be done, by saving the data as an rds file, then iteratively calling rmarkdown::render or quarto_render using the quarto and rmarkdown templates.
