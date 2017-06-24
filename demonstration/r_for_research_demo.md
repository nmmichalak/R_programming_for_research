# R Programming for Research Demonstration
Nicholas Michalak  
6/24/2017  

# load packages


```r
# packages I want to use in this analysis
want_packages <- c("tidyverse", "psych", "haven", "lavaan", "lme4", "lmerTest", "afex", "compute.es")

# packages I have
have_packages <- want_packages %in% rownames(installed.packages())

# install those I don"t have
if(any(!have_packages))
  install.packages(want_packages[!have_packages])

lapply(want_packages, library, character.only = TRUE)
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
## 
## Attaching package: 'lmerTest'
```

```
## The following object is masked from 'package:lme4':
## 
##     lmer
```

```
## The following object is masked from 'package:stats':
## 
##     step
```

```
## Loading required package: lsmeans
```

```
## Loading required package: estimability
```

```
## 
## Attaching package: 'lsmeans'
```

```
## The following object is masked from 'package:lmerTest':
## 
##     lsmeans
```

```
## ************
## Welcome to afex. For support visit: http://afex.singmann.science/
```

```
## - Functions for ANOVAs: aov_car(), aov_ez(), and aov_4()
## - Methods for calculating p-values with mixed(): 'KR', 'S', 'LRT', and 'PB'
## - 'afex_aov' and 'mixed' objects can be passed to lsmeans() for follow-up tests
## - Get and set global package options with: afex_options()
## - Set orthogonal sum-to-zero contrasts globally: set_sum_contrasts()
## - For example analyses see: browseVignettes("afex")
## ************
```

```
## 
## Attaching package: 'afex'
```

```
## The following object is masked from 'package:lme4':
## 
##     lmer
```

```
## [[1]]
##  [1] "dplyr"     "purrr"     "readr"     "tidyr"     "tibble"   
##  [6] "ggplot2"   "tidyverse" "stats"     "graphics"  "grDevices"
## [11] "utils"     "datasets"  "methods"   "base"     
## 
## [[2]]
##  [1] "psych"     "dplyr"     "purrr"     "readr"     "tidyr"    
##  [6] "tibble"    "ggplot2"   "tidyverse" "stats"     "graphics" 
## [11] "grDevices" "utils"     "datasets"  "methods"   "base"     
## 
## [[3]]
##  [1] "haven"     "psych"     "dplyr"     "purrr"     "readr"    
##  [6] "tidyr"     "tibble"    "ggplot2"   "tidyverse" "stats"    
## [11] "graphics"  "grDevices" "utils"     "datasets"  "methods"  
## [16] "base"     
## 
## [[4]]
##  [1] "lavaan"    "haven"     "psych"     "dplyr"     "purrr"    
##  [6] "readr"     "tidyr"     "tibble"    "ggplot2"   "tidyverse"
## [11] "stats"     "graphics"  "grDevices" "utils"     "datasets" 
## [16] "methods"   "base"     
## 
## [[5]]
##  [1] "lme4"      "Matrix"    "lavaan"    "haven"     "psych"    
##  [6] "dplyr"     "purrr"     "readr"     "tidyr"     "tibble"   
## [11] "ggplot2"   "tidyverse" "stats"     "graphics"  "grDevices"
## [16] "utils"     "datasets"  "methods"   "base"     
## 
## [[6]]
##  [1] "lmerTest"  "lme4"      "Matrix"    "lavaan"    "haven"    
##  [6] "psych"     "dplyr"     "purrr"     "readr"     "tidyr"    
## [11] "tibble"    "ggplot2"   "tidyverse" "stats"     "graphics" 
## [16] "grDevices" "utils"     "datasets"  "methods"   "base"     
## 
## [[7]]
##  [1] "afex"         "lsmeans"      "estimability" "lmerTest"    
##  [5] "lme4"         "Matrix"       "lavaan"       "haven"       
##  [9] "psych"        "dplyr"        "purrr"        "readr"       
## [13] "tidyr"        "tibble"       "ggplot2"      "tidyverse"   
## [17] "stats"        "graphics"     "grDevices"    "utils"       
## [21] "datasets"     "methods"      "base"        
## 
## [[8]]
##  [1] "compute.es"   "afex"         "lsmeans"      "estimability"
##  [5] "lmerTest"     "lme4"         "Matrix"       "lavaan"      
##  [9] "haven"        "psych"        "dplyr"        "purrr"       
## [13] "readr"        "tidyr"        "tibble"       "ggplot2"     
## [17] "tidyverse"    "stats"        "graphics"     "grDevices"   
## [21] "utils"        "datasets"     "methods"      "base"
```

# generate data for examples


```r
# create four variables: N, x, z, and y
# 100 observations per variable
N <- 100
id <- 1:100

# set randomizer seed so results can be reproduced
set.seed(1234)

# drawn from random normal distribution
x <- rnorm(n = N, mean = 175, sd = 7)
z <- 0.7 * x + rnorm(n = N, mean = 0, sd = 5)
y <- 0.4 * z + rnorm(n = N, mean = 0, sd = 5)

# store in a dataframe
my_data <- data.frame(id, y, x, z)
```

# descriptives


```r
my_data %>%
  psych::describe(.)
```

```
##    vars   n   mean    sd median trimmed   mad    min    max range  skew
## id    1 100  50.50 29.01  50.50   50.50 37.06   1.00 100.00 99.00  0.00
## y     2 100  49.55  5.86  49.90   49.50  4.40  27.93  66.13 38.20 -0.15
## x     3 100 173.90  7.03 172.31  173.39  6.64 158.58 192.84 34.26  0.59
## z     4 100 121.94  7.04 121.49  122.01  6.79 106.19 139.70 33.51 -0.03
##    kurtosis   se
## id    -1.24 2.90
## y      1.40 0.59
## x     -0.02 0.70
## z     -0.37 0.70
```

# correlation matrix


```r
my_data %>%
  select(-id) %>%
  pairs.panels(pch = ".")
```

![](r_for_research_demo_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

# histograms


```r
my_data %>%
  gather(variable, value, -id) %>%
  ggplot() +
  geom_histogram(aes(x = value)) +
  facet_wrap(~ variable, nrow = 3)
```

```
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

![](r_for_research_demo_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

# boxplots


```r
my_data %>%
  gather(variable, value, -id) %>%
  ggplot(aes(x = variable, y = value)) +
  geom_boxplot()
```

![](r_for_research_demo_files/figure-html/unnamed-chunk-6-1.png)<!-- -->

# scatterplots


```r
my_data %>%
  ggplot(aes(x = x, y = z)) +
  geom_point() +
  geom_smooth(method = "lm")
```

![](r_for_research_demo_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

```r
my_data %>%
  ggplot(aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm")
```

![](r_for_research_demo_files/figure-html/unnamed-chunk-7-2.png)<!-- -->

```r
my_data %>%
  ggplot(aes(x = z, y = y)) +
  geom_point() +
  geom_smooth(method = "lm")
```

![](r_for_research_demo_files/figure-html/unnamed-chunk-7-3.png)<!-- -->

# correlation tests


```r
my_data %>%
  select(-id) %>%
  corr.test() %>%
  print(short = FALSE)
```

```
## Call:corr.test(x = .)
## Correlation matrix 
##      y    x    z
## y 1.00 0.39 0.58
## x 0.39 1.00 0.68
## z 0.58 0.68 1.00
## Sample Size 
## [1] 100
## Probability values (Entries above the diagonal are adjusted for multiple tests.) 
##   y x z
## y 0 0 0
## x 0 0 0
## z 0 0 0
## 
##  To see confidence intervals of the correlations, print with the short=FALSE option
## 
##  Confidence intervals based upon normal theory.  To get bootstrapped values, try cor.ci
##     lower    r upper p
## y-x  0.21 0.39  0.55 0
## y-z  0.44 0.58  0.70 0
## x-z  0.56 0.68  0.77 0
```

# t-tests


```r
t.test(x, y)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  x and y
## t = 135.85, df = 191.8, p-value < 2.2e-16
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  122.5489 126.1600
## sample estimates:
## mean of x mean of y 
## 173.90267  49.54825
```

```r
t.test(x, z)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  x and z
## t = 52.226, df = 198, p-value < 2.2e-16
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  50.00245 53.92672
## sample estimates:
## mean of x mean of y 
##  173.9027  121.9381
```

```r
t.test(z, y)
```

```
## 
## 	Welch Two Sample t-test
## 
## data:  z and y
## t = 79.016, df = 191.71, p-value < 2.2e-16
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  70.58281 74.19685
## sample estimates:
## mean of x mean of y 
## 121.93808  49.54825
```

# classic ANOVA


```r
my_data %>%
  gather(variable, value, -id) %>%
  mutate(id = 1:300) %>%
  aov_car(formula = value ~ variable + Error(id), data = .) %>%
  summary(.)
```

```
## Converting to factor: variable
```

```
## Contrasts set to contr.sum for the following variables: variable
```

```
## Anova Table (Type 3 tests)
## 
## Response: value
##          num Df den Df    MSE      F     ges    Pr(>F)    
## variable      2    297 44.455 8774.7 0.98336 < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

# folow up contrasts (classic ANOVA)


```r
my_data %>%
  gather(variable, value, -id) %>%
  mutate(id = 1:300) %>%
  aov_car(formula = value ~ variable + Error(id), data = .) %>%
  lsmeans::lsmeans(specs = "variable") %>%
  contrast(list(xy = c(-1, 1, 0),
                xz = c(-1, 0, 1),
                yz = c(0, -1, 1))) %>%
  confint(.)
```

```
## Converting to factor: variable
```

```
## Contrasts set to contr.sum for the following variables: variable
```

```
##  contrast   estimate        SE  df   lower.CL   upper.CL
##  xy       -124.35442 0.9429202 297 -126.21007 -122.49876
##  xz        -51.96458 0.9429202 297  -53.82024  -50.10893
##  yz         72.38983 0.9429202 297   70.53418   74.24548
## 
## Confidence level used: 0.95
```

# effect sizes


```r
mes(m.1 = mean(x),
    m.2 = mean(y),
    sd.1 = sd(x),
    sd.2 = sd(y),
    n.1 = length(x),
    n.2 = length(y),
    level = .95,
    verbose = TRUE)
```

```
## Mean Differences ES: 
##  
##  d [ 0.95 %CI] = 19.21 [ 19.2 , 19.22 ] 
##   var(d) = 0.94 
##   p-value(d) = 0 
##   U3(d) = 100 % 
##   CLES(d) = 100 % 
##   Cliff's Delta = 1 
##  
##  g [ 0.95 %CI] = 19.14 [ 19.13 , 19.15 ] 
##   var(g) = 0.94 
##   p-value(g) = 0 
##   U3(g) = 100 % 
##   CLES(g) = 100 % 
##  
##  Correlation ES: 
##  
##  r [ 0.95 %CI] = 0.99 [ 0.99 , 0.99 ] 
##   var(r) = 0 
##   p-value(r) = 0 
##  
##  z [ 0.95 %CI] = 2.96 [ 2.96 , 2.96 ] 
##   var(z) = 0.01 
##   p-value(z) = 0 
##  
##  Odds Ratio ES: 
##  
##  OR [ 0.95 %CI] = 1.359473e+15 [ 1.331228e+15 , 1.388318e+15 ] 
##   p-value(OR) = 0 
##  
##  Log OR [ 0.95 %CI] = 34.85 [ 34.82 , 34.87 ] 
##   var(lOR) = 3.1 
##   p-value(Log OR) = 0 
##  
##  Other: 
##  
##  NNT = 1.25 
##  Total N = 200
```

# classic repeated measures ANOVA


```r
my_data %>%
  gather(variable, value, -id) %>%
  aov_car(formula = value ~ variable + Error(id/variable), data = .) %>%
  summary(.)
```

```
## 
## Univariate Type III Repeated-Measures ANOVA Assuming Sphericity
## 
##                  SS num Df Error SS den Df     F    Pr(>F)    
## (Intercept) 3976452      1   9283.4     99 42405 < 2.2e-16 ***
## variable     780154      2   3919.7    198 19705 < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## 
## Mauchly Tests for Sphericity
## 
##          Test statistic   p-value
## variable        0.90843 0.0090434
## 
## 
## Greenhouse-Geisser and Huynh-Feldt Corrections
##  for Departure from Sphericity
## 
##           GG eps Pr(>F[GG])    
## variable 0.91611  < 2.2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
##             HF eps   Pr(>F[HF])
## variable 0.9325246 2.57485e-213
```

# follow-up contrasts (classic RM ANOVA)


```r
my_data %>%
  gather(variable, value, -id) %>%
  aov_car(formula = value ~ variable + Error(id/variable), data = .) %>%
  lsmeans::lsmeans(specs = "variable") %>%
  contrast(list(xy = c(-1, 1, 0),
                xz = c(-1, 0, 1),
                yz = c(0, -1, 1))) %>%
  confint(.)
```

```
##  contrast  estimate        SE  df  lower.CL  upper.CL
##  xy       124.35442 0.6292271 198 123.11357 125.59526
##  xz        72.38983 0.6292271 198  71.14898  73.63068
##  yz       -51.96458 0.6292271 198 -53.20543 -50.72374
## 
## Confidence level used: 0.95
```

# mediation


```r
# path label combes before variable
# e.g. z ~ a * x = label = regress z on x, label it a
my_mediaition <- "# a path
                    z ~ a * x

                  # b path
                    y ~ b * z

                  # c path
                    y ~ c * x

                  # print total and indirect effects
                    ab := a * b
                    total := c + (a * b)"

# fit model
my_mediaition %>%
  sem(data = my_data) %>%
  summary(.)
```

```
## lavaan (0.5-23.1097) converged normally after  15 iterations
## 
##   Number of observations                           100
## 
##   Estimator                                         ML
##   Minimum Function Test Statistic                0.000
##   Degrees of freedom                                 0
## 
## Parameter Estimates:
## 
##   Information                                 Expected
##   Standard Errors                             Standard
## 
## Regressions:
##                    Estimate  Std.Err  z-value  P(>|z|)
##   z ~                                                 
##     x          (a)    0.681    0.073    9.285    0.000
##   y ~                                                 
##     z          (b)    0.488    0.092    5.290    0.000
##     x          (c)   -0.004    0.092   -0.047    0.963
## 
## Variances:
##                    Estimate  Std.Err  z-value  P(>|z|)
##    .z                26.352    3.727    7.071    0.000
##    .y                22.459    3.176    7.071    0.000
## 
## Defined Parameters:
##                    Estimate  Std.Err  z-value  P(>|z|)
##     ab                0.333    0.072    4.596    0.000
##     total             0.328    0.077    4.285    0.000
```

```r
# parameter estimates with boostraped CIs
my_mediaition %>%
  sem(data = my_data,
      se = "bootstrap",
      bootstrap = 1000) %>%
  parameterEstimates(boot.ci.type = "bca.simple")
```

```
##     lhs op     rhs label    est    se      z pvalue ci.lower ci.upper
## 1     z  ~       x     a  0.681 0.072  9.456  0.000    0.538    0.828
## 2     y  ~       z     b  0.488 0.091  5.386  0.000    0.318    0.661
## 3     y  ~       x     c -0.004 0.097 -0.044  0.965   -0.197    0.193
## 4     z ~~       z       26.352 4.216  6.250  0.000   19.174   36.110
## 5     y ~~       y       22.459 3.582  6.270  0.000   16.761   30.816
## 6     x ~~       x       48.938 0.000     NA     NA   48.938   48.938
## 7    ab :=     a*b    ab  0.333 0.070  4.741  0.000    0.212    0.483
## 8 total := c+(a*b) total  0.328 0.086  3.809  0.000    0.163    0.507
```

# linear mixed effects model


```r
my_data %>%
  gather(variable, value, -id) %>%
  lmer(formula = value ~ variable + (1 | variable), data = .) %>%
  summary(.)
```

```
## Linear mixed model fit by REML t-tests use Satterthwaite approximations
##   to degrees of freedom [lmerMod]
## Formula: value ~ variable + (1 | variable)
##    Data: .
## 
## REML criterion at convergence: 1983.6
## 
## Scaled residuals: 
##     Min      1Q  Median      3Q     Max 
## -3.2425 -0.6519 -0.0613  0.5737  2.8407 
## 
## Random effects:
##  Groups   Name        Variance Std.Dev.
##  variable (Intercept) 3091.26  55.599  
##  Residual               44.45   6.667  
## Number of obs: 300, groups:  variable, 3
## 
## Fixed effects:
##              Estimate Std. Error        df t value Pr(>|t|)
## (Intercept)  173.9027    55.6031    0.2027   3.128    0.595
## variabley   -124.3544    78.6346    0.2027  -1.581    0.681
## variablez    -51.9646    78.6346    0.2027  -0.661    0.798
## 
## Correlation of Fixed Effects:
##           (Intr) varbly
## variabley -0.707       
## variablez -0.707  0.500
```
