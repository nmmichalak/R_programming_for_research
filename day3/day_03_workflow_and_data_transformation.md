# Day 3. Workflow and data transformation
Iris Wang  
June 23, 2017  

<style type="text/css">

body{ /* Normal  */
      font-size: 20px;
  }
td {  /* Table  */
  font-size: 8px;
}
h1.title {
  font-size: 38px;
  color: DarkRed;
}
h1 { /* Header 1 */
  font-size: 28px;
  color: DarkBlue;
}
h2 { /* Header 2 */
    font-size: 22px;
  color: DarkBlue;
}
h3 { /* Header 3 */
  font-size: 18px;
  font-family: "Times New Roman", Times, serif;
  color: DarkBlue;
}
code.r{ /* Code block */
    font-size: 12px;
}
pre { /* Code block - determines code spacing between lines */
    font-size: 14px;
}
</style>

# Basics <br>
## 1. Basic functionality (Tools ----> Keyboard shortcuts help) <br>
  + You can use the up arrow key to replay a line you already ran
  + Ctrl Enter will run a line
  + Alt +- will draw an arrow
  + Ctrl Shift M will draw a pipe operator
  + R is case sensitive so it matters if you caps or not, have a space in there or not
  + When writing code, use # in front of a comment. Frequently comment your code so you know what's happening 5 years later.
  + broom thing will always clear environment stuff
  
## 2. R is like a calculator
  + Operators are the same (+, -, *, /)
  

```r
1 + 1
```

```
## [1] 2
```

```r
2 - 4
```

```
## [1] -2
```

```r
5 * 8
```

```
## [1] 40
```

```r
8 / 4
```

```
## [1] 2
```

```r
# : denotes through

1:10
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10
```

## 3. Create new objects with `<-`
  + `Object_name <- value`
  

```r
# save
# the : denotes all numbers 4 through 10 in this case
x <- 3 * 4:10

# print
x
```

```
## [1] 12 15 18 21 24 27 30
```

```r
# save
y <- 10 / 2

# print
y
```

```
## [1] 5
```

```r
# save
z <- x * y

# print
z
```

```
## [1]  60  75  90 105 120 135 150
```

```r
#rm() removes objects from your memory
rm(x, y)
```

  + Names should start w/ a character and be helpful (i.e., not a, b, c, but real descriptors of what the thing is)
  
## 4. Calling functions
  + R has several built-in functions
  + Sometimes a function you need will be in a specific package
      + Installing and Loading packages
      

```r
# install the package if you don't have it
# install.packages("nycflights13")

# load the library
library(tidyverse)
```

```
## Warning: package 'tidyverse' was built under R version 3.4.4
```

```
## -- Attaching packages ---------------------------------- tidyverse 1.2.1 --
```

```
## v ggplot2 2.2.1     v purrr   0.2.4
## v tibble  1.4.2     v dplyr   0.7.4
## v tidyr   0.8.0     v stringr 1.2.0
## v readr   1.1.1     v forcats 0.2.0
```

```
## Warning: package 'tibble' was built under R version 3.4.4
```

```
## Warning: package 'tidyr' was built under R version 3.4.4
```

```
## Warning: package 'purrr' was built under R version 3.4.4
```

```
## Warning: package 'dplyr' was built under R version 3.4.3
```

```
## Warning: package 'stringr' was built under R version 3.4.3
```

```
## -- Conflicts ------------------------------------- tidyverse_conflicts() --
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

```r
library(nycflights13)
```

```
## Warning: package 'nycflights13' was built under R version 3.4.4
```

```r
# sets the functions as being part of the packages you actually want to pull from so you don't have to keep writing this

filter <- dplyr::filter
tibble <- tibble::tibble
```
  
  + ?function will bring up a help screen for that function
      + Can see what the arguments are that you need
      + Can see the defaults for the arguments
  + Calling a function requires you type the name + the arguments it requires 

## 5. Loading datasets


```r
#packages you need (use install.packages() if needed)
#install.packages("haven", "readxl")
library(tidyverse)
library(haven)
library(readxl)
```

  + finding your file path
    + file.choose() #do not put anything in the parens

  + reading csv files
    + read_csv(file = )

  + reading sav files
    + read_sav(file = , user_na = )

  + reading excel files

    + read_xls(path = , sheet = ) 
    + need to give them a sheet number or a string name in quotes

  + Writing datasets: once you've worked on your dataset in R you may want to save that dataset 
    + write_sav(dataframename, "filepath")
    + write_csv()
    + writing xls requires package xlsx and the function is write.xls()

+ Reading in data for today

```r
#Let's try loading two datasets I've made for the purposes of the examples for today.

time1_survey <- read_csv("time1_survey.csv")
```

```
## Parsed with column specification:
## cols(
##   id = col_integer(),
##   cond = col_character(),
##   gratitude_t1 = col_double(),
##   interdep = col_double()
## )
```

```r
time2_survey <- read_csv("time2_survey.csv")
```

```
## Parsed with column specification:
## cols(
##   id = col_integer(),
##   gratitude_t2 = col_double()
## )
```

## 6. Merging datasets 

  + full join and inner join


```r
# join time 1 and time 2 by subject id
# ?left_join (Join matching rows from y to x)
# right_join
# ?full_join

#full join will retain all data regardless if there is a match (regardless of whether participant did part 1 or part 2 of the survey)
full_joined_survey <- full_join(x = time1_survey, y = time2_survey, by = "id")

#inner join only retains data that is matched (only people who did both parts are retained)
joined_survey <- inner_join(x = time1_survey, y = time2_survey, by = "id")
```

  + left and right join
    + For left join and right join it matters what dataset you're listing on the left or right. You set either the left or the right one as the reference point, so it depends, which is the dataset that is more important?
    

```r
left_joined_survey <- left_join(x = time1_survey, y = time2_survey, by = "id")

right_joined_survey <- right_join(x = time1_survey, y = time2_survey, by = "id")
```

## 7. Useful functions for data wrangling/transformation

  + `mutate()`
    + allows you to create new variables
    

```r
# mutate gratitude_mean
# two ways to do it
# note: Right now, I'm not saving mutated variables; to do so, you must save to old or new object (joined_survey) with <-

joined_survey %>%
mutate(gratitude_mean = (gratitude_t1 + gratitude_t2) / 2,
       gratitude_mean_alt = mean(c(gratitude_t1, gratitude_t2),
                                 na.rm = TRUE))
```

```
## # A tibble: 9 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 gratitude_mean
##   <int> <chr>            <dbl>    <dbl>        <dbl>          <dbl>
## 1     1 Treatment         3.35     3.89         5.05           4.20
## 2     2 Treatment         4.76     3.88         4.55           4.66
## 3     3 Treatment         5.53     4.18         4.76           5.15
## 4     4 Treatment         2.27     1.60         5.56           3.92
## 5     5 Treatment         4.91     4.16         6.41           5.66
## 6     6 Control           4.98     3.64         5.40           5.19
## 7     7 Control           3.95     2.44         5.01           4.48
## 8     8 Control           3.98     3.47         4.63           4.31
## 9     9 Control           3.96     2.66         4.70           4.33
## # ... with 1 more variable: gratitude_mean_alt <dbl>
```

```r
#what's wrong?

# have to use rowwise
joined_survey %>% 
  rowwise() %>% 
  mutate(gratitude_mean = (gratitude_t1 + gratitude_t2) / 2, 
         gratitude_mean_alt = mean(c(gratitude_t1, gratitude_t2), na.rm = TRUE)) %>%
  ungroup()
```

```
## # A tibble: 9 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 gratitude_mean
##   <int> <chr>            <dbl>    <dbl>        <dbl>          <dbl>
## 1     1 Treatment         3.35     3.89         5.05           4.20
## 2     2 Treatment         4.76     3.88         4.55           4.66
## 3     3 Treatment         5.53     4.18         4.76           5.15
## 4     4 Treatment         2.27     1.60         5.56           3.92
## 5     5 Treatment         4.91     4.16         6.41           5.66
## 6     6 Control           4.98     3.64         5.40           5.19
## 7     7 Control           3.95     2.44         5.01           4.48
## 8     8 Control           3.98     3.47         4.63           4.31
## 9     9 Control           3.96     2.66         4.70           4.33
## # ... with 1 more variable: gratitude_mean_alt <dbl>
```
  
  + `summarise()`
    + will also allow you to create variables at the total group level
    

```r
joined_survey %>%
summarise(mean(x = c(gratitude_t1, gratitude_t2), na.rm = TRUE))
```

```
## # A tibble: 1 x 1
##   `mean(x = c(gratitude_t1, gratitude_t2), na.rm = TRUE)`
##                                                     <dbl>
## 1                                                    4.65
```

```r
#group by

joined_survey %>%
  group_by(cond) %>%
  summarise(mean_grat = mean(gratitude_t1, na.rm = TRUE))
```

```
## # A tibble: 2 x 2
##   cond      mean_grat
##   <chr>         <dbl>
## 1 Control        4.22
## 2 Treatment      4.17
```
  + `scale()`
    + will center your variable if the argument scale is FALSE
    + will z-score your variable if the argument scale is TRUE
        

```r
# ?scale (will z-score, will center)
joined_survey <- joined_survey %>%
  mutate(interdep_c = parse_number(scale(interdep, center = TRUE, scale = FALSE)))
```

   + `ifelse()`
     + use for Recoding variables 
     + the same as the if function in excel, basically says, "if statement is true, return this value, otherwise return this other value."
    

```r
joined_survey <- 
  joined_survey %>%
  mutate(cond2 = ifelse((cond == "Treatment" & id <= 3) | (cond == "Control" & id <= 7), "Family",
                 ifelse((cond == "Treatment" & id <= 5) | (cond == "Control" & id >= 8), "Friends",  NA)))
```

  + `filter()`
    + filter will remove the entire row 
     + Remember that to save these things, we need to assign it to either the same dataframe object or a new dataframe. If I am worried about overwriting my dataframe, I'll create a new dataframe.
  

```r
# filter only id exactly equal to 9
joined_survey %>%
  filter(id == 9)
```

```
## # A tibble: 1 x 7
##      id cond    gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>          <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     9 Control         3.96     2.66         4.70     -0.664 Friends
```

```r
# filter only id less than 7
joined_survey %>%
  filter(id < 7)
```

```
## # A tibble: 6 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>            <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     1 Treatment         3.35     3.89         5.05      0.567 Family 
## 2     2 Treatment         4.76     3.88         4.55      0.555 Family 
## 3     3 Treatment         5.53     4.18         4.76      0.856 Family 
## 4     4 Treatment         2.27     1.60         5.56     -1.73  Friends
## 5     5 Treatment         4.91     4.16         6.41      0.833 Friends
## 6     6 Control           4.98     3.64         5.40      0.315 Family
```

```r
# filter only id "less than or equal to" 7
joined_survey %>%
  filter(id <= 7)
```

```
## # A tibble: 7 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>            <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     1 Treatment         3.35     3.89         5.05      0.567 Family 
## 2     2 Treatment         4.76     3.88         4.55      0.555 Family 
## 3     3 Treatment         5.53     4.18         4.76      0.856 Family 
## 4     4 Treatment         2.27     1.60         5.56     -1.73  Friends
## 5     5 Treatment         4.91     4.16         6.41      0.833 Friends
## 6     6 Control           4.98     3.64         5.40      0.315 Family 
## 7     7 Control           3.95     2.44         5.01     -0.884 Family
```

```r
# filter only ids 1 or 2 or 7
joined_survey %>%
  filter(id %in% c(1, 2, 7))
```

```
## # A tibble: 3 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 interdep_c cond2 
##   <int> <chr>            <dbl>    <dbl>        <dbl>      <dbl> <chr> 
## 1     1 Treatment         3.35     3.89         5.05      0.567 Family
## 2     2 Treatment         4.76     3.88         4.55      0.555 Family
## 3     7 Control           3.95     2.44         5.01     -0.884 Family
```

```r
# filter only id "less than" 7 "or" id "exactly equal to" 9
joined_survey %>%
  filter(id < 7 | id == 9)
```

```
## # A tibble: 7 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>            <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     1 Treatment         3.35     3.89         5.05      0.567 Family 
## 2     2 Treatment         4.76     3.88         4.55      0.555 Family 
## 3     3 Treatment         5.53     4.18         4.76      0.856 Family 
## 4     4 Treatment         2.27     1.60         5.56     -1.73  Friends
## 5     5 Treatment         4.91     4.16         6.41      0.833 Friends
## 6     6 Control           4.98     3.64         5.40      0.315 Family 
## 7     9 Control           3.96     2.66         4.70     -0.664 Friends
```

```r
# filter only id "less than" 9 "and" gratitude_t1 "greater than" 4
joined_survey %>%
  filter(id < 9 & gratitude_t1 > 4)
```

```
## # A tibble: 4 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>            <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     2 Treatment         4.76     3.88         4.55      0.555 Family 
## 2     3 Treatment         5.53     4.18         4.76      0.856 Family 
## 3     5 Treatment         4.91     4.16         6.41      0.833 Friends
## 4     6 Control           4.98     3.64         5.40      0.315 Family
```

```r
# filter only condition "not equal to" Treatment
joined_survey %>%
  filter(cond != "Treatment")
```

```
## # A tibble: 4 x 7
##      id cond    gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>          <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     6 Control         4.98     3.64         5.40      0.315 Family 
## 2     7 Control         3.95     2.44         5.01     -0.884 Family 
## 3     8 Control         3.98     3.47         4.63      0.149 Friends
## 4     9 Control         3.96     2.66         4.70     -0.664 Friends
```

```r
#filter out NAs for specific variable (I chose id)
time2_survey
```

```
## # A tibble: 10 x 2
##       id gratitude_t2
##    <int>        <dbl>
##  1     1         5.05
##  2     2         4.55
##  3     3         4.76
##  4     4         5.56
##  5     5         6.41
##  6     6         5.40
##  7     7         5.01
##  8     8         4.63
##  9     9         4.70
## 10    NA        NA
```

```r
time2_survey %>%
  filter(!is.na(id))
```

```
## # A tibble: 9 x 2
##      id gratitude_t2
##   <int>        <dbl>
## 1     1         5.05
## 2     2         4.55
## 3     3         4.76
## 4     4         5.56
## 5     5         6.41
## 6     6         5.40
## 7     7         5.01
## 8     8         4.63
## 9     9         4.70
```
  
  + `arrange()`
    + allows you to sort the data based on certain columns
    

```r
# arrange joined_survey by cond
joined_survey %>%
  arrange(cond)
```

```
## # A tibble: 9 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>            <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     6 Control           4.98     3.64         5.40      0.315 Family 
## 2     7 Control           3.95     2.44         5.01     -0.884 Family 
## 3     8 Control           3.98     3.47         4.63      0.149 Friends
## 4     9 Control           3.96     2.66         4.70     -0.664 Friends
## 5     1 Treatment         3.35     3.89         5.05      0.567 Family 
## 6     2 Treatment         4.76     3.88         4.55      0.555 Family 
## 7     3 Treatment         5.53     4.18         4.76      0.856 Family 
## 8     4 Treatment         2.27     1.60         5.56     -1.73  Friends
## 9     5 Treatment         4.91     4.16         6.41      0.833 Friends
```

```r
# arrange joined_survey by id
joined_survey %>%
  arrange(id)
```

```
## # A tibble: 9 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>            <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     1 Treatment         3.35     3.89         5.05      0.567 Family 
## 2     2 Treatment         4.76     3.88         4.55      0.555 Family 
## 3     3 Treatment         5.53     4.18         4.76      0.856 Family 
## 4     4 Treatment         2.27     1.60         5.56     -1.73  Friends
## 5     5 Treatment         4.91     4.16         6.41      0.833 Friends
## 6     6 Control           4.98     3.64         5.40      0.315 Family 
## 7     7 Control           3.95     2.44         5.01     -0.884 Family 
## 8     8 Control           3.98     3.47         4.63      0.149 Friends
## 9     9 Control           3.96     2.66         4.70     -0.664 Friends
```

```r
# arrange joined_survey by cond, then interdependence
joined_survey %>%
  arrange(cond, interdep)
```

```
## # A tibble: 9 x 7
##      id cond      gratitude_t1 interdep gratitude_t2 interdep_c cond2  
##   <int> <chr>            <dbl>    <dbl>        <dbl>      <dbl> <chr>  
## 1     7 Control           3.95     2.44         5.01     -0.884 Family 
## 2     9 Control           3.96     2.66         4.70     -0.664 Friends
## 3     8 Control           3.98     3.47         4.63      0.149 Friends
## 4     6 Control           4.98     3.64         5.40      0.315 Family 
## 5     4 Treatment         2.27     1.60         5.56     -1.73  Friends
## 6     2 Treatment         4.76     3.88         4.55      0.555 Family 
## 7     1 Treatment         3.35     3.89         5.05      0.567 Family 
## 8     5 Treatment         4.91     4.16         6.41      0.833 Friends
## 9     3 Treatment         5.53     4.18         4.76      0.856 Family
```
  
  + `select()`
    + select allows you to select specific columns (for instance if you're working with a giant dataframe)
    

```r
# from joined_survey, select id, interdep_c, and gratitude_t1
joined_survey %>%
  select(id, interdep_c, gratitude_t1)
```

```
## # A tibble: 9 x 3
##      id interdep_c gratitude_t1
##   <int>      <dbl>        <dbl>
## 1     1      0.567         3.35
## 2     2      0.555         4.76
## 3     3      0.856         5.53
## 4     4     -1.73          2.27
## 5     5      0.833         4.91
## 6     6      0.315         4.98
## 7     7     -0.884         3.95
## 8     8      0.149         3.98
## 9     9     -0.664         3.96
```

```r
#same result
joined_survey %>%
  select(-gratitude_t2, -interdep)
```

```
## # A tibble: 9 x 5
##      id cond      gratitude_t1 interdep_c cond2  
##   <int> <chr>            <dbl>      <dbl> <chr>  
## 1     1 Treatment         3.35      0.567 Family 
## 2     2 Treatment         4.76      0.555 Family 
## 3     3 Treatment         5.53      0.856 Family 
## 4     4 Treatment         2.27     -1.73  Friends
## 5     5 Treatment         4.91      0.833 Friends
## 6     6 Control           4.98      0.315 Family 
## 7     7 Control           3.95     -0.884 Family 
## 8     8 Control           3.98      0.149 Friends
## 9     9 Control           3.96     -0.664 Friends
```

+ Sometimes you may want to change the format of your data to fit the statistical analysis you need. In this case, I may want to run a linear mixed model, so I need to put my data in long format.

  + `gather()`
    + puts data into long format
    

```r
# variable name (key) = time and response value (value) = gratitude
# arrange by Subj ID
joined_survey_long <- joined_survey %>%
  gather(data = ., key = time, value = gratitude_score, gratitude_t1, gratitude_t2) %>%
  arrange(id)
```
 
  + `spread()` 
    + puts data into wide format
    

```r
joined_survey_wide <- joined_survey_long %>%
  spread(data = ., key = time, value = gratitude_score)
```
## 8. Piping + Data Wrangling explained
+ Piping is very useful for combining functions. This keeps your code neat and readable. It is parismonious. So far I've been showing you 1-2 functions at a time, but let's try integrating some of these functions

+ Example


```r
#Compare this code which is not "tidy" to the tidy version below. Both should yield the same result, but first one takes way more time to write and hard to follow.

final_data_untidy <- full_join(x = time1_survey, y = time2_survey, by = "id")
final_data_untidy <- ungroup(mutate(rowwise(final_data_untidy), 
                      gratitude_mean = mean(c(gratitude_t1, gratitude_t2), na.rm = TRUE), 
                      cond2 =   ifelse((cond == "Treatment" & id <= 3) | (cond == "Control" & id <= 7), "Family",
                 ifelse((cond == "Treatment" & id <= 5) | (cond == "Control" & id >= 8), "Friends",  NA))))

final_data_untidy <- filter(final_data_untidy, !is.na(id))
final_data_untidy <- mutate(final_data_untidy, interdep_C = scale(interdep, scale = FALSE, center = TRUE))
final_data_untidy <- arrange(final_data_untidy, cond)

#tidy version
final_data_tidy <- time1_survey %>%
  full_join(x = ., y = time2_survey, by = "id") %>%
  rowwise() %>%
  mutate(gratitude_mean = mean(c(gratitude_t1, gratitude_t2), na.rm = TRUE),
         cond2 = ifelse((cond == "Treatment" & id <= 3) | (cond == "Control" & id <= 7), "Family",
                 ifelse((cond == "Treatment" & id <= 5) | (cond == "Control" & id >= 8), "Friends",  NA))) %>%
  ungroup() %>%
  filter(!is.na(id)) %>%
  mutate(interdep_C = scale(interdep, scale = FALSE, center = TRUE)) %>%
  arrange(cond) 
```

+ A tip: think about what you want to do with your data, or what your end result to be. If you want to save something into an object, what do you want saved? If you want R to show you something, what do you want to see?

##9. Exercises 

  + Exercise 1: Data Wrangling 

    + Below in the #comments, I will request you do certain things with some datasets that R already has loaded. Given what I've already explained, your job is to write the code beneath that solves the problem. 
    + Try to be as tidy as you can.


```r
#Let me just walk you through loading the datasets(these are datasets that are preloaded into your tidyverse package but you have to call them up)

airlines <- as.tibble(airlines)

flights <- as.tibble(flights)

#Okay your turn!

## With airlines dataset, arrange the name to be ordered alphabetically

## With flights dataset, select only the columns year, month, tailnum, carrier, air_time, distance, dep_delay, and arr_delay. Save this dataset as flights2. View flights2.

## merge (join) flights2 with airlines by carrier and save this as a dataset named "merged". View merged.

## subset (filter) merged dataset so that we only look at months 1-9. Save this as a dataset named "merged_6mo". View merged_6mo.

## subset (filter) merged_6mo so that we only look at the carriers "9E" and "EV". You will need quotes. Let's save it back into merged_6mo. View it to see if it worked.

## Using merged_6mo dataset, mutate flightspeed as distance/airtime, mean_delay as the average between arr_delay and dep_delay. Save this back to the merged_6mo dataset. View the dataset to see if it worked.

## Center flightspeed, mean_delay and save them respectively as flightspeedC and mean_delayC in merged_6mo. See if it worked.

## Use ifelse to recode 9E into "Endeavor Air Inc." and EV into "ExpressJet Airlines Inc." Name this variable carrier_recoded. Save this back into merged_6mo.

## Summarize flightspeed and mean_delay by carrier. Let's NOT save it back into the dataset, so it should print out in the console. 
```
  + Exercise 2: Gather and Spread
    + Let's try making a dataset into long form and then back to wide form again.


```r
#Again, I'll start off by creating you a dataset you can use.
set.seed(4567)
N <- 10
beliefjustworld <- rnorm(n = N, mean = 6, sd = .98)
prejudice_t1 <- rnorm(n = N, mean = 5.4, sd = .95)
prejudice_t2 <- rnorm(n = N-1, mean = 4.5, sd = .97) %>%
  c(., NA)
prejudice_t3 <- rnorm(n = N-1, mean = 4.57, sd = .95) %>%
  c(., NA)
id <- 1:10
timedata <- tibble(id, beliefjustworld, prejudice_t1, prejudice_t2, prejudice_t3)

##Put your timedata dataset into long form using gather. Save the data as "data_long". View your dataframe.

##Put data_long back into wide form using spread. Save this as "data_wide". View your dataframe. It should look about the same as timedata!
```


  + Exercise 3: Tidying code
    + Try turning my untidy code into tidy code


```r
##My untidy version.
#back to using the airport data.

flights2 <- select(flights, carrier, air_time, distance, tailnum)
data_final <- inner_join(x = flights2, y = planes, by = "tailnum")
data_final <- mutate(data_final, speed = distance/air_time)
data_final <- arrange(data_final, tailnum)
data_final <- filter(data_final, carrier == "UA" | carrier == "YV")
data_final <- mutate(data_final, speedZ = scale(speed, scale = TRUE))

##Your version of what I made but tidy
```

Good luck!
