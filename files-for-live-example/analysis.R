library(readxl)

# import the original data set.  There are three sections to this data set.
# Read in the needed sets.  The last two lines of the file has a note and source
# information.
enrollment_data <- read_excel(path = "TableLibrary.xlsx", skip = 3)

total_enrollment    <- read_excel(path = "TableLibrary.xlsx", skip =  3, n_max =  2, col_names = TRUE)
regional_enrollment <- read_excel(path = "TableLibrary.xlsx", skip =  7, n_max =  4, col_names = names(total_enrollment))
state_enrollment    <- read_excel(path = "TableLibrary.xlsx", skip = 12, n_max = 52, col_names = names(total_enrollment))

NOTE   <- grep("^NOTE", enrollment_data[[1]], value = TRUE)
SOURCE <- grep("^SOURCE", enrollment_data[[1]], value = TRUE)

