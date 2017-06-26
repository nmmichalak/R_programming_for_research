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
## Loading tidyverse: ggplot2
## Loading tidyverse: tibble
## Loading tidyverse: tidyr
## Loading tidyverse: readr
## Loading tidyverse: purrr
## Loading tidyverse: dplyr
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

  + ?function will bring up a help screen for that function
      + Can see what the arguments are that you need
      + Can see the defaults for the arguments
  + Calling a function requires you type the name + the arguments it requires 
      + Demo: merge(df1, df2, by=”variable name”, all=TRUE)
      

```r
# create four variables: N, id, cond x, z, and y
# 100 observations per variable
N <- 100

# create a subject id 
id <- 1:100

# create a condition variable
cond <- rep(c("Treatment", "Control"), each = 50)

# set randomizer seed so results can be reproduced
set.seed(1234)

# drawn from random normal distribution
gratitude_t1 <- rnorm(n = N, mean = 4.5, sd = 0.95)
gratitude_t2 <- rnorm(n = N, mean = 5.5, sd = 0.95)
interdep <- 0.8 * x + rnorm(n = N, mean = 0, sd = 0.5)

# store in a dataframe
time1_survey <- tibble(id, cond, gratitude_t1)
time2_survey <- tibble(id, gratitude_t2, interdep)

# join time 1 and time 2 by subject id
# ?left_join (Join matching rows from y to x)
# right_join
# ?full_join
joined_survey <- left_join(x = time1_survey, y = time2_survey, by = "id")
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
# filter only id "exactly equal to" 90
dplyr::filter(joined_survey, id == 90)
```

```
## # A tibble: 1 x 6
##      id    cond gratitude_t1 gratitude_t2 interdep  interdep_c
##   <int>   <chr>        <dbl>        <dbl>    <dbl>       <dbl>
## 1    90 Control     3.365199     5.311505 9.664217 -0.01308482
```

```r
# filter only id "less than" 90
dplyr::filter(joined_survey, id < 90)
```

```
## # A tibble: 89 x 6
##       id      cond gratitude_t1 gratitude_t2  interdep  interdep_c
##    <int>     <chr>        <dbl>        <dbl>     <dbl>       <dbl>
##  1     1 Treatment     3.353288     5.893797  9.842613  0.16531157
##  2     2 Treatment     4.763558     5.049017  9.948384  0.27108255
##  3     3 Treatment     5.530219     5.562694  9.692757  0.01545512
##  4     4 Treatment     2.271587     5.022646  9.950367  0.27306492
##  5     5 Treatment     4.907668     4.715301  9.755841  0.07853868
##  6     6 Treatment     4.980753     5.658640  9.980231  0.30292934
##  7     7 Treatment     3.953997     4.648549 10.521232  0.84392998
##  8     8 Treatment     3.980700     5.659776 10.156181  0.47887958
##  9     9 Treatment     3.963771     5.837220  9.616332 -0.06096986
## 10    10 Treatment     3.654464     5.450500  9.042776 -0.63452632
## # ... with 79 more rows
```

```r
# filter only id "less than" 9 "or" id "exactly equal to" 14
dplyr::filter(joined_survey, id < 9 | id == 14)
```

```
## # A tibble: 9 x 6
##      id      cond gratitude_t1 gratitude_t2  interdep  interdep_c
##   <int>     <chr>        <dbl>        <dbl>     <dbl>       <dbl>
## 1     1 Treatment     3.353288     5.893797  9.842613  0.16531157
## 2     2 Treatment     4.763558     5.049017  9.948384  0.27108255
## 3     3 Treatment     5.530219     5.562694  9.692757  0.01545512
## 4     4 Treatment     2.271587     5.022646  9.950367  0.27306492
## 5     5 Treatment     4.907668     4.715301  9.755841  0.07853868
## 6     6 Treatment     4.980753     5.658640  9.980231  0.30292934
## 7     7 Treatment     3.953997     4.648549 10.521232  0.84392998
## 8     8 Treatment     3.980700     5.659776 10.156181  0.47887958
## 9    14 Treatment     4.561236     6.306810  8.796460 -0.88084231
```

```r
# filter only id "less than" 9 "and" gratitude_t1 "greater than" 5
dplyr::filter(joined_survey, id < 9 & gratitude_t1 > 5)
```

```
## # A tibble: 1 x 6
##      id      cond gratitude_t1 gratitude_t2 interdep interdep_c
##   <int>     <chr>        <dbl>        <dbl>    <dbl>      <dbl>
## 1     3 Treatment     5.530219     5.562694 9.692757 0.01545512
```

```r
# filter only condition "not equal to" Treatment
dplyr::filter(joined_survey, cond != "Treatment")
```

```
## # A tibble: 50 x 6
##       id    cond gratitude_t1 gratitude_t2  interdep  interdep_c
##    <int>   <chr>        <dbl>        <dbl>     <dbl>       <dbl>
##  1    51 Control     2.784270     5.141624  9.818465  0.14116345
##  2    52 Control     3.947028     5.592738 10.130062  0.45276012
##  3    53 Control     3.446555     7.056807  9.826095  0.14879336
##  4    54 Control     3.535786     4.668187  9.931599  0.25429747
##  5    55 Control     4.345806     5.615672  9.031813 -0.64548861
##  6    56 Control     5.034903     6.794024  9.414751 -0.26255059
##  7    57 Control     6.065427     5.277110 10.338485  0.66118296
##  8    58 Control     3.765314     4.499286  8.988048 -0.68925371
##  9    59 Control     6.025614     4.673706  9.729034  0.05173236
## 10    60 Control     3.400082     5.129379  9.802501  0.12519957
## # ... with 40 more rows
```
  
  + arrange()
    + arrange allows you to sort the data based on certain columns
    

```r
# arrange joined_survey by cond
arrange(joined_survey, cond)
```

```
## # A tibble: 100 x 6
##       id    cond gratitude_t1 gratitude_t2  interdep  interdep_c
##    <int>   <chr>        <dbl>        <dbl>     <dbl>       <dbl>
##  1    51 Control     2.784270     5.141624  9.818465  0.14116345
##  2    52 Control     3.947028     5.592738 10.130062  0.45276012
##  3    53 Control     3.446555     7.056807  9.826095  0.14879336
##  4    54 Control     3.535786     4.668187  9.931599  0.25429747
##  5    55 Control     4.345806     5.615672  9.031813 -0.64548861
##  6    56 Control     5.034903     6.794024  9.414751 -0.26255059
##  7    57 Control     6.065427     5.277110 10.338485  0.66118296
##  8    58 Control     3.765314     4.499286  8.988048 -0.68925371
##  9    59 Control     6.025614     4.673706  9.729034  0.05173236
## 10    60 Control     3.400082     5.129379  9.802501  0.12519957
## # ... with 90 more rows
```

```r
# arrange joined_survey by id
arrange(joined_survey, id)
```

```
## # A tibble: 100 x 6
##       id      cond gratitude_t1 gratitude_t2  interdep  interdep_c
##    <int>     <chr>        <dbl>        <dbl>     <dbl>       <dbl>
##  1     1 Treatment     3.353288     5.893797  9.842613  0.16531157
##  2     2 Treatment     4.763558     5.049017  9.948384  0.27108255
##  3     3 Treatment     5.530219     5.562694  9.692757  0.01545512
##  4     4 Treatment     2.271587     5.022646  9.950367  0.27306492
##  5     5 Treatment     4.907668     4.715301  9.755841  0.07853868
##  6     6 Treatment     4.980753     5.658640  9.980231  0.30292934
##  7     7 Treatment     3.953997     4.648549 10.521232  0.84392998
##  8     8 Treatment     3.980700     5.659776 10.156181  0.47887958
##  9     9 Treatment     3.963771     5.837220  9.616332 -0.06096986
## 10    10 Treatment     3.654464     5.450500  9.042776 -0.63452632
## # ... with 90 more rows
```
  
  + select()
    + select allows you to select specific columns (for instance if you're working with a giant dataframe)
    

```r
# from joined_survey, select id, interdep_c, and gratitude_t1
select(joined_survey, id, interdep_c, gratitude_t1)
```

```
## # A tibble: 100 x 3
##       id  interdep_c gratitude_t1
##    <int>       <dbl>        <dbl>
##  1     1  0.16531157     3.353288
##  2     2  0.27108255     4.763558
##  3     3  0.01545512     5.530219
##  4     4  0.27306492     2.271587
##  5     5  0.07853868     4.907668
##  6     6  0.30292934     4.980753
##  7     7  0.84392998     3.953997
##  8     8  0.47887958     3.980700
##  9     9 -0.06096986     3.963771
## 10    10 -0.63452632     3.654464
## # ... with 90 more rows
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
                                 na.rm = TRUE)
)
```

```
## # A tibble: 100 x 8
##       id      cond gratitude_t1 gratitude_t2  interdep  interdep_c
##    <int>     <chr>        <dbl>        <dbl>     <dbl>       <dbl>
##  1     1 Treatment     3.353288     5.893797  9.842613  0.16531157
##  2     2 Treatment     4.763558     5.049017  9.948384  0.27108255
##  3     3 Treatment     5.530219     5.562694  9.692757  0.01545512
##  4     4 Treatment     2.271587     5.022646  9.950367  0.27306492
##  5     5 Treatment     4.907668     4.715301  9.755841  0.07853868
##  6     6 Treatment     4.980753     5.658640  9.980231  0.30292934
##  7     7 Treatment     3.953997     4.648549 10.521232  0.84392998
##  8     8 Treatment     3.980700     5.659776 10.156181  0.47887958
##  9     9 Treatment     3.963771     5.837220  9.616332 -0.06096986
## 10    10 Treatment     3.654464     5.450500  9.042776 -0.63452632
## # ... with 90 more rows, and 2 more variables: gratitude_mean <dbl>,
## #   gratitude_mean_alt <dbl>
```

```r
# using pipes
# have to use rowwise
joined_survey %>% 
  rowwise(.) %>% 
  mutate(gratitude_mean = (gratitude_t1 + gratitude_t2)/2, 
         gratitude_mean_alt= mean(c(gratitude_t1, gratitude_t2),
                                  na.rm = TRUE)
  )
```

```
## Source: local data frame [100 x 8]
## Groups: <by row>
## 
## # A tibble: 100 x 8
##       id      cond gratitude_t1 gratitude_t2  interdep  interdep_c
##    <int>     <chr>        <dbl>        <dbl>     <dbl>       <dbl>
##  1     1 Treatment     3.353288     5.893797  9.842613  0.16531157
##  2     2 Treatment     4.763558     5.049017  9.948384  0.27108255
##  3     3 Treatment     5.530219     5.562694  9.692757  0.01545512
##  4     4 Treatment     2.271587     5.022646  9.950367  0.27306492
##  5     5 Treatment     4.907668     4.715301  9.755841  0.07853868
##  6     6 Treatment     4.980753     5.658640  9.980231  0.30292934
##  7     7 Treatment     3.953997     4.648549 10.521232  0.84392998
##  8     8 Treatment     3.980700     5.659776 10.156181  0.47887958
##  9     9 Treatment     3.963771     5.837220  9.616332 -0.06096986
## 10    10 Treatment     3.654464     5.450500  9.042776 -0.63452632
## # ... with 90 more rows, and 2 more variables: gratitude_mean <dbl>,
## #   gratitude_mean_alt <dbl>
```
  
  + summarise()
    + summarise() will also allow you to create variables at the total group level
    

```r
summarise(joined_survey, mean(x = c(gratitude_t1, gratitude_t2), na.rm = TRUE))
```

```
## # A tibble: 1 x 1
##   `mean(x = c(gratitude_t1, gratitude_t2), na.rm = TRUE)`
##                                                     <dbl>
## 1                                                4.945129
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
