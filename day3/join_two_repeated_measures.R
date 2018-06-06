# packages
library(tidyverse)

# create data
# set random seed
set.seed(8888)

# ID variable
id <- 1:5

# variable 1, time 1
var1T1 <- sample(1:7, size = 5, replace = TRUE)

# variable 1, time 2
var1T2 <- sample(1:7, size = 5, replace = TRUE)

# variable 2, time 1
var2T1 <- sample(1:7, size = 5, replace = TRUE)

# variable 2, time 2
var2T2 <- sample(1:7, size = 5, replace = TRUE)

# store data in a tibble
(widedata <- tibble(id, var1T1, var1T2, var2T1, var2T2))

# restructure "long" for variable 1
# it's easier to select only the grouping variables (e.g., ID, condition) and the repeated variables (e.g., t1, t2)
# gather() uses the same syntax as select() after the "value =" argument: you can list variables to gather, separated by commas; any variables you don't select will not be stored in the key column
# str_sub() extracts subsets of a string variable based on character position; below, we extract only the characters from 6 to the end of each character (i.e., 6 to [number of characters])
# the period, "." is a placeholder for the column variable, so read below nchar(column)
(longdataV1 <- widedata %>% 
  select(id, var1T1, var1T2) %>% 
  gather(key = column, value = var1, var1T1, var1T2) %>% 
  mutate(time = str_sub(column, start = 6, end = nchar(.))))

# restructure "long" for variable 2
# it's easier to select only the grouping variables (e.g., ID, condition) and the repeated variables (e.g., t1, t2)
# gather() uses the same syntax as select() after the "value =" argument: you can list variables to gather, separated by commas; any variables you don't select will not be stored in the key column
# str_sub() extracts subsets of a string variable based on character position; below, we extract only the characters from 6 to the end of each character (i.e., 6 to [number of characters])
# the period, "." is a placeholder for the column variable, so read below nchar(column)
(longdataV2 <- widedata %>% 
  select(id, var2T1, var2T2) %>% 
  gather(key = column, value = var2, var2T1, var2T2) %>% 
  mutate(time = str_sub(column, start = 6, end = nchar(.))))

# join "long" data
# each subject has two rows which are identified by their ID number, id, and the time point, time
(longdata <- full_join(longdataV1, longdataV2, by = c("id", "time")))

# remove column.x and column.y with "-"
(longdata <- longdata %>% select(-column.x, -column.y))
