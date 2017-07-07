# Day 2. Workflow and data transformation
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

## 3. Create new objects with <-
  + Object name <- value
  

```r
# save
x <- 3 * 4

# print
x
```

```
## [1] 12
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
## [1] 60
```

  + Names should start w/ a character and be helpful (i.e., not a, b, c, but real descriptors of what the thing is)
  
## 4. Calling functions
  + R has several built-in functions
  + Sometimes a function you need will be in a specific package
      + Installing and Loading packages
      

```r
# function for only installing packages you don't have and loading libraries you need
source("custom_functions/install_needed_pkgs.R")

# character vector for needed packages
needed_packages <- c("tidyverse")

install_needed_pkgs(needed_packages)
```

```
## Warning: package 'tidyverse' was built under R version 3.3.3
```

```
## Loading tidyverse: ggplot2
## Loading tidyverse: tibble
## Loading tidyverse: tidyr
## Loading tidyverse: readr
## Loading tidyverse: purrr
## Loading tidyverse: dplyr
```

```
## Warning: package 'ggplot2' was built under R version 3.3.2
```

```
## Warning: package 'tibble' was built under R version 3.3.2
```

```
## Warning: package 'readr' was built under R version 3.3.3
```

```
## Warning: package 'purrr' was built under R version 3.3.3
```

```
## Conflicts with tidy packages ----------------------------------------------
```

```
## filter(): dplyr, stats
## lag():    dplyr, stats
```

```
## [[1]]
##  [1] "dplyr"     "purrr"     "readr"     "tidyr"     "tibble"   
##  [6] "ggplot2"   "tidyverse" "stats"     "graphics"  "grDevices"
## [11] "utils"     "datasets"  "methods"   "base"
```

```r
library(tidyverse)
#sets the functions as being part of the packages you actually want to pull from
filter <- dplyr::filter
tibble <- tibble::tibble
```

  + ?function will bring up a help screen for that function
      + Can see what the arguments are that you need
      + Can see the defaults for the arguments
  + Calling a function requires you type the name + the arguments it requires 
      + Demo: merge(df1, df2, by=”variable name”, all=TRUE)
      

```r
# create four variables: N, id, cond x, z, and y
# 10 observations per variable
N <- 10

# create a condition variable
cond <- rep(c("Treatment", "Control"), each = 5)

# set randomizer seed so results can be reproduced
set.seed(1234)

# drawn from random normal distribution
gratitude_t1 <- rnorm(n = N, mean = 4.5, sd = 0.95)
gratitude_t2 <- rnorm(n = N-1, mean = 5.5, sd = 0.95)
gratitude_t2 <- c(gratitude_t2, NA)
interdep <- 0.8 * gratitude_t1 + rnorm(n = N, mean = 0, sd = 0.5)

# store in a dataframe
time1_survey <- tibble(id = 1:10, cond, gratitude_t1, interdep)
time2_survey <- tibble(id = c(1:9, NA), gratitude_t2)
```
    
    + Demo: join(x, y, by)


```r
# join time 1 and time 2 by subject id
# ?left_join (Join matching rows from y to x)
# right_join
# ?full_join

full.joined_survey <- full_join(x = time1_survey, y = time2_survey, by = "id")

joined_survey <- inner_join(x = time1_survey, y = time2_survey, by = "id")

left.joined_survey <- left_join(x = time1_survey, y = time2_survey, by = "id")

right.joined_survey <- right_join(x = time1_survey, y = time2_survey, by = "id")
```
      
      + Demo: scale(variable, scale=FALSE)
        + scale will center your variable if the argument scale is FALSE
        + it will z-score your variable if the argument scale is TRUE
        

```r
# ?scale
joined_survey <- joined_survey %>%
  mutate(interdep_c = as.numeric(scale(interdep, center = TRUE, scale = FALSE)))
```

## 5. Useful functions for data management/transformation
  + filter()
  

```r
# filter only id "exactly equal to" 9
filter(joined_survey, id == 9)
```

```
## # A tibble: 1 × 6
##      id    cond gratitude_t1 interdep gratitude_t2 interdep_c
##   <int>   <chr>        <dbl>    <dbl>        <dbl>      <dbl>
## 1     9 Control     3.963771 2.659189     4.704687 -0.6639402
```

```r
# filter only id "less than" 7
filter(joined_survey, id < 7)
```

```
## # A tibble: 6 × 6
##      id      cond gratitude_t1 interdep gratitude_t2 interdep_c
##   <int>     <chr>        <dbl>    <dbl>        <dbl>      <dbl>
## 1     1 Treatment     3.353288 3.890548     5.046667  0.5674188
## 2     2 Treatment     4.763558 3.877890     4.551533  0.5547615
## 3     3 Treatment     5.530219 4.178832     4.762559  0.8557035
## 4     4 Treatment     2.271587 1.596996     5.561236 -1.7261330
## 5     5 Treatment     4.907668 4.155929     6.411519  0.8328007
## 6     6   Control     4.980753 3.637742     5.395229  0.3146135
```

```r
# filter only id "less than" 7 "or" id "exactly equal to" 9
filter(joined_survey, id < 7 | id == 9)
```

```
## # A tibble: 7 × 6
##      id      cond gratitude_t1 interdep gratitude_t2 interdep_c
##   <int>     <chr>        <dbl>    <dbl>        <dbl>      <dbl>
## 1     1 Treatment     3.353288 3.890548     5.046667  0.5674188
## 2     2 Treatment     4.763558 3.877890     4.551533  0.5547615
## 3     3 Treatment     5.530219 4.178832     4.762559  0.8557035
## 4     4 Treatment     2.271587 1.596996     5.561236 -1.7261330
## 5     5 Treatment     4.907668 4.155929     6.411519  0.8328007
## 6     6   Control     4.980753 3.637742     5.395229  0.3146135
## 7     9   Control     3.963771 2.659189     4.704687 -0.6639402
```

```r
# filter only id "less than" 9 "and" gratitude_t1 "greater than" 4
filter(joined_survey, id < 7 & gratitude_t1 > 4)
```

```
## # A tibble: 4 × 6
##      id      cond gratitude_t1 interdep gratitude_t2 interdep_c
##   <int>     <chr>        <dbl>    <dbl>        <dbl>      <dbl>
## 1     2 Treatment     4.763558 3.877890     4.551533  0.5547615
## 2     3 Treatment     5.530219 4.178832     4.762559  0.8557035
## 3     5 Treatment     4.907668 4.155929     6.411519  0.8328007
## 4     6   Control     4.980753 3.637742     5.395229  0.3146135
```

```r
# filter only condition "not equal to" Treatment
filter(joined_survey, cond != "Treatment")
```

```
## # A tibble: 4 × 6
##      id    cond gratitude_t1 interdep gratitude_t2 interdep_c
##   <int>   <chr>        <dbl>    <dbl>        <dbl>      <dbl>
## 1     6 Control     4.980753 3.637742     5.395229  0.3146135
## 2     7 Control     3.953997 2.439095     5.014541 -0.8840336
## 3     8 Control     3.980700 3.471938     4.634364  0.1488088
## 4     9 Control     3.963771 2.659189     4.704687 -0.6639402
```
  
  + arrange()
    + arrange allows you to sort the data based on certain columns
    

```r
# arrange joined_survey by cond
arrange(joined_survey, cond)
```

```
## # A tibble: 9 × 6
##      id      cond gratitude_t1 interdep gratitude_t2 interdep_c
##   <int>     <chr>        <dbl>    <dbl>        <dbl>      <dbl>
## 1     6   Control     4.980753 3.637742     5.395229  0.3146135
## 2     7   Control     3.953997 2.439095     5.014541 -0.8840336
## 3     8   Control     3.980700 3.471938     4.634364  0.1488088
## 4     9   Control     3.963771 2.659189     4.704687 -0.6639402
## 5     1 Treatment     3.353288 3.890548     5.046667  0.5674188
## 6     2 Treatment     4.763558 3.877890     4.551533  0.5547615
## 7     3 Treatment     5.530219 4.178832     4.762559  0.8557035
## 8     4 Treatment     2.271587 1.596996     5.561236 -1.7261330
## 9     5 Treatment     4.907668 4.155929     6.411519  0.8328007
```

```r
# arrange joined_survey by id
arrange(joined_survey, id)
```

```
## # A tibble: 9 × 6
##      id      cond gratitude_t1 interdep gratitude_t2 interdep_c
##   <int>     <chr>        <dbl>    <dbl>        <dbl>      <dbl>
## 1     1 Treatment     3.353288 3.890548     5.046667  0.5674188
## 2     2 Treatment     4.763558 3.877890     4.551533  0.5547615
## 3     3 Treatment     5.530219 4.178832     4.762559  0.8557035
## 4     4 Treatment     2.271587 1.596996     5.561236 -1.7261330
## 5     5 Treatment     4.907668 4.155929     6.411519  0.8328007
## 6     6   Control     4.980753 3.637742     5.395229  0.3146135
## 7     7   Control     3.953997 2.439095     5.014541 -0.8840336
## 8     8   Control     3.980700 3.471938     4.634364  0.1488088
## 9     9   Control     3.963771 2.659189     4.704687 -0.6639402
```
  
  + select()
    + select allows you to select specific columns (for instance if you're working with a giant dataframe)
    

```r
# from joined_survey, select id, interdep_c, and gratitude_t1
select(joined_survey, id, interdep_c, gratitude_t1)
```

```
## # A tibble: 9 × 3
##      id interdep_c gratitude_t1
##   <int>      <dbl>        <dbl>
## 1     1  0.5674188     3.353288
## 2     2  0.5547615     4.763558
## 3     3  0.8557035     5.530219
## 4     4 -1.7261330     2.271587
## 5     5  0.8328007     4.907668
## 6     6  0.3146135     4.980753
## 7     7 -0.8840336     3.953997
## 8     8  0.1488088     3.980700
## 9     9 -0.6639402     3.963771
```
  
  + mutate()
    + mutate allows you to create new variables
    

```r
# mutate gratitude_mean
# two ways to do it
# note: not saving mutated variables; to do so, must save to old or new object (joined_survey) with <-
mutate(joined_survey,
       gratitude_mean = (gratitude_t1 + gratitude_t2) / 2,
       gratitude_mean_alt = mean(c(gratitude_t1, gratitude_t2),
                                 na.rm = TRUE))
```

```
## # A tibble: 9 × 8
##      id      cond gratitude_t1 interdep gratitude_t2 interdep_c
##   <int>     <chr>        <dbl>    <dbl>        <dbl>      <dbl>
## 1     1 Treatment     3.353288 3.890548     5.046667  0.5674188
## 2     2 Treatment     4.763558 3.877890     4.551533  0.5547615
## 3     3 Treatment     5.530219 4.178832     4.762559  0.8557035
## 4     4 Treatment     2.271587 1.596996     5.561236 -1.7261330
## 5     5 Treatment     4.907668 4.155929     6.411519  0.8328007
## 6     6   Control     4.980753 3.637742     5.395229  0.3146135
## 7     7   Control     3.953997 2.439095     5.014541 -0.8840336
## 8     8   Control     3.980700 3.471938     4.634364  0.1488088
## 9     9   Control     3.963771 2.659189     4.704687 -0.6639402
## # ... with 2 more variables: gratitude_mean <dbl>,
## #   gratitude_mean_alt <dbl>
```

```r
# using pipes
# have to use rowwise
joined_survey %>% 
  rowwise(.) %>% 
  mutate(gratitude_mean = (gratitude_t1 + gratitude_t2)/2, 
         gratitude_mean_alt= mean(c(gratitude_t1, gratitude_t2),
                                  na.rm = TRUE))
```

```
## Source: local data frame [9 x 8]
## Groups: <by row>
## 
##      id      cond gratitude_t1 interdep gratitude_t2 interdep_c
##   (int)     (chr)        (dbl)    (dbl)        (dbl)      (dbl)
## 1     1 Treatment     3.353288 3.890548     5.046667  0.5674188
## 2     2 Treatment     4.763558 3.877890     4.551533  0.5547615
## 3     3 Treatment     5.530219 4.178832     4.762559  0.8557035
## 4     4 Treatment     2.271587 1.596996     5.561236 -1.7261330
## 5     5 Treatment     4.907668 4.155929     6.411519  0.8328007
## 6     6   Control     4.980753 3.637742     5.395229  0.3146135
## 7     7   Control     3.953997 2.439095     5.014541 -0.8840336
## 8     8   Control     3.980700 3.471938     4.634364  0.1488088
## 9     9   Control     3.963771 2.659189     4.704687 -0.6639402
## Variables not shown: gratitude_mean (dbl), gratitude_mean_alt (dbl)
```
  
  + summarise()
    + summarise() will also allow you to create variables at the total group level
    

```r
summarise(joined_survey, mean(x = c(gratitude_t1, gratitude_t2), na.rm = TRUE))
```

```
## # A tibble: 1 × 1
##   `mean(x = c(gratitude_t1, gratitude_t2...`
##                                        <dbl>
## 1                                   4.654882
```
   
   + gather()
    + puts data into long format
    

```r
# variable name (key) = time and response value (value) = gratitude
# arrange by Subj ID
joined_survey_long <- gather(data = joined_survey, key = time, value = gratitude, gratitude_t1, gratitude_t2) %>%
  arrange(id)
```
 
 + spread() 
    + puts data into wide format
    

```r
joined_survey_wide <- spread(data = joined_survey_long, key = time, value = gratitude)
```
  
  + ifelse()
    + the same as the if function in excel, basically says, "if statement is true, return this value, otherwise return this other value."
    

```r
joined_survey$cond2 <- with(joined_survey, 
  ifelse((cond == "Treatment" & id <= 3) | (cond == "Control" & id <= 7), "Family",     ifelse((cond == "Treatment" & id <= 5) | (cond == "Control" & id >= 8),
       "Friends",  NA)))
```
