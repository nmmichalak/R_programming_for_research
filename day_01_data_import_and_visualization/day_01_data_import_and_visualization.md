# Day 1. Data import and Data Visualization
Nicholas Michalak  
6/25/2017  

# install prerequisite packages


```r
# character vector of packages you'll need for your whole analysis
needed_packages <- c("tidyverse", "haven", "readxl")

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
## [[1]]
##  [1] "dplyr"     "purrr"     "readr"     "tidyr"     "tibble"   
##  [6] "ggplot2"   "tidyverse" "stats"     "graphics"  "grDevices"
## [11] "utils"     "datasets"  "methods"   "base"     
## 
## [[2]]
##  [1] "haven"     "dplyr"     "purrr"     "readr"     "tidyr"    
##  [6] "tibble"    "ggplot2"   "tidyverse" "stats"     "graphics" 
## [11] "grDevices" "utils"     "datasets"  "methods"   "base"     
## 
## [[3]]
##  [1] "readxl"    "haven"     "dplyr"     "purrr"     "readr"    
##  [6] "tidyr"     "tibble"    "ggplot2"   "tidyverse" "stats"    
## [11] "graphics"  "grDevices" "utils"     "datasets"  "methods"  
## [16] "base"
```

# psychology example 1

> (Adapted from Maxwell & Delaney, 1990, p 300, quest #9) A clinical psychologist wants to compare three types of therapy for snake phobia. However, she does not believe that one type of therapy is necessarily best for everyone; the best therapy may depend on the severity level of the client's phobia. Undergraduate students enrolled in an introductory psychology course were given a Fear Inventory to screen out subjects showing no fear of snakes. Those displaying some degree of snake phobia were classified as either mildly or severely phobic. Subjects were then randomly assigned to one of three treatment conditions: systematic desensitization, implosive therapy, or insight therapy. The following data are from a well-accepted phobia scale (higher scores indicate less phobia). You don't need to know anything about the conceptual differences between these three therapies or the phobia scale to answer the following questions. To save time, no need to check assumptions for this problem set but don't skip this step when you analyze real data in your research.


```r
# source example data
source("example_tidy_data/snake_phobia.R")

# view descriptives for snake therapy data
snk_thrpy_desc
```

```
## # A tibble: 6 x 8
## # Groups:   therapy [?]
##           therapy severity n_cell mean_phobia sd_phobia se_phobia   t_crit
##             <chr>    <chr>  <int>       <dbl>     <dbl>     <dbl>    <dbl>
## 1 Desensitization     Mild      8      13.250  1.669046 0.5900968 2.364624
## 2 Desensitization   Severe      8      11.125  3.181981 1.1250000 2.364624
## 3       Implosion     Mild      8      15.375  1.407886 0.4977629 2.364624
## 4       Implosion   Severe      8       6.500  3.891382 1.3758114 2.364624
## 5         Insight     Mild      8      12.875  1.642081 0.5805632 2.364624
## 6         Insight   Severe      8       9.250  3.370036 1.1914877 2.364624
## # ... with 1 more variables: moe_phobia <dbl>
```

## plot means from table of descriptives


```r
ggplot(data = snk_thrpy_desc, aes(x = therapy, y = mean_phobia, fill = severity)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.9)) +
  geom_errorbar(mapping = aes(ymin = mean_phobia - moe_phobia, ymax = mean_phobia + moe_phobia), position = position_dodge(width = 0.9), width = 0.1)
```

![](day_01_data_import_and_visualization_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

## plot means from raw data


```r
ggplot(data = snakes_therapy, aes(x = therapy, y = phobia, fill = severity)) +
  stat_summary(fun.data = "mean_cl_normal", geom = "bar", position = position_dodge(width = 0.9)) +
  stat_summary(fun.data = "mean_cl_normal", geom = "errorbar", position = position_dodge(width = 0.9), width = 0.1)
```

![](day_01_data_import_and_visualization_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

# psychology example 2

> adapted from figure 1 from Tybur et al. (2016)

* The scatterplot displays the relationship between national parasite stress and traditionalism (r = 0.70). Each data point [labeled with a two-letter country code (abbreviations defined in Table 1)] represents a nation's mean traditionalism, controlling for sample demographic characteristics (age and sex).
* To facilitate visual interpretation of results (Figs. 1–3), we added a constant to each nation’s parasite stress score so that the lowest scoring country (Canada) had a value of zero.


```r
# source example data
source("example_tidy_data/tybur_et_al_fig_1.R")
```

```
## Warning: Column `country` has different attributes on LHS and RHS of join
```

```r
# view data for plot
tybur_et_al_fig1
```

```
## # A tibble: 30 x 4
## # Groups:   country [30]
##        country histpath traditionalism hist_path_rscld
##         <fctr>    <dbl>          <dbl>           <dbl>
##  1      Israel     0.52       2.790726            1.83
##  2   Singapore     0.31       2.715984            1.62
##  3     Belgium    -1.00       1.926433            0.31
##  4      Serbia    -0.23       1.890731            1.08
##  5       Spain    -0.05       1.632627            1.26
##  6   Australia    -0.25       1.944385            1.06
##  7    Slovakia    -1.00       2.755881            0.31
##  8      France    -0.46       1.972309            0.85
##  9 New Zealand    -0.98       2.110723            0.33
## 10     Denmark    -0.98       1.352026            0.33
## # ... with 20 more rows
```

## scatterplot with 95% confidence ribbons country labels


```r
ggplot(data = tybur_et_al_fig1, aes(x = hist_path_rscld, y = traditionalism, label = country)) +
  geom_point(size = 3, alpha = 0.4, color = "blue") +
  geom_smooth(method = "lm", color = "blue") +
  scale_x_continuous(breaks = seq(0, 2.5, 0.25), limits = c(0, 2.5)) +
  scale_y_continuous(breaks = seq(0, 3.5, 0.25), limits = c(0, 3.5)) +
  geom_text(check_overlap = TRUE, nudge_x = 0.025, nudge_y = -0.075) +
  labs(x = "Parasite Stress", y = "Traditionalism") +
  theme_minimal() +
  theme(axis.title.x = element_text(size = 14),
        axis.text.x = element_text(size = 14),
        axis.title.y = element_text(size = 14),
        axis.text.y = element_text(size = 14))
```

![](day_01_data_import_and_visualization_files/figure-html/unnamed-chunk-6-1.png)<!-- -->

## compare this to published figure

![Figure 1.](example_tidy_data/tybur_et_all_figures/tybur_et_al_figure_1.jpg)

# import data

## csv


```r
(murray_schaller <- "example_tidy_data/tybur_et_al_data/tabula-murray_schaller_2010_journal_of_cross_cultural_psychology.csv" %>%
  read_csv())
```

```
## Parsed with column specification:
## cols(
##   Region = col_character(),
##   `9 Items` = col_double(),
##   `7 Items` = col_double()
## )
```

```
## # A tibble: 230 x 3
##         Region `9 Items` `7 Items`
##          <chr>     <dbl>     <dbl>
##  1 Afghanistan      0.23      0.15
##  2     Albania     -0.25      0.03
##  3     Algeria      0.47      0.63
##  4     Andorra     -1.08     -1.05
##  5      Angola      0.95      0.93
##  6    Anguilla        NA     -0.27
##  7     Antigua        NA     -0.27
##  8   Argentina     -0.12      0.03
##  9     Armenia      0.10      0.15
## 10       Aruba        NA     -0.28
## # ... with 220 more rows
```

## tsv


```r
(add_health_tsv <- "example_tidy_data/ICPSR_21600/DS0001/21600-0001-Data.tsv" %>%
  read_tsv(.))
```

```
## Parsed with column specification:
## cols(
##   .default = col_integer(),
##   H1GH50 = col_character(),
##   H1HR7A = col_double(),
##   H1HR7B = col_double()
## )
```

```
## See spec(...) for full column specifications.
```

```
## Warning in rbind(names(probs), probs_f): number of columns of result is not
## a multiple of vector length (arg 1)
```

```
## Warning: 2 parsing failures.
## row # A tibble: 2 x 5 col     row   col               expected actual expected   <int> <chr>                  <chr>  <chr> actual 1  3213 H1EE7 no trailing characters     .1 file 2  3244 H1EE4 no trailing characters     .1 row # ... with 1 more variables: file <chr>
```

```
## # A tibble: 6,504 x 2,794
##         AID IMONTH  IDAY IYEAR SCH_YR BIO_SEX VERSION SMP01 SMP03 H1GI1M
##       <int>  <int> <int> <int>  <int>   <int>   <int> <int> <int>  <int>
##  1 57100270      6    23    95      1       2       4     0     1     10
##  2 57101310      5     5    95      1       2       1     1     0     11
##  3 57103171      6    27    95      0       1       4     1     0     10
##  4 57103869      7    14    95      0       1       4     1     0      1
##  5 57104553      7    14    95      1       2       4     1     0      6
##  6 57104649      6    12    95      1       1       3     0     1     12
##  7 57104676      5    31    95      1       1       3     1     0     10
##  8 57109625      6     7    95      1       1       3     1     0      3
##  9 57110897      6    27    95      0       1       4     1     0      9
## 10 57111071      8     3    95      0       1       5     1     0      6
## # ... with 6,494 more rows, and 2784 more variables: H1GI1Y <int>,
## #   H1GI2 <int>, H1GI3 <int>, H1GI4 <int>, H1GI5A <int>, H1GI5B <int>,
## #   H1GI5C <int>, H1GI5D <int>, H1GI5E <int>, H1GI5F <int>, H1GI6A <int>,
## #   H1GI6B <int>, H1GI6C <int>, H1GI6D <int>, H1GI6E <int>, H1GI7A <int>,
## #   H1GI7B <int>, H1GI7C <int>, H1GI7D <int>, H1GI7E <int>, H1GI7F <int>,
## #   H1GI7G <int>, H1GI8 <int>, H1GI9 <int>, H1GI10 <int>, H1GI11 <int>,
## #   H1GI12 <int>, H1GI13M <int>, H1GI13Y <int>, H1GI14 <int>,
## #   H1GI15 <int>, H1GI16M <int>, H1GI16Y <int>, H1GI18 <int>,
## #   H1GI19 <int>, H1GI20 <int>, H1GI21 <int>, H1DA1 <int>, H1DA2 <int>,
## #   H1DA3 <int>, H1DA4 <int>, H1DA5 <int>, H1DA6 <int>, H1DA7 <int>,
## #   H1DA8 <int>, H1DA9 <int>, H1DA10 <int>, H1DA11 <int>, H1GH1 <int>,
## #   H1GH1A <int>, H1GH2 <int>, H1GH3 <int>, H1GH4 <int>, H1GH5 <int>,
## #   H1GH6 <int>, H1GH7 <int>, H1GH8 <int>, H1GH9 <int>, H1GH10 <int>,
## #   H1GH11 <int>, H1GH12 <int>, H1GH13 <int>, H1GH14 <int>, H1GH15 <int>,
## #   H1GH16 <int>, H1GH17 <int>, H1GH18 <int>, H1GH19 <int>, H1GH20 <int>,
## #   H1GH21 <int>, H1GH22 <int>, H1GH23A <int>, H1GH23B <int>,
## #   H1GH23C <int>, H1GH23D <int>, H1GH23E <int>, H1GH23F <int>,
## #   H1GH23G <int>, H1GH23H <int>, H1GH23I <int>, H1GH23J <int>,
## #   H1GH24 <int>, H1GH25 <int>, H1GH26 <int>, H1GH27A <int>,
## #   H1GH27B <int>, H1GH27C <int>, H1GH27D <int>, H1GH27E <int>,
## #   H1GH27F <int>, H1GH27G <int>, H1GH27H <int>, H1GH27I <int>,
## #   H1GH27J <int>, H1GH28 <int>, H1GH29 <int>, H1GH30A <int>,
## #   H1GH30B <int>, H1GH30C <int>, H1GH30D <int>, ...
```

## Excel / xls / xlsx


```r
# note: can also use read_excel()
(tybur_et_al_sO1 <- "example_tidy_data/tybur_et_al_data/pnas.1607398113.sd01.xlsx" %>%
  read_xlsx())
```

```
## # A tibble: 11,501 x 33
##    nation   sex   age  sd01  sd02  sd03  sd04 trad1 trad2 trad3 trad4
##     <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
##  1      1     1    30     6     1     6     1     1     1     6     1
##  2      1     1    22     6     1     5     1     1     1     6     1
##  3      1     2    36     5     1     6     1     1     1     6     1
##  4      1     2    24     6     1     6     1     1     1     5     1
##  5      1     2    39     6     1     6     1     2     1     6     1
##  6      1     2    25     5     1     6     1     1     1     6     2
##  7      1     1    25     4     1     5     1     1     1     6     2
##  8      1     1    37     5     1     4     1     1     1     6     1
##  9      1     1    26     6     3     1     1     1     1     5     1
## 10      1     2    26     6     1     6     1     2     1     6     1
## # ... with 11,491 more rows, and 22 more variables: trad5 <dbl>,
## #   trad6 <dbl>, DS1 <dbl>, DS2 <dbl>, DS3 <dbl>, DS4 <dbl>, DS5 <dbl>,
## #   DS6 <dbl>, DS7 <dbl>, sd01r <dbl>, sd03r <dbl>, trad3r <dbl>,
## #   trad5r <dbl>, trad6r <dbl>, HistPath <dbl>,
## #   WHO2012infectiousparasiticdiseasedeathsper1Kpopn <dbl>,
## #   NonzoonoticParasitePrevalence <dbl>, ZoonoticParasitePrevalence <dbl>,
## #   Parasite_PCA <dbl>, SDO <dbl>, Traditionalim <dbl>, DS <dbl>
```

## SPSS / sav


```r
# note: can also use read_spss()
(add_health_sav <- "example_tidy_data/ICPSR_21600/DS0001/21600-0001-Data.sav" %>%
  read_sav(.))
```

```
## # A tibble: 6,504 x 2,794
##         AID    IMONTH  IDAY     IYEAR    SCH_YR   BIO_SEX   VERSION
##       <chr> <dbl+lbl> <dbl> <dbl+lbl> <dbl+lbl> <dbl+lbl> <chr+lbl>
##  1 57100270         6    23        95         1         2         4
##  2 57101310         5     5        95         1         2         1
##  3 57103171         6    27        95         0         1         4
##  4 57103869         7    14        95         0         1         4
##  5 57104553         7    14        95         1         2         4
##  6 57104649         6    12        95         1         1         3
##  7 57104676         5    31        95         1         1         3
##  8 57109625         6     7        95         1         1         3
##  9 57110897         6    27        95         0         1         4
## 10 57111071         8     3        95         0         1         5
## # ... with 6,494 more rows, and 2787 more variables: SMP01 <dbl+lbl>,
## #   SMP03 <dbl+lbl>, H1GI1M <dbl+lbl>, H1GI1Y <dbl+lbl>, H1GI2 <dbl+lbl>,
## #   H1GI3 <dbl+lbl>, H1GI4 <dbl+lbl>, H1GI5A <dbl+lbl>, H1GI5B <dbl+lbl>,
## #   H1GI5C <dbl+lbl>, H1GI5D <dbl+lbl>, H1GI5E <dbl+lbl>,
## #   H1GI5F <dbl+lbl>, H1GI6A <dbl+lbl>, H1GI6B <dbl+lbl>,
## #   H1GI6C <dbl+lbl>, H1GI6D <dbl+lbl>, H1GI6E <dbl+lbl>,
## #   H1GI7A <dbl+lbl>, H1GI7B <dbl+lbl>, H1GI7C <dbl+lbl>,
## #   H1GI7D <dbl+lbl>, H1GI7E <dbl+lbl>, H1GI7F <dbl+lbl>,
## #   H1GI7G <dbl+lbl>, H1GI8 <dbl+lbl>, H1GI9 <dbl+lbl>, H1GI10 <dbl+lbl>,
## #   H1GI11 <dbl+lbl>, H1GI12 <dbl+lbl>, H1GI13M <dbl+lbl>,
## #   H1GI13Y <dbl+lbl>, H1GI14 <dbl+lbl>, H1GI15 <dbl+lbl>,
## #   H1GI16M <dbl+lbl>, H1GI16Y <dbl+lbl>, H1GI18 <dbl+lbl>,
## #   H1GI19 <dbl+lbl>, H1GI20 <dbl+lbl>, H1GI21 <dbl+lbl>, H1DA1 <dbl+lbl>,
## #   H1DA2 <dbl+lbl>, H1DA3 <dbl+lbl>, H1DA4 <dbl+lbl>, H1DA5 <dbl+lbl>,
## #   H1DA6 <dbl+lbl>, H1DA7 <dbl+lbl>, H1DA8 <dbl+lbl>, H1DA9 <dbl+lbl>,
## #   H1DA10 <dbl+lbl>, H1DA11 <dbl+lbl>, H1GH1 <dbl+lbl>, H1GH1A <dbl+lbl>,
## #   H1GH2 <dbl+lbl>, H1GH3 <dbl+lbl>, H1GH4 <dbl+lbl>, H1GH5 <dbl+lbl>,
## #   H1GH6 <dbl+lbl>, H1GH7 <dbl+lbl>, H1GH8 <dbl+lbl>, H1GH9 <dbl+lbl>,
## #   H1GH10 <dbl+lbl>, H1GH11 <dbl+lbl>, H1GH12 <dbl+lbl>,
## #   H1GH13 <dbl+lbl>, H1GH14 <dbl+lbl>, H1GH15 <dbl+lbl>,
## #   H1GH16 <dbl+lbl>, H1GH17 <dbl+lbl>, H1GH18 <dbl+lbl>,
## #   H1GH19 <dbl+lbl>, H1GH20 <dbl+lbl>, H1GH21 <dbl+lbl>,
## #   H1GH22 <dbl+lbl>, H1GH23A <dbl+lbl>, H1GH23B <dbl+lbl>,
## #   H1GH23C <dbl+lbl>, H1GH23D <dbl+lbl>, H1GH23E <dbl+lbl>,
## #   H1GH23F <dbl+lbl>, H1GH23G <dbl+lbl>, H1GH23H <dbl+lbl>,
## #   H1GH23I <dbl+lbl>, H1GH23J <dbl+lbl>, H1GH24 <dbl+lbl>,
## #   H1GH25 <dbl+lbl>, H1GH26 <dbl+lbl>, H1GH27A <dbl+lbl>,
## #   H1GH27B <dbl+lbl>, H1GH27C <dbl+lbl>, H1GH27D <dbl+lbl>,
## #   H1GH27E <dbl+lbl>, H1GH27F <dbl+lbl>, H1GH27G <dbl+lbl>,
## #   H1GH27H <dbl+lbl>, H1GH27I <dbl+lbl>, H1GH27J <dbl+lbl>,
## #   H1GH28 <dbl+lbl>, H1GH29 <dbl+lbl>, H1GH30A <dbl+lbl>, ...
```

## Stata / dta


```r
# note: can also use read_stata()
(add_health_dta <- "example_tidy_data/ICPSR_21600/DS0001/21600-0001-Data.dta" %>%
  read_dta(.))
```

```
## # A tibble: 6,504 x 2,794
##         AID    IMONTH  IDAY     IYEAR    SCH_YR   BIO_SEX VERSION
##       <chr> <dbl+lbl> <dbl> <dbl+lbl> <dbl+lbl> <dbl+lbl>   <chr>
##  1 57100270         6    23        95         1         2       4
##  2 57101310         5     5        95         1         2       1
##  3 57103171         6    27        95         0         1       4
##  4 57103869         7    14        95         0         1       4
##  5 57104553         7    14        95         1         2       4
##  6 57104649         6    12        95         1         1       3
##  7 57104676         5    31        95         1         1       3
##  8 57109625         6     7        95         1         1       3
##  9 57110897         6    27        95         0         1       4
## 10 57111071         8     3        95         0         1       5
## # ... with 6,494 more rows, and 2787 more variables: SMP01 <dbl+lbl>,
## #   SMP03 <dbl+lbl>, H1GI1M <dbl+lbl>, H1GI1Y <dbl+lbl>, H1GI2 <dbl+lbl>,
## #   H1GI3 <dbl+lbl>, H1GI4 <dbl+lbl>, H1GI5A <dbl+lbl>, H1GI5B <dbl+lbl>,
## #   H1GI5C <dbl+lbl>, H1GI5D <dbl+lbl>, H1GI5E <dbl+lbl>,
## #   H1GI5F <dbl+lbl>, H1GI6A <dbl+lbl>, H1GI6B <dbl+lbl>,
## #   H1GI6C <dbl+lbl>, H1GI6D <dbl+lbl>, H1GI6E <dbl+lbl>,
## #   H1GI7A <dbl+lbl>, H1GI7B <dbl+lbl>, H1GI7C <dbl+lbl>,
## #   H1GI7D <dbl+lbl>, H1GI7E <dbl+lbl>, H1GI7F <dbl+lbl>,
## #   H1GI7G <dbl+lbl>, H1GI8 <dbl+lbl>, H1GI9 <dbl+lbl>, H1GI10 <dbl+lbl>,
## #   H1GI11 <dbl+lbl>, H1GI12 <dbl+lbl>, H1GI13M <dbl+lbl>,
## #   H1GI13Y <dbl+lbl>, H1GI14 <dbl+lbl>, H1GI15 <dbl+lbl>,
## #   H1GI16M <dbl+lbl>, H1GI16Y <dbl+lbl>, H1GI18 <dbl+lbl>,
## #   H1GI19 <dbl+lbl>, H1GI20 <dbl+lbl>, H1GI21 <dbl+lbl>, H1DA1 <dbl+lbl>,
## #   H1DA2 <dbl+lbl>, H1DA3 <dbl+lbl>, H1DA4 <dbl+lbl>, H1DA5 <dbl+lbl>,
## #   H1DA6 <dbl+lbl>, H1DA7 <dbl+lbl>, H1DA8 <dbl+lbl>, H1DA9 <dbl+lbl>,
## #   H1DA10 <dbl+lbl>, H1DA11 <dbl+lbl>, H1GH1 <dbl+lbl>, H1GH1A <dbl+lbl>,
## #   H1GH2 <dbl+lbl>, H1GH3 <dbl+lbl>, H1GH4 <dbl+lbl>, H1GH5 <dbl+lbl>,
## #   H1GH6 <dbl+lbl>, H1GH7 <dbl+lbl>, H1GH8 <dbl+lbl>, H1GH9 <dbl+lbl>,
## #   H1GH10 <dbl+lbl>, H1GH11 <dbl+lbl>, H1GH12 <dbl+lbl>,
## #   H1GH13 <dbl+lbl>, H1GH14 <dbl+lbl>, H1GH15 <dbl+lbl>,
## #   H1GH16 <dbl+lbl>, H1GH17 <dbl+lbl>, H1GH18 <dbl+lbl>,
## #   H1GH19 <dbl+lbl>, H1GH20 <dbl+lbl>, H1GH21 <dbl+lbl>,
## #   H1GH22 <dbl+lbl>, H1GH23A <dbl+lbl>, H1GH23B <dbl+lbl>,
## #   H1GH23C <dbl+lbl>, H1GH23D <dbl+lbl>, H1GH23E <dbl+lbl>,
## #   H1GH23F <dbl+lbl>, H1GH23G <dbl+lbl>, H1GH23H <dbl+lbl>,
## #   H1GH23I <dbl+lbl>, H1GH23J <dbl+lbl>, H1GH24 <dbl+lbl>,
## #   H1GH25 <dbl+lbl>, H1GH26 <dbl+lbl>, H1GH27A <dbl+lbl>,
## #   H1GH27B <dbl+lbl>, H1GH27C <dbl+lbl>, H1GH27D <dbl+lbl>,
## #   H1GH27E <dbl+lbl>, H1GH27F <dbl+lbl>, H1GH27G <dbl+lbl>,
## #   H1GH27H <dbl+lbl>, H1GH27I <dbl+lbl>, H1GH27J <dbl+lbl>,
## #   H1GH28 <dbl+lbl>, H1GH29 <dbl+lbl>, H1GH30A <dbl+lbl>, ...
```

