# Day 4. Miscellaneous
Nicholas Michalak  
7/14/2017  

# load packages


```r
# character vector of packages you'll need for your whole analysis
needed_packages <- c("tidyverse", "stringr", "haven", "readxl", "psych", "officer", "rvg", "broom", "lme4", "lavaan")

# source custom function
source("custom_functions/install_needed_pkgs.R")

# install needed packages
install_needed_pkgs(needed_packages = needed_packages)
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
## 
## Attaching package: 'psych'
```

```
## The following objects are masked from 'package:ggplot2':
## 
##     %+%, alpha
```

```
## Loading required package: Matrix
```

```
## 
## Attaching package: 'Matrix'
```

```
## The following object is masked from 'package:tidyr':
## 
##     expand
```

```
## This is lavaan 0.5-23.1097
```

```
## lavaan is BETA software! Please report any bugs.
```

```
## 
## Attaching package: 'lavaan'
```

```
## The following object is masked from 'package:psych':
## 
##     cor2cov
```

```
## [[1]]
##  [1] "dplyr"     "purrr"     "readr"     "tidyr"     "tibble"   
##  [6] "ggplot2"   "tidyverse" "stats"     "graphics"  "grDevices"
## [11] "utils"     "datasets"  "methods"   "base"     
## 
## [[2]]
##  [1] "stringr"   "dplyr"     "purrr"     "readr"     "tidyr"    
##  [6] "tibble"    "ggplot2"   "tidyverse" "stats"     "graphics" 
## [11] "grDevices" "utils"     "datasets"  "methods"   "base"     
## 
## [[3]]
##  [1] "haven"     "stringr"   "dplyr"     "purrr"     "readr"    
##  [6] "tidyr"     "tibble"    "ggplot2"   "tidyverse" "stats"    
## [11] "graphics"  "grDevices" "utils"     "datasets"  "methods"  
## [16] "base"     
## 
## [[4]]
##  [1] "readxl"    "haven"     "stringr"   "dplyr"     "purrr"    
##  [6] "readr"     "tidyr"     "tibble"    "ggplot2"   "tidyverse"
## [11] "stats"     "graphics"  "grDevices" "utils"     "datasets" 
## [16] "methods"   "base"     
## 
## [[5]]
##  [1] "psych"     "readxl"    "haven"     "stringr"   "dplyr"    
##  [6] "purrr"     "readr"     "tidyr"     "tibble"    "ggplot2"  
## [11] "tidyverse" "stats"     "graphics"  "grDevices" "utils"    
## [16] "datasets"  "methods"   "base"     
## 
## [[6]]
##  [1] "officer"   "psych"     "readxl"    "haven"     "stringr"  
##  [6] "dplyr"     "purrr"     "readr"     "tidyr"     "tibble"   
## [11] "ggplot2"   "tidyverse" "stats"     "graphics"  "grDevices"
## [16] "utils"     "datasets"  "methods"   "base"     
## 
## [[7]]
##  [1] "rvg"       "officer"   "psych"     "readxl"    "haven"    
##  [6] "stringr"   "dplyr"     "purrr"     "readr"     "tidyr"    
## [11] "tibble"    "ggplot2"   "tidyverse" "stats"     "graphics" 
## [16] "grDevices" "utils"     "datasets"  "methods"   "base"     
## 
## [[8]]
##  [1] "broom"     "rvg"       "officer"   "psych"     "readxl"   
##  [6] "haven"     "stringr"   "dplyr"     "purrr"     "readr"    
## [11] "tidyr"     "tibble"    "ggplot2"   "tidyverse" "stats"    
## [16] "graphics"  "grDevices" "utils"     "datasets"  "methods"  
## [21] "base"     
## 
## [[9]]
##  [1] "lme4"      "Matrix"    "broom"     "rvg"       "officer"  
##  [6] "psych"     "readxl"    "haven"     "stringr"   "dplyr"    
## [11] "purrr"     "readr"     "tidyr"     "tibble"    "ggplot2"  
## [16] "tidyverse" "stats"     "graphics"  "grDevices" "utils"    
## [21] "datasets"  "methods"   "base"     
## 
## [[10]]
##  [1] "lavaan"    "lme4"      "Matrix"    "broom"     "rvg"      
##  [6] "officer"   "psych"     "readxl"    "haven"     "stringr"  
## [11] "dplyr"     "purrr"     "readr"     "tidyr"     "tibble"   
## [16] "ggplot2"   "tidyverse" "stats"     "graphics"  "grDevices"
## [21] "utils"     "datasets"  "methods"   "base"
```

# read data


```r
add_health <-
"~/Desktop/R_programming_for_research/day_01_data_import_and_visualization/example_tidy_data/ICPSR_21600/DS0001/21600-0001-Data.sav" %>%
  read_spss()
```

# some descriptives

## age
> HOW OLD ARE YOU?

### counts


```r
add_health %>%
  count(S1)
```

```
## # A tibble: 11 x 2
##           S1     n
##    <dbl+lbl> <int>
##  1        10     1
##  2        11    13
##  3        12   466
##  4        13   690
##  5        14   859
##  6        15   867
##  7        16   860
##  8        17   743
##  9        18   199
## 10        19    35
## 11       NaN  1771
```

### convert to number and then describe


```r
add_health %>%
  mutate(age = S1 %>% parse_number()) %>%
  select(age) %>%
  psych::describe()
```

```
## Warning: 1771 parsing failures.
## row # A tibble: 5 x 4 col     row   col expected actual expected   <int> <int>    <chr>  <chr> actual 1     4    NA a number    NaN row 2    14    NA a number    NaN col 3    23    NA a number    NaN expected 4    33    NA a number    NaN actual 5    43    NA a number    NaN
## ... ................. ... ............................. ........ ............................. ...... ............................. ... ............................. ... ............................. ........ ............................. ...... .............................
## See problems(...) for more details.
```

```
##     vars    n  mean   sd median trimmed  mad min max range skew kurtosis
## age    1 4733 14.87 1.73     15    14.9 1.48  10  19     9    0    -0.87
##       se
## age 0.03
```

### histogram


```r
add_health %>%
  ggplot(aes(x = S1)) +
  geom_histogram(binwidth = 1, bins = 10, color = "white") +
  scale_x_continuous(breaks = seq(9, 20, 1)) +
  coord_cartesian(xlim = c(10, 19))
```

```
## Warning: Removed 1771 rows containing non-finite values (stat_bin).
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

## sex
> WHAT SEX ARE YOU?

### counts


```r
add_health %>%
  mutate(sex = S2 %>%
           parse_character() %>%
           recode(`1` = "Male", `2` = "Female")) %>%
  count(sex)
```

```
## # A tibble: 4 x 2
##      sex     n
##    <chr> <int>
## 1 Female  2483
## 2   Male  2235
## 3    NaN  1785
## 4   <NA>     1
```

# Section 8: Pregnancy, AIDS, and STD Risk Perceptions


```r
add_health %>%
  select(AID, num_range(prefix = "H1RP", range = 1:6)) %>%
  gather(key = question, value = response, -AID) %>%
  ggplot(mapping = aes(x = response)) +
  geom_histogram(binwidth = 1, color = "white") +
  facet_wrap(~ question)
```

```
## Warning: attributes are not identical across measure variables; they will
## be dropped
```

```
## Warning: Removed 12555 rows containing non-finite values (stat_bin).
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

## scatterplot matrix


```r
add_health %>%
  select(AID, num_range(prefix = "H1RP", range = 1:6)) %>%
  pairs.panels(pch = ".")
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-8-1.png)<!-- -->

# Section 9: Self Efficacy

## histograms


```r
add_health %>%
  select(AID, num_range(prefix = "H1SE", range = 1:4)) %>%
  gather(variable, value, -AID) %>%
  ggplot(mapping = aes(x = value)) +
  geom_histogram(binwidth = 1, color = "white") +
  facet_wrap(~ variable)
```

```
## Warning: attributes are not identical across measure variables; they will
## be dropped
```

```
## Warning: Removed 6459 rows containing non-finite values (stat_bin).
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-9-1.png)<!-- -->

## scatterplot matrix


```r
add_health %>%
  select(AID, num_range(prefix = "H1SE", range = 1:4)) %>%
  pairs.panels(pch = ".")
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-10-1.png)<!-- -->

# create slides with these plots

## create rpptx object with `read_pptx()`


```r
my_pptx <- read_pptx()
```

## `add_slide()` and `last_plot()`


```r
# add slide
# add plot with vector graphics
# ?last_plot()
# print result to filepath
my_pptx <-
my_pptx %>%
  add_slide(layout = "Title and Content", master = "Office Theme") %>% 
  ph_with_vg(code = last_plot() %>% print(), type = "body") %>% 
  print(target = "my_histogram.pptx")
```

```
## Warning: Removed 6459 rows containing non-finite values (stat_bin).
```

# for loop example


```r
# read: for every i in 1 to 10, print i
for(i in 1:10) {
  
  print(i)
  
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
## [1] 6
## [1] 7
## [1] 8
## [1] 9
## [1] 10
```

# map functions examples


```r
# for every subject id, plot a scatterplot and fit OLS best fit line
# facet / subplot by Subject
sleepstudy$Subject %>%
  unique() %>%
  map(function(id) {
  
  sleepstudy %>%
      filter(Subject == id) %>%
      ggplot(aes(x = Days, y = Reaction)) +
      geom_point() +
      stat_smooth(method = "lm", se = FALSE, fullrange = TRUE) +
      facet_wrap(~ Subject)
  
})
```

```
## [[1]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-1.png)<!-- -->

```
## 
## [[2]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-2.png)<!-- -->

```
## 
## [[3]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-3.png)<!-- -->

```
## 
## [[4]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-4.png)<!-- -->

```
## 
## [[5]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-5.png)<!-- -->

```
## 
## [[6]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-6.png)<!-- -->

```
## 
## [[7]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-7.png)<!-- -->

```
## 
## [[8]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-8.png)<!-- -->

```
## 
## [[9]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-9.png)<!-- -->

```
## 
## [[10]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-10.png)<!-- -->

```
## 
## [[11]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-11.png)<!-- -->

```
## 
## [[12]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-12.png)<!-- -->

```
## 
## [[13]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-13.png)<!-- -->

```
## 
## [[14]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-14.png)<!-- -->

```
## 
## [[15]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-15.png)<!-- -->

```
## 
## [[16]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-16.png)<!-- -->

```
## 
## [[17]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-17.png)<!-- -->

```
## 
## [[18]]
```

![](day_04_miscellaneous_files/figure-html/unnamed-chunk-14-18.png)<!-- -->

# lmm examples
> see Bates, D., Mächler, M., Bolker, B., & Walker, S. (2014). [Fitting linear mixed-effects models using lme4](https://arxiv.org/abs/1406.5823). arXiv preprint arXiv:1406.5823 and also Bates, D. M. (2010). [lme4: Mixed-effects modeling with R](http://lme4.0.r-forge.r-project.org/lMMwR/lrgprt.pdf).

# notes on lmm / lme4 p-values 


```r
help("pvalues")
```

## random intercept with fixed mean


```r
# fit model
lmm_1 <- lmer(Reaction ~ Days + (1 | Subject), data = sleepstudy, REML = TRUE)

# fit summary
lmm_1 %>%
  summary()
```

```
## Linear mixed model fit by REML ['lmerMod']
## Formula: Reaction ~ Days + (1 | Subject)
##    Data: sleepstudy
## 
## REML criterion at convergence: 1786.5
## 
## Scaled residuals: 
##     Min      1Q  Median      3Q     Max 
## -3.2257 -0.5529  0.0109  0.5188  4.2506 
## 
## Random effects:
##  Groups   Name        Variance Std.Dev.
##  Subject  (Intercept) 1378.2   37.12   
##  Residual              960.5   30.99   
## Number of obs: 180, groups:  Subject, 18
## 
## Fixed effects:
##             Estimate Std. Error t value
## (Intercept) 251.4051     9.7467   25.79
## Days         10.4673     0.8042   13.02
## 
## Correlation of Fixed Effects:
##      (Intr)
## Days -0.371
```

```r
# bootstrapped confidence intervals
lmm_1 %>%
  confint(method = "boot")
```

```
## Computing bootstrap confidence intervals ...
```

```
##                  2.5 %    97.5 %
## .sig01       23.068617  49.41114
## .sigma       27.674451  34.28831
## (Intercept) 231.291143 270.51111
## Days          8.789178  12.02627
```

```r
# alternative fit (i.e. same model, more typing)
lmm_1_alt <- lmer(Reaction ~ 1 + Days + (1 | Subject), data = sleepstudy, REML = TRUE)

# check to make sure
anova(lmm_1, lmm_1_alt)
```

```
## refitting model(s) with ML (instead of REML)
```

```
## Data: sleepstudy
## Models:
## lmm_1: Reaction ~ Days + (1 | Subject)
## lmm_1_alt: Reaction ~ 1 + Days + (1 | Subject)
##           Df    AIC    BIC  logLik deviance Chisq Chi Df Pr(>Chisq)
## lmm_1      4 1802.1 1814.8 -897.04   1794.1                        
## lmm_1_alt  4 1802.1 1814.8 -897.04   1794.1     0      0          1
```

## intercept varying among group 1 and group 2 within group 1 (i.e. nesting)


```r
# fit model
lmm_2 <- lmer(strength ~ 1 + (1 | batch / cask), data = Pastes, REML = TRUE)

# fit summary
lmm_2 %>%
  summary()
```

```
## Linear mixed model fit by REML ['lmerMod']
## Formula: strength ~ 1 + (1 | batch/cask)
##    Data: Pastes
## 
## REML criterion at convergence: 247
## 
## Scaled residuals: 
##     Min      1Q  Median      3Q     Max 
## -1.4798 -0.5156  0.0095  0.4720  1.3897 
## 
## Random effects:
##  Groups     Name        Variance Std.Dev.
##  cask:batch (Intercept) 8.434    2.9041  
##  batch      (Intercept) 1.657    1.2874  
##  Residual               0.678    0.8234  
## Number of obs: 60, groups:  cask:batch, 30; batch, 10
## 
## Fixed effects:
##             Estimate Std. Error t value
## (Intercept)  60.0533     0.6769   88.72
```

```r
# bootstrapped confidence intervals
lmm_2 %>%
  confint(method = "boot")
```

```
## Computing bootstrap confidence intervals ...
```

```
##                  2.5 %    97.5 %
## .sig01       1.8957138  3.699118
## .sig02       0.0000000  2.599861
## .sigma       0.6239417  1.029506
## (Intercept) 58.7682335 61.352554
```

```r
# alternative fit (i.e. same model, more typing)
lmm_2_alt <- lmer(strength ~ 1 + (1 | batch) + (1 | batch:cask), data = Pastes, REML = TRUE)

# check to make sure
anova(lmm_2, lmm_2_alt)
```

```
## refitting model(s) with ML (instead of REML)
```

```
## Data: Pastes
## Models:
## lmm_2: strength ~ 1 + (1 | batch/cask)
## lmm_2_alt: strength ~ 1 + (1 | batch) + (1 | batch:cask)
##           Df    AIC    BIC logLik deviance Chisq Chi Df Pr(>Chisq)    
## lmm_2      4 255.99 264.37   -124   247.99                            
## lmm_2_alt  4 255.99 264.37   -124   247.99     0      0  < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

## intercept varying among group 1 and group 2


```r
# fit model
lmm_3 <- lmer(diameter ~ 1 + (1 | plate) + (1 | sample), data = Penicillin, REML = TRUE)

# fit summary
lmm_3 %>%
  summary()
```

```
## Linear mixed model fit by REML ['lmerMod']
## Formula: diameter ~ 1 + (1 | plate) + (1 | sample)
##    Data: Penicillin
## 
## REML criterion at convergence: 330.9
## 
## Scaled residuals: 
##      Min       1Q   Median       3Q      Max 
## -2.07923 -0.67140  0.06292  0.58377  2.97958 
## 
## Random effects:
##  Groups   Name        Variance Std.Dev.
##  plate    (Intercept) 0.7169   0.8467  
##  sample   (Intercept) 3.7309   1.9316  
##  Residual             0.3024   0.5499  
## Number of obs: 144, groups:  plate, 24; sample, 6
## 
## Fixed effects:
##             Estimate Std. Error t value
## (Intercept)  22.9722     0.8086   28.41
```

```r
# bootstrapped confidence intervals
lmm_3 %>%
  confint(method = "boot")
```

```
## Computing bootstrap confidence intervals ...
```

```
##                  2.5 %     97.5 %
## .sig01       0.5561657  1.0886871
## .sig02       0.8056499  3.0153786
## .sigma       0.4805159  0.6249864
## (Intercept) 21.2407665 24.6045805
```

```r
# alternative fit (i.e. same model, less typing)
lmm_3_alt <- lmer(diameter ~ (1 | plate) + (1 | sample), data = Penicillin, REML = TRUE)

# check to make sure
anova(lmm_3, lmm_3_alt)
```

```
## refitting model(s) with ML (instead of REML)
```

```
## Data: Penicillin
## Models:
## lmm_3: diameter ~ 1 + (1 | plate) + (1 | sample)
## lmm_3_alt: diameter ~ (1 | plate) + (1 | sample)
##           Df    AIC    BIC  logLik deviance Chisq Chi Df Pr(>Chisq)
## lmm_3      4 340.19 352.07 -166.09   332.19                        
## lmm_3_alt  4 340.19 352.07 -166.09   332.19     0      0          1
```

## Correlated random intercept and slope.


```r
# fit model
lmm_4 <- lmer(Reaction ~ Days + (Days | Subject), data = sleepstudy, REML = TRUE)

# fit summary
lmm_4 %>%
  summary()
```

```
## Linear mixed model fit by REML ['lmerMod']
## Formula: Reaction ~ Days + (Days | Subject)
##    Data: sleepstudy
## 
## REML criterion at convergence: 1743.6
## 
## Scaled residuals: 
##     Min      1Q  Median      3Q     Max 
## -3.9536 -0.4634  0.0231  0.4634  5.1793 
## 
## Random effects:
##  Groups   Name        Variance Std.Dev. Corr
##  Subject  (Intercept) 612.09   24.740       
##           Days         35.07    5.922   0.07
##  Residual             654.94   25.592       
## Number of obs: 180, groups:  Subject, 18
## 
## Fixed effects:
##             Estimate Std. Error t value
## (Intercept)  251.405      6.825   36.84
## Days          10.467      1.546    6.77
## 
## Correlation of Fixed Effects:
##      (Intr)
## Days -0.138
```

```r
# bootstrapped confidence intervals
lmm_4 %>%
  confint(method = "boot")
```

```
## Computing bootstrap confidence intervals ...
```

```
##                   2.5 %      97.5 %
## .sig01       12.2328265  35.5523491
## .sig02       -0.5448427   0.9442881
## .sig03        3.4706950   8.2854461
## .sigma       22.5755741  28.5413268
## (Intercept) 238.3432985 265.0934430
## Days          7.8308448  13.6338617
```

```r
# alternative fit (i.e. same model, more typing)
lmm_4_alt <- lmer(Reaction ~ 1 + Days + (1 + Days | Subject), data = sleepstudy, REML = TRUE)

# check to make sure
anova(lmm_4, lmm_4_alt)
```

```
## refitting model(s) with ML (instead of REML)
```

```
## Data: sleepstudy
## Models:
## lmm_4: Reaction ~ Days + (Days | Subject)
## lmm_4_alt: Reaction ~ 1 + Days + (1 + Days | Subject)
##           Df    AIC    BIC  logLik deviance Chisq Chi Df Pr(>Chisq)
## lmm_4      6 1763.9 1783.1 -875.97   1751.9                        
## lmm_4_alt  6 1763.9 1783.1 -875.97   1751.9     0      0          1
```

## Uncorrelated random intercept and slope.


```r
# fit model
lmm_5 <- lmer(Reaction ~ Days + (Days || Subject), data = sleepstudy, REML = TRUE)

# fit summary
lmm_5 %>%
  summary()
```

```
## Linear mixed model fit by REML ['lmerMod']
## Formula: Reaction ~ Days + ((1 | Subject) + (0 + Days | Subject))
##    Data: sleepstudy
## 
## REML criterion at convergence: 1743.7
## 
## Scaled residuals: 
##     Min      1Q  Median      3Q     Max 
## -3.9626 -0.4625  0.0204  0.4653  5.1860 
## 
## Random effects:
##  Groups    Name        Variance Std.Dev.
##  Subject   (Intercept) 627.57   25.051  
##  Subject.1 Days         35.86    5.988  
##  Residual              653.58   25.565  
## Number of obs: 180, groups:  Subject, 18
## 
## Fixed effects:
##             Estimate Std. Error t value
## (Intercept)  251.405      6.885   36.51
## Days          10.467      1.560    6.71
## 
## Correlation of Fixed Effects:
##      (Intr)
## Days -0.184
```

```r
# bootstrapped confidence intervals
lmm_5 %>%
  confint(method = "boot")
```

```
## Computing bootstrap confidence intervals ...
```

```
##                  2.5 %     97.5 %
## .sig01       12.803523  36.030904
## .sig02        3.626702   8.537534
## .sigma       22.532207  28.672132
## (Intercept) 237.939977 266.534613
## Days          7.552651  13.564118
```

```r
# alternative fit (i.e. same model, more typing)
lmm_5_alt <- lmer(Reaction ~ 1 + Days + (1 | Subject) + (0 + Days | Subject), data = sleepstudy, REML = TRUE)

# check to make sure
anova(lmm_5, lmm_5_alt)
```

```
## refitting model(s) with ML (instead of REML)
```

```
## Data: sleepstudy
## Models:
## lmm_5: Reaction ~ Days + ((1 | Subject) + (0 + Days | Subject))
## lmm_5_alt: Reaction ~ 1 + Days + (1 | Subject) + (0 + Days | Subject)
##           Df  AIC  BIC logLik deviance Chisq Chi Df Pr(>Chisq)
## lmm_5      5 1762 1778   -876     1752                        
## lmm_5_alt  5 1762 1778   -876     1752     0      0          1
```
