library(tidyverse)
library(tidycensus)

#Im going to load some data now!
pa_income <- get_acs(
  geography="county",
  variables="B19013_001",
  state="PA",
  year=2023,
  survey="acs5"
)

#looking at the dataset
dim(pa_income)
glimpse(pa_income)
head(pa_income, 10)

#demonstrated why it has to be a string so that the first 0 isnt dropped
pa_income$GEOID
as.numeric("01001")

#
filter(pa_income, estimate>60000)

#filtering for margin of error
filter(pa_income, moe>3000)

filter(pa_income, estimate>3000)
