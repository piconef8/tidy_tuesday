# Get the Data
library(tidyverse)
sf_trees <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-28/sf_trees.csv')

# Or read in with tidytuesdayR package (https://github.com/thebioengineer/tidytuesdayR)
# PLEASE NOTE TO USE 2020 DATA YOU NEED TO UPDATE tidytuesdayR from GitHub

# Either ISO-8601 date or year/week works!

# Install via devtools::install_github("thebioengineer/tidytuesdayR")

#tuesdata <- tidytuesdayR::tt_load('2020-01-28') 
#tuesdata <- tidytuesdayR::tt_load(2020, week = 5)



sf_trees <- tuesdata$sf_trees 
sf_trees %>%
filter(sf_trees, species == "Acacia melanoxylon ::") %>%
ggplot(aes(species, date)) +  geom_point() 
  #geom_point(data = sf_trees , aes(y = species), colour = 'red', size = 3)