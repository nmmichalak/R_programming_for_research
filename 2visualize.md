---
title: "Day 2. Visualize"
date: "06/20/2019"
output: 
  html_document: 
    df_print: kable
    fig_height: 7.5
    fig_width: 10.5
    keep_md: yes
    theme: flatly
    toc: yes
    toc_float: true
---

# Install and/or load packages for this session
> - `install.packages()`: "Download and install packages from CRAN-like repositories or from local files."  
> - `library()`: loads your package you installed  
> - **Best Practice Note.** `install.packages()` downloads files from the internet, so it's "polite" to "comment out" (`#` = comment) this code before you share it with people so they don't download files they don't really want by accident.  

# Install and/or load packages for this session


```r
# install.packages("tidyverse")
# install.packages("psych")
# install.packages("datasauRus")
# install.packages("lme4")
# install.packages("fivethirtyeight")

library(tidyverse)
library(psych)
library(datasauRus)
library(lme4)
library(fivethirtyeight)
```

# Anscombe's quartet

## Same descriptives ...


```r
describe(anscombe)
```

<div class="kable-table">

      vars    n       mean         sd   median    trimmed        mad    min     max   range         skew     kurtosis          se
---  -----  ---  ---------  ---------  -------  ---------  ---------  -----  ------  ------  -----------  -----------  ----------
x1       1   11   9.000000   3.316625     9.00   9.000000   4.447800   4.00   14.00   10.00    0.0000000   -1.5289256   1.0000000
x2       2   11   9.000000   3.316625     9.00   9.000000   4.447800   4.00   14.00   10.00    0.0000000   -1.5289256   1.0000000
x3       3   11   9.000000   3.316625     9.00   9.000000   4.447800   4.00   14.00   10.00    0.0000000   -1.5289256   1.0000000
x4       4   11   9.000000   3.316625     8.00   8.000000   0.000000   8.00   19.00   11.00    2.4669110    4.5206612   1.0000000
y1       5   11   7.500909   2.031568     7.58   7.490000   1.823598   4.26   10.84    6.58   -0.0483735   -1.1991228   0.6125408
y2       6   11   7.500909   2.031657     8.14   7.794444   1.467774   3.10    9.26    6.16   -0.9786929   -0.5143191   0.6125676
y3       7   11   7.500000   2.030424     7.11   7.152222   1.527078   5.39   12.74    7.35    1.3801204    1.2400439   0.6121958
y4       8   11   7.500909   2.030578     7.04   7.195556   1.897728   5.25   12.50    7.25    1.1207739    0.6287512   0.6122425

</div>

## Same linear regression results ...


```r
summary(lm(y1 ~ x1, data = anscombe))
```

```
## 
## Call:
## lm(formula = y1 ~ x1, data = anscombe)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -1.92127 -0.45577 -0.04136  0.70941  1.83882 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)   
## (Intercept)   3.0001     1.1247   2.667  0.02573 * 
## x1            0.5001     0.1179   4.241  0.00217 **
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1.237 on 9 degrees of freedom
## Multiple R-squared:  0.6665,	Adjusted R-squared:  0.6295 
## F-statistic: 17.99 on 1 and 9 DF,  p-value: 0.00217
```

```r
summary(lm(y2 ~ x2, data = anscombe))
```

```
## 
## Call:
## lm(formula = y2 ~ x2, data = anscombe)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -1.9009 -0.7609  0.1291  0.9491  1.2691 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)   
## (Intercept)    3.001      1.125   2.667  0.02576 * 
## x2             0.500      0.118   4.239  0.00218 **
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1.237 on 9 degrees of freedom
## Multiple R-squared:  0.6662,	Adjusted R-squared:  0.6292 
## F-statistic: 17.97 on 1 and 9 DF,  p-value: 0.002179
```

```r
summary(lm(y3 ~ x3, data = anscombe))
```

```
## 
## Call:
## lm(formula = y3 ~ x3, data = anscombe)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -1.1586 -0.6146 -0.2303  0.1540  3.2411 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)   
## (Intercept)   3.0025     1.1245   2.670  0.02562 * 
## x3            0.4997     0.1179   4.239  0.00218 **
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1.236 on 9 degrees of freedom
## Multiple R-squared:  0.6663,	Adjusted R-squared:  0.6292 
## F-statistic: 17.97 on 1 and 9 DF,  p-value: 0.002176
```

```r
summary(lm(y4 ~ x4, data = anscombe))
```

```
## 
## Call:
## lm(formula = y4 ~ x4, data = anscombe)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -1.751 -0.831  0.000  0.809  1.839 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)   
## (Intercept)   3.0017     1.1239   2.671  0.02559 * 
## x4            0.4999     0.1178   4.243  0.00216 **
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1.236 on 9 degrees of freedom
## Multiple R-squared:  0.6667,	Adjusted R-squared:  0.6297 
## F-statistic:    18 on 1 and 9 DF,  p-value: 0.002165
```

## But the plots ...


```r
tibble(set = rep(1:4, each = nrow(anscombe)) %>% factor(),
       x = with(anscombe, c(x1, x2, x3, x4)),
       y = with(anscombe, c(y1, y2, y3, y4))) %>% 
  ggplot(mapping = aes(x = x, y = y, color = set)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  facet_wrap(facets = ~ set) +
  theme(legend.position = "none")
```

![](2visualize_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

# Datasaurus Dozen

## Same descriptives ...


```r
with(datasaurus_dozen, describeBy(x, group = dataset, mat = TRUE))
```

<div class="kable-table">

       item   group1        vars     n       mean         sd     median    trimmed        mad        min        max      range         skew     kurtosis         se
-----  -----  -----------  -----  ----  ---------  ---------  ---------  ---------  ---------  ---------  ---------  ---------  -----------  -----------  ---------
X11    1      away             1   142   54.26610   16.76983   53.34030   54.35902   21.22096   15.56075   91.63996   76.07921   -0.0238768   -1.2428294   1.407292
X12    2      bullseye         1   142   54.26873   16.76924   53.84209   53.86032   17.49410   19.28820   91.73554   72.44733    0.1682837   -0.2682028   1.407243
X13    3      circle           1   142   54.26732   16.76001   54.02321   54.07580   16.29359   21.86358   85.66476   63.80118    0.0304864   -0.6690924   1.406469
X14    4      dino             1   142   54.26327   16.76514   53.33330   53.68646   15.96656   22.30770   98.20510   75.89740    0.2807568   -0.2854912   1.406899
X15    5      dots             1   142   54.26030   16.76774   50.97677   54.87898    2.76161   25.44353   77.95444   52.51091   -0.1226525   -0.8711817   1.407117
X16    6      h_lines          1   142   54.26144   16.76590   53.06968   53.87282   17.90469   22.00371   98.28812   76.28441    0.2408185   -0.3549513   1.406963
X17    7      high_lines       1   142   54.26881   16.76670   54.16869   53.91367   16.00184   17.89350   96.08052   78.18702    0.1891617   -0.2816209   1.407031
X18    8      slant_down       1   142   54.26785   16.76676   53.13516   53.83147   16.23906   18.10947   95.59342   77.48394    0.2521441   -0.2597905   1.407035
X19    9      slant_up         1   142   54.26588   16.76885   54.26135   53.68574   16.12922   20.20978   95.26053   75.05075    0.2299168   -0.3829457   1.407211
X110   10     star             1   142   54.26734   16.76896   56.53473   54.33442   22.16494   27.02460   86.43590   59.41129    0.0814822   -1.1882423   1.407220
X111   11     v_lines          1   142   54.26993   16.76996   50.36289   53.56542   28.37296   30.44965   89.50485   59.05520    0.2561127   -0.5817808   1.407304
X112   12     wide_lines       1   142   54.26692   16.77000   64.55023   54.70481   11.67615   27.43963   77.91587   50.47624   -0.3212056   -1.7192867   1.407307
X113   13     x_shape          1   142   54.26015   16.76996   47.13646   53.26637   14.75946   31.10687   85.44619   54.33932    0.4776030   -1.3729389   1.407304

</div>

```r
with(datasaurus_dozen, describeBy(y, group = dataset, mat = TRUE))
```

<div class="kable-table">

       item   group1        vars     n       mean         sd     median    trimmed        mad          min        max      range         skew     kurtosis         se
-----  -----  -----------  -----  ----  ---------  ---------  ---------  ---------  ---------  -----------  ---------  ---------  -----------  -----------  ---------
X11    1      away             1   142   47.83472   26.93974   47.53527   48.23284   35.89123    0.0151193   97.47577   97.46065   -0.0932474   -1.2817225   2.260733
X12    2      bullseye         1   142   47.83082   26.93573   47.38294   47.82848   36.83154    9.6915471   85.87623   76.18468    0.0122276   -1.4540983   2.260396
X13    3      circle           1   142   47.83772   26.93004   51.02502   47.71135   41.71674   16.3265464   85.57813   69.25159    0.0048960   -1.8029697   2.259918
X14    4      dino             1   142   47.83225   26.93540   46.02560   46.90284   30.79242    2.9487000   99.48720   96.53850    0.2472603   -1.0635521   2.260369
X15    5      dots             1   142   47.83983   26.93019   51.29929   46.87745   46.98792   15.7718920   94.24933   78.47744    0.1476910   -1.4088664   2.259931
X16    6      h_lines          1   142   47.83025   26.93988   50.47353   47.23323   29.62371   10.4639152   90.45894   79.99502    0.1487355   -1.1603030   2.260744
X17    7      high_lines       1   142   47.83545   26.94000   32.49920   47.15084   22.76810   14.9139625   87.15221   72.23825    0.2024742   -1.8022348   2.260754
X18    8      slant_down       1   142   47.83590   26.93610   46.40131   47.30665   28.64590    0.3038724   99.64418   99.34031    0.1873369   -0.9492562   2.260428
X19    9      slant_up         1   142   47.83150   26.93861   45.29224   46.83068   33.79656    5.6457775   99.57959   93.93381    0.2554495   -1.0933159   2.260638
X110   10     star             1   142   47.83955   26.93027   50.11055   46.55526   37.29715   14.3655905   92.21499   77.84940    0.2372490   -1.3589160   2.259938
X111   11     v_lines          1   142   47.83699   26.93768   47.11362   46.82624   33.00178    2.7347602   99.69468   96.95992    0.2253746   -1.0479510   2.260560
X112   12     wide_lines       1   142   47.83160   26.93790   46.27933   46.96953   32.58742    0.2170063   99.28376   99.06676    0.2484350   -1.0901205   2.260578
X113   13     x_shape          1   142   47.83972   26.93000   39.87621   46.97941   33.04887    4.5776614   97.83761   93.25995    0.2277144   -1.4442001   2.259915

</div>

## Same linear regression results ...


```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "away", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "away", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -49.481 -24.474   0.422  24.196  49.537 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.4251     7.6932   6.944 1.31e-10 ***
## x            -0.1030     0.1355  -0.760    0.448    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.98 on 140 degrees of freedom
## Multiple R-squared:  0.004112,	Adjusted R-squared:  -0.003001 
## F-statistic: 0.5781 on 1 and 140 DF,  p-value: 0.4483
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "bullseye", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "bullseye", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -38.506 -23.548  -1.602  22.128  38.384 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.8095     7.6904   6.997 9.92e-11 ***
## x            -0.1102     0.1354  -0.813    0.417    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.97 on 140 degrees of freedom
## Multiple R-squared:  0.004704,	Adjusted R-squared:  -0.002405 
## F-statistic: 0.6617 on 1 and 140 DF,  p-value: 0.4173
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "circle", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "circle", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -31.649 -28.873   3.759  29.968  37.582 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.7970     7.6925   6.993 1.01e-10 ***
## x            -0.1098     0.1355  -0.811    0.419    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.96 on 140 degrees of freedom
## Multiple R-squared:  0.004671,	Adjusted R-squared:  -0.002439 
## F-statistic: 0.657 on 1 and 140 DF,  p-value: 0.419
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "dino", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "dino", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -43.439 -23.213  -1.296  21.368  52.050 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.4530     7.6934   6.948 1.29e-10 ***
## x            -0.1036     0.1355  -0.764    0.446    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.98 on 140 degrees of freedom
## Multiple R-squared:  0.004157,	Adjusted R-squared:  -0.002957 
## F-statistic: 0.5844 on 1 and 140 DF,  p-value: 0.4459
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "h_lines", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "h_lines", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -38.631 -19.015   1.345  22.421  44.139 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 53.21109    7.69546   6.915 1.53e-10 ***
## x           -0.09916    0.13554  -0.732    0.466    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.98 on 140 degrees of freedom
## Multiple R-squared:  0.003809,	Adjusted R-squared:  -0.003307 
## F-statistic: 0.5353 on 1 and 140 DF,  p-value: 0.4656
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "high_lines", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "high_lines", ])
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -32.37 -24.92 -13.62  28.96  41.13 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.8088     7.6927   6.995    1e-10 ***
## x            -0.1101     0.1355  -0.812    0.418    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.97 on 140 degrees of freedom
## Multiple R-squared:  0.004693,	Adjusted R-squared:  -0.002417 
## F-statistic: 0.6601 on 1 and 140 DF,  p-value: 0.4179
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "slant_down", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "slant_down", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -47.855 -20.283  -1.849  20.947  51.612 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.8497     7.6912   7.001 9.69e-11 ***
## x            -0.1108     0.1355  -0.818    0.415    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.97 on 140 degrees of freedom
## Multiple R-squared:  0.004758,	Adjusted R-squared:  -0.002351 
## F-statistic: 0.6693 on 1 and 140 DF,  p-value: 0.4147
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "slant_up", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "slant_up", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -42.039 -22.605  -2.074  23.669  53.404 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.8126     7.6910   6.997 9.93e-11 ***
## x            -0.1102     0.1355  -0.814    0.417    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.97 on 140 degrees of freedom
## Multiple R-squared:  0.004707,	Adjusted R-squared:  -0.002402 
## F-statistic: 0.6621 on 1 and 140 DF,  p-value: 0.4172
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "v_lines", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "v_lines", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -44.605 -24.261  -1.092  18.186  51.402 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.8908     7.6903   7.008 9.38e-11 ***
## x            -0.1116     0.1354  -0.824    0.412    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.97 on 140 degrees of freedom
## Multiple R-squared:  0.004823,	Adjusted R-squared:  -0.002286 
## F-statistic: 0.6784 on 1 and 140 DF,  p-value: 0.4115
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "wide_lines", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "wide_lines", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -46.220 -23.863  -0.718  20.934  52.676 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.6349     7.6915   6.973 1.12e-10 ***
## x            -0.1069     0.1355  -0.789    0.431    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.97 on 140 degrees of freedom
## Multiple R-squared:  0.004432,	Adjusted R-squared:  -0.002679 
## F-statistic: 0.6233 on 1 and 140 DF,  p-value: 0.4312
```

```r
summary(lm(y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == "x_shape", ]))
```

```
## 
## Call:
## lm(formula = y ~ x, data = datasaurus_dozen[datasaurus_dozen$dataset == 
##     "x_shape", ])
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -45.381 -24.631  -8.142  26.292  50.807 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  53.5542     7.6889   6.965 1.17e-10 ***
## x            -0.1053     0.1354  -0.778    0.438    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 26.97 on 140 degrees of freedom
## Multiple R-squared:  0.004301,	Adjusted R-squared:  -0.002811 
## F-statistic: 0.6048 on 1 and 140 DF,  p-value: 0.4381
```

## But the plots ...


```r
ggplot(data = datasaurus_dozen, aes(x = x, y = y, color = dataset)) +
  geom_point() +
  theme(legend.position = "none") +
  facet_wrap(~dataset, ncol = 3)
```

![](2visualize_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

# How do I answer research questions with plots?
> - **Use `ggplot2`.**
> - **`ggplot2` metaphor.** Think of a `ggplot2` plot like a "map of the world" that you build one layer at a time.
> - Imagine a map of the world without land (i.e., water only).
> - Now imagine adding "layers" (e.g., continents, colors, mountains, legends). `ggplot2`'s kinda like that.

![](https://pbs.twimg.com/media/CELudTlUgAAA7a-.png)

# How do I answer research questions with plots?
> - With `ggplot2`, you build plots step-by-step, layer-by-layer. this system is based on the grammar of graphics: statistical graphics map **data** onto *perceivable* **aesthetic attributes** (e.g., position, color, shape, size, line type) of **geometric objects** (e.g., points, bars, lines).

![](images/ggplot_basic_structure.jpg)

**Source.** [**grammar of graphics**](http://vita.had.co.nz/papers/layered-grammar.html)

# How do I answer research questions with plots?
> 1. [**grammar of graphics**](http://vita.had.co.nz/papers/layered-grammar.html), a visualization philosophy
> 2. Start with `ggplot()`
> 3. Supply a dataset and aesthetic mapping, `aes()`
> 4. Add on ...
>     + **Layers**, like `geom_point()` or `geom_histogram()`
>     + **Scales**, like `scale_colour_brewer()`
>     + **Faceting Specifications**, like `facet_wrap()`
>     + **Coordinate Systems**, like `coord_flip()`
    
**Source.** [**ggplot2.tidyverse.org**](ggplot2.tidyverse.org)

# Example: Do cars with big engines use more fuel than cars with small engines?
> - **mpg dataset.** "This dataset contains a subset of the fuel economy data that the EPA makes available on [**http://fueleconomy.gov**](http://fueleconomy.gov). It contains only models which had a new release every year between 1999 and 2008 - this was used as a proxy for the popularity of the car."

**Sources.** [**R for Data Science**](http://r4ds.had.co.nz/data-visualisation.html) and `help("mpg")`


```r
mpg %>% sample_n(size = 15)
```

<div class="kable-table">

manufacturer   model                  displ   year   cyl  trans        drv    cty   hwy  fl   class      
-------------  --------------------  ------  -----  ----  -----------  ----  ----  ----  ---  -----------
lincoln        navigator 2wd            5.4   1999     8  auto(l4)     r       11    16  p    suv        
volkswagen     new beetle               2.5   2008     5  manual(m5)   f       20    28  r    subcompact 
volkswagen     jetta                    1.9   1999     4  manual(m5)   f       33    44  d    compact    
chevrolet      c1500 suburban 2wd       5.7   1999     8  auto(l4)     r       13    17  r    suv        
volkswagen     jetta                    2.0   1999     4  manual(m5)   f       21    29  r    compact    
hyundai        tiburon                  2.0   2008     4  manual(m5)   f       20    28  r    subcompact 
dodge          dakota pickup 4wd        3.7   2008     6  manual(m6)   4       15    19  r    pickup     
subaru         forester awd             2.5   2008     4  manual(m5)   4       19    25  p    suv        
toyota         corolla                  1.8   1999     4  auto(l3)     f       24    30  r    compact    
honda          civic                    1.8   2008     4  auto(l5)     f       25    36  r    subcompact 
jeep           grand cherokee 4wd       6.1   2008     8  auto(l5)     4       11    14  p    suv        
nissan         pathfinder 4wd           5.6   2008     8  auto(s5)     4       12    18  p    suv        
dodge          ram 1500 pickup 4wd      4.7   2008     8  auto(l5)     4        9    12  e    pickup     
dodge          caravan 2wd              3.0   1999     6  auto(l4)     f       17    24  r    minivan    
ford           expedition 2wd           5.4   1999     8  auto(l4)     r       11    17  r    suv        

</div>

# Example: Do cars with big engines use more fuel than cars with small engines?
> 1. Start with mapping and `aes()`
>   - **displ.** Engine displacement, in litres (bigger numbers = greater engine size)
>   - **hwy.** Highway miles per gallon (bigger numbers = using less fuel each mile)
>     + You are mapping aesthetics onto data
>     + x-axis position maps onto displ
>     + y-axis position maps onto hwy
>     + x-position and y-position are aesthetics: things that we can perceive on the graphic


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))
```

![](2visualize_files/figure-html/unnamed-chunk-9-1.png)<!-- -->

# Example: Do cars with big engines use more fuel than cars with small engines?
> 2. Add a layer, like `geom_point()`
>   - Layers determine physical representations of data

**Source.** [**A layered grammar of graphics**](http://vita.had.co.nz/papers/layered-grammar.pdf)


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()
```

![](2visualize_files/figure-html/unnamed-chunk-10-1.png)<!-- -->

# Example: Which types of cars have big engines but decent highway mpg?
> 3. Add a new aesthetic mapping, like color
>     + **class.** "type" of car
>     + Color maps onto class

**Source.** [A layered grammar of graphics](http://vita.had.co.nz/papers/layered-grammar.pdf)


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point()
```

![](2visualize_files/figure-html/unnamed-chunk-11-1.png)<!-- -->

# Example: Which types of cars use more fuel as their engines get bigger?
> 4. Add a faceting specification with `facet_wrap(facets)`
>     + **class.** "type" of car
>     + **facets.** facets = ~ "categorical variable name"
>     + This "formula" splits your plot into facets, which are subsets of data based on categorical variables (preferably)

**Source.** [Data visualization: facets](http://r4ds.had.co.nz/data-visualisation.html#facets)


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(facets = ~ class)
```

![](2visualize_files/figure-html/unnamed-chunk-12-1.png)<!-- -->

# Exercise: Play with the sleepstudy dataset that comes with `lme4`
> - **sleepstudy.** "The average reaction time per day for subjects in a sleep deprivation study. On day 0 the subjects had their normal amount of sleep. Starting that night they were restricted to 3 hours of sleep per night. The observations represent the average reaction time on a series of tests given each day to each subject."

**Source.** `help("sleepstudy")`


```r
sleepstudy %>% sample_n(size = 15)
```

<div class="kable-table">

 Reaction   Days  Subject 
---------  -----  --------
 350.7807      8  371     
 455.8643      8  337     
 297.5968      2  372     
 304.6336      5  351     
 343.2199      7  372     
 291.6112      2  337     
 229.3074      4  310     
 317.2135      5  369     
 348.7402      4  352     
 240.4730      3  370     
 273.9472      1  335     
 354.0487      9  330     
 284.5120      5  371     
 404.2601      6  337     
 285.7973      4  330     

</div>

# Exercise: Play with the sleepstudy dataset that comes with `lme4`
> - **sleepstudy.**
>     + does average reaction time change over time?
>     + does change over time depend on Subject?
>     + **hint.** `help("facet_wrap")`

**Source.** `help("sleepstudy")`

![](https://lsru.github.io/tv_course/img/01_tidyverse_data_science.png)

# See below for plot exercise solution
> - Look at this after you've tried to solve yourself


```r
ggplot(data = sleepstudy, mapping = aes(x = Days, y = Reaction)) +
  geom_point() +
  facet_wrap(facets = ~ Subject)
```

![](2visualize_files/figure-html/unnamed-chunk-14-1.png)<!-- -->

# Example: Which type of car has better mpg in the city, on average?
> - **cty.** City miles per gallon
>     + Use new x- and y-axis aesthetics with `aes()`
>     + Now x-position maps onto class
>     + And y-position maps onto cty


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty))
```

![](2visualize_files/figure-html/unnamed-chunk-15-1.png)<!-- -->

# Which type of car has better mpg in the city, on average?
> - Add a boxplot layer
>     + Boxplots are a complex layer
>     + e.g., They require statistics like fences, hinges, and outliers in addition to the shapes we see

**Source.** [A layered grammar of graphics](http://vita.had.co.nz/papers/layered-grammar.pdf)


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  geom_boxplot()
```

![](2visualize_files/figure-html/unnamed-chunk-16-1.png)<!-- -->

# Which type of car has better mpg in the city, on average?
> - Add a statistical summary layer
>     + Normative bars representing means + 95% confidence intervals
>     + `stat_summary()`: "Summarise y values at unique/binned x"

**Sources.** `help("stat_summary")`


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal)
```

![](2visualize_files/figure-html/unnamed-chunk-17-1.png)<!-- -->

# Which type of car has better mpg in the city, on average?
> - Add a statistical summary layer
>     + Normative bars representing means + 95% confidence intervals
>     + `stat_summary()`: "Summarise y values at unique/binned x"
>     + `mean_cl_normal()`: "... computes 3 summary variables: the sample mean and lower and upper Gaussian confidence limits based on the t-distribution."

**Sources.** `help("stat_summary")` and `help("mean_cl_normal")`


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal) +
  stat_summary(geom = "errorbar", fun.data = mean_cl_normal, width = 0)
```

![](2visualize_files/figure-html/unnamed-chunk-18-1.png)<!-- -->

# Which type of car has better mpg in the city, on average?
> - **cty.** City miles per gallon  
> - Standard bars representing means + 95% confidence intervals  
>   + `stat_summary()`: "Summarise y values at unique/binned x"  
>   + `mean_cl_normal()`: "... computes 3 summary variables: the sample mean and lower and upper Gaussian   confidence limits based on the t-distribution."  
> - Fill the bars with fill = white, and color their outline with color = "black"

**Sources.** `help("stat_summary")` and `help("mean_cl_normal")`


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal, fill = "white", color = "black") +
  stat_summary(geom = "errorbar", fun.data = mean_cl_normal, width = 0)
```

![](2visualize_files/figure-html/unnamed-chunk-19-1.png)<!-- -->

# Exercise: Play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package
> - "The raw data behind the story "Some People Are Too Superstitious To Have A Baby On Friday The 13th" [**Some people aare too superstitious to have a baby on friday the 13th**](https://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/)."

**Source.** `help("US_births_2000_2014")`

# Exercise: Play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package


```r
US_births_2000_2014 %>% sample_n(size = 15)
```

<div class="kable-table">

 year   month   date_of_month  date         day_of_week    births
-----  ------  --------------  -----------  ------------  -------
 2003       4              28  2003-04-28   Mon             11666
 2004       4               1  2004-04-01   Thurs           12138
 2005       8              23  2005-08-23   Tues            13739
 2009       3              14  2009-03-14   Sat              8396
 2001       5              14  2001-05-14   Mon             11577
 2003       8               4  2003-08-04   Mon             12233
 2001       7              24  2001-07-24   Tues            13532
 2000       1              15  2000-01-15   Sat              8525
 2012       3              17  2012-03-17   Sat              8066
 2004      10               4  2004-10-04   Mon             12591
 2003       8              24  2003-08-24   Sun              7936
 2007       4               2  2007-04-02   Mon             12450
 2014      12               1  2014-12-01   Mon             12584
 2010       4               4  2010-04-04   Sun              6721
 2006       7              20  2006-07-20   Thurs           14239

</div>

# Exercise: Play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package
> - Do births change over the week?
> - Does the weekly pattern of births change over the years?

**Source.** `help("US_births_2000_2014")`

![](https://lsru.github.io/tv_course/img/01_tidyverse_data_science.png)

# See below for plot exercise solution
> - Look at this after you've tried to solve yourself


```r
ggplot(data = US_births_2000_2014, mapping = aes(x = day_of_week, y = births)) +
  geom_point() +
  facet_wrap(facets = ~ year)
```

![](2visualize_files/figure-html/unnamed-chunk-21-1.png)<!-- -->

# More Exercises
> - Datasets
>     + `data()`
>     + `data(package = "ggplot2")`
>     + `data(package = "fivethirtyeight")`
> - using datasets from above, complete these exercises:
>     + Generate a boxplot with `geom_boxplot()`
>     + Generate a scatterplot with `geom_point()`
>     + Generate bars of means with 95% confidence intervals with `stat_summary()`
>     + Generate a QQ-plot with `geom_qq()`
>     + Generate a histogram with `geom_histogram()`
>     + Facet your data with `facet_wrap()`
>     + Use the `help()` function, the [**tidyverse website**](https://www.tidyverse.org/), and Google (e.g., "qq-plot in ggplot2") to troubleshoot problems

# Resources
> - [**R for Data Science: Import, Tidy, Transform, Visualize, and Model Data**](http://r4ds.had.co.nz/). This guide is extremely useful in general, but see [**Chapter 3**](http://r4ds.had.co.nz/data-visualisation.html) for an introduction to data visualization.
> - [**tidyverse: ggplot2.**](http://ggplot2.tidyverse.org/index.html) ggplot2 bible (also check out the rest of the tidyverse website)
> - [**R Base Graphics: An Idiot's Guide.**](http://rpubs.com/SusanEJohnston/7953) if you want to plot with Base graphics like an R hipster (a hipstR ...) here's a jumping off point


