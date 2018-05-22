---
title: "day 2 visualize"
date: "05/22/2018"
output: 
  html_document: 
    keep_md: yes
    df_print: kable
---

# install and/or load packages for this session
- `install.packages()`: "Download and install packages from CRAN-like repositories or from local files."  
- `library()`: loads your package you installed  
- **best practice note.** `install.packages()` downloads files from the internet, so it's "polite" to "comment out" (# = comment) this code before you share it with people so they don't download files they don't really want by accident.  

# install and/or load packages for this session


```r
# install.packages("tidyverse")
# install.packages("psych")
# install.packages("knitr")
# install.packages("lme4")
# install.packages("fivethirtyeight")

library(tidyverse)
library(knitr)
library(psych)
library(lme4)
library(fivethirtyeight)
```

# how do answer research questions with plots?
- **use ggplot2.**
- **ggplot2 metaphor.** think of a ggplot2 plot like a "map of the world" that you build one layer at a time.
- imagine a map of the world without land (i.e., water only).
- now imagine adding "layers" (e.g., continents, colors, mountains, legends). ggplot2's kinda like that.

![](https://pbs.twimg.com/media/CELudTlUgAAA7a-.png)

# how do answer research questions with plots?
> 1. [**grammar of graphics**](http://vita.had.co.nz/papers/layered-grammar.html), a visualization philosophy
> 2. start with `ggplot()`
> 3. supply a dataset and aesthetic mapping, `aes()`
> 4. add on ...
    + **layers**, like `geom_point()` or `geom_histogram()`
    + **scales**, like `scale_colour_brewer()`
    + **faceting specifications**, like `facet_wrap()`
    + **coordinate systems**, like `coord_flip()`
    
**source.** [**ggplot2.tidyverse.org**](ggplot2.tidyverse.org)

# example: do cars with big engines use more fuel than cars with small engines?
> - **mpg dataset.** "This dataset contains a subset of the fuel economy data that the EPA makes available on [**http://fueleconomy.gov**](http://fueleconomy.gov). It contains only models which had a new release every year between 1999 and 2008 - this was used as a proxy for the popularity of the car."

**sources.** [**R for Data Science**](http://r4ds.had.co.nz/data-visualisation.html) and `help("mpg")`


```r
mpg %>% sample_n(size = 15)
```

<div class="kable-table">

manufacturer   model                  displ   year   cyl  trans        drv    cty   hwy  fl   class      
-------------  --------------------  ------  -----  ----  -----------  ----  ----  ----  ---  -----------
toyota         toyota tacoma 4wd        2.7   1999     4  auto(l4)     4       16    20  r    pickup     
audi           a6 quattro               2.8   1999     6  auto(l5)     4       15    24  p    midsize    
subaru         impreza awd              2.5   2008     4  auto(s4)     4       20    27  r    compact    
dodge          ram 1500 pickup 4wd      5.9   1999     8  auto(l4)     4       11    15  r    pickup     
audi           a4 quattro               1.8   1999     4  manual(m5)   4       18    26  p    compact    
ford           f150 pickup 4wd          4.6   1999     8  auto(l4)     4       13    16  r    pickup     
chevrolet      corvette                 6.2   2008     8  auto(s6)     r       15    25  p    2seater    
pontiac        grand prix               3.8   1999     6  auto(l4)     f       17    27  r    midsize    
pontiac        grand prix               3.8   1999     6  auto(l4)     f       16    26  p    midsize    
hyundai        tiburon                  2.7   2008     6  auto(l4)     f       17    24  r    subcompact 
dodge          ram 1500 pickup 4wd      4.7   2008     8  auto(l5)     4       13    17  r    pickup     
volkswagen     jetta                    2.5   2008     5  manual(m5)   f       21    29  r    compact    
dodge          ram 1500 pickup 4wd      5.2   1999     8  manual(m5)   4       11    16  r    pickup     
lincoln        navigator 2wd            5.4   1999     8  auto(l4)     r       11    16  p    suv        
land rover     range rover              4.0   1999     8  auto(l4)     4       11    15  p    suv        

</div>

# example: do cars with big engines use more fuel than cars with small engines?
> 1. start with mapping and `aes()`
    + **displ.** engine displacement, in litres (bigger numbers = greater engine size)
    + **hwy.** highway miles per gallon (bigger numbers = using less fuel each mile)
    + you are mapping aesthetics onto data
    + x-axis position maps onto displ
    + y-axis position maps onto hwy
    + x-position and y-position are aesthetics: things that we can perceive on the graphic


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))
```

![](visualize_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

# example: do cars with big engines use more fuel than cars with small engines?
> 2. add a layer, like `geom_point()`
      + layers determine physical representations of data

**source.** [**A layered grammar of graphics**](http://vita.had.co.nz/papers/layered-grammar.pdf)


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()
```

![](visualize_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

# example: what types have cars have big engines but decent highway mpg?
> 3. add a new aesthetic mapping, like color
      + **class.** "type" of car
      + color maps onto class

**source.** [A layered grammar of graphics](http://vita.had.co.nz/papers/layered-grammar.pdf)


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point()
```

![](visualize_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

# which type of car has better mpg in the city?
> - **cty.** city miles per gallon
    + use new x- and y-axis aesthetics with `aes()`
    + now x-position maps onto class
    + and y-position maps onto cty


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty))
```

![](visualize_files/figure-html/unnamed-chunk-6-1.png)<!-- -->

# which type of car has better mpg in the city?
> - add a boxplot layer
    + boxplots are a complex layer
    + e.g., they require statistics like fences, hinges, and outliers in addition to the shapes we see

**source.** [A layered grammar of graphics](http://vita.had.co.nz/papers/layered-grammar.pdf)


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  geom_boxplot()
```

![](visualize_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

# which type of car has better mpg in the city?
> - add a statistical summary layer
    + normative bars representing means + 95% confidence intervals
    + `stat_summary()`: "Summarise y values at unique/binned x"
    + `mean_cl_normal()`: "... computes 3 summary variables: the sample mean and lower and upper Gaussian confidence limits based on the t-distribution."

**sources.** `help("stat_summary")` and `help("mean_cl_normal")`


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal) +
  stat_summary(geom = "errorbar", fun.data = mean_cl_normal, width = 0)
```

![](visualize_files/figure-html/unnamed-chunk-8-1.png)<!-- -->

# which type of car has better mpg in the city?
> - **cty.** city miles per gallon  
> - standard bars representing means + 95% confidence intervals  
> - `stat_summary()`: "Summarise y values at unique/binned x"  
> - `mean_cl_normal()`: "... computes 3 summary variables: the sample mean and lower and upper Gaussian   confidence limits based on the t-distribution."  
> - fill the bars with fill = white, and color their outline with color = "black"

**sources.** `help("stat_summary")` and `help("mean_cl_normal")`


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal, fill = "white", color = "black") +
  stat_summary(geom = "errorbar", fun.data = mean_cl_normal, width = 0)
```

![](visualize_files/figure-html/unnamed-chunk-9-1.png)<!-- -->

# exercise: play with the sleepstudy dataset that comes with `lme4`
> - **sleepstudy.** "The average reaction time per day for subjects in a sleep deprivation study. On day 0 the subjects had their normal amount of sleep. Starting that night they were restricted to 3 hours of sleep per night. The observations represent the average reaction time on a series of tests given each day to each subject."

**source.** `help(sleepstudy)`


```r
sleepstudy %>% sample_n(size = 15)
```

<div class="kable-table">

       Reaction   Days  Subject 
----  ---------  -----  --------
167    259.2658      6  371     
33     283.8565      2  330     
79     335.7469      8  334     
50     371.5811      9  331     
6      414.6901      5  308     
78     331.5229      7  334     
23     234.3200      2  310     
168    304.6306      7  371     
90     237.2466      9  335     
54     309.7688      3  332     
173    297.5968      2  372     
134    346.8555      3  352     
1      249.5600      0  308     
16     215.9618      5  309     
135    348.7402      4  352     

</div>

# exercise: play with the sleepstudy dataset that comes with `lme4`
> - **sleepstudy.**
    + does average reaction time change over time?
    + does change over time depend on Subject?
    + **hint.** `help(facet_wrap)`

**source.** `help(sleepstudy)`

![](https://lsru.github.io/tv_course/img/01_tidyverse_data_science.png)

# see below for plot exercise solution
> - look at this after you've tried to solve yourself


```r
ggplot(data = sleepstudy, mapping = aes(x = Days, y = Reaction)) +
  geom_point() +
  scale_x_continuous(breaks = seq(from = 0, to = 9, by = 1)) +
  facet_wrap(facets = ~ Subject)
```

![](visualize_files/figure-html/unnamed-chunk-11-1.png)<!-- -->

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package
> - "The raw data behind the story "Some People Are Too Superstitious To Have A Baby On Friday The 13th" [**Some people aare too superstitious to have a baby on friday the 13th**](https://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/)."

**source.** `help(US_births_2000_2014)`

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package


```r
US_births_2000_2014 %>% sample_n(size = 15)
```

<div class="kable-table">

 year   month   date_of_month  date         day_of_week    births
-----  ------  --------------  -----------  ------------  -------
 2010      10              11  2010-10-11   Mon             12134
 2012       9               5  2012-09-05   Wed             13991
 2014      12              12  2014-12-12   Fri             12001
 2008       8              26  2008-08-26   Tues            14260
 2009       9               4  2009-09-04   Fri             13622
 2008      12               7  2008-12-07   Sun              7282
 2011       9              24  2011-09-24   Sat              8496
 2010      12              24  2010-12-24   Fri              7532
 2008       1               6  2008-01-06   Sun              7610
 2005      12              11  2005-12-11   Sun              7368
 2008       6               3  2008-06-03   Tues            13459
 2001       4              28  2001-04-28   Sat              8574
 2004       4              10  2004-04-10   Sat              8148
 2007       3               7  2007-03-07   Wed             13520
 2007      12              17  2007-12-17   Mon             13455

</div>

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package
> - do births change over the week?
> - does the weekly pattern of births change over the years?

**source.** `help(US_births_2000_2014)`

![](https://lsru.github.io/tv_course/img/01_tidyverse_data_science.png)

# see below for plot exercise solution
> - look at this after you've tried to solve yourself


```r
ggplot(data = US_births_2000_2014, mapping = aes(x = day_of_week, y = births)) +
  geom_point() +
  facet_wrap(facets = ~ year)
```

![](visualize_files/figure-html/unnamed-chunk-13-1.png)<!-- -->

# resources
> - [**R for Data Science: Import, Tidy, Transform, Visualize, and Model Data**](http://r4ds.had.co.nz/). This guide is extremely useful in general, but see [**Chapter 3**](http://r4ds.had.co.nz/data-visualisation.html) for an introduction to data visualization.
> - [**tidyverse: ggplot2.**](http://ggplot2.tidyverse.org/index.html) ggplot2 bible (also check out the rest of the tidyverse website)
> - [**R Base Graphics: An Idiot's Guide.**](http://rpubs.com/SusanEJohnston/7953) if you want to plot with Base graphics like an R hipster (a hipstR ...) here's a jumping off point


