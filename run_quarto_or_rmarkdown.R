
library(tidyverse)

#preprocessing
test_data<- iris %>%
  mutate(sepal_area=Sepal.Length * Sepal.Width)

saveRDS(test_data,"test_data.Rds")


species= unique(test_data$Species)
for (i in species){
  #for quarto
  quarto::quarto_render(input = "quarto_template.qmd",
                        execute_params = list(species=i),
                        output_file = str_glue("quarto_output_{i}.pdf"))
  #for rmarkdown
  rmarkdown::render(input = "rmarkdown_template.rmd",
                    params = list(species=i),
                    output_file = str_glue("rmarkdown_output_{i}.pdf"))
    
  
  
}


