library(readxl)
library(ggmap)
library(maps)
library(tidyr)

# import the original data set.  There are three sections to this data set.
# Read in the needed sets.  The last two lines of the file has a note and source
# information.
enrollment_data <- read_excel(path = "TableLibrary.xlsx", skip = 3)
names(enrollment_data) <- c("region", paste(2006:2013, 2007:2014, sep = " - "))

total_enrollment    <- read_excel(path = "TableLibrary.xlsx", skip =  3, n_max =  2, col_names = names(enrollment_data))
regional_enrollment <- read_excel(path = "TableLibrary.xlsx", skip =  7, n_max =  4, col_names = names(enrollment_data))
state_enrollment    <- read_excel(path = "TableLibrary.xlsx", skip = 12, n_max = 52, col_names = names(enrollment_data))

NOTE   <- grep("^NOTE", enrollment_data[[1]], value = TRUE)
SOURCE <- grep("^SOURCE", enrollment_data[[1]], value = TRUE)

# region
total_enrollment$region <- tolower(total_enrollment[["region"]])
regional_enrollment$region <- tolower(regional_enrollment[["region"]])
state_enrollment$region <- tolower(state_enrollment[["region"]])

# map data
usa_map_data <- map_data("usa")
states_map_data <- map_data("state")

state_enrollment <-
  merge(states_map_data,
        state_enrollment,
        all.y = TRUE)

ggplot(data = state_enrollment) +
  aes(x = long, y = lat, group = group) +
  geom_polygon(aes(fill = `2006 - 2007`)) +
  coord_map()

state_enrollment %>%
  pivot_longer(cols = `2006 - 2007`:`2013 - 2014`,
               names_to = "Year") %>%
ggplot(data = .) +
  aes(x = long, y = lat, group = group, fill = log10(value)) +
  geom_polygon() +
  coord_map() +
  facet_wrap( ~ Year)


