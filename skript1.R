library(fivethirtyeight)
library(dplyr)
library(ggplot2)

data("steak_survey", package="fivethirtyeight")
View(steak_survey)

# copy and filter the dataset
sdat <- na.omit(steak_survey) %>%
  filter(region=="Mountain")

# create clustered barchart
ggplot(sdat, 
       aes(x = steak_prep, fill = female)) + 
  geom_bar(position="dodge") +
  ggtitle(paste0("Steak Preparation Preference by Gender for ","Mountain"," Region"))
