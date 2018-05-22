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
1. [**grammar of graphics**](http://vita.had.co.nz/papers/layered-grammar.html), a visualization philosophy
2. start with `ggplot()`
3. supply a dataset and aesthetic mapping, `aes()`
4. add on ...
    + **layers**, like `geom_point()` or `geom_histogram()`
    + **scales**, like `scale_colour_brewer()`
    + **faceting specifications**, like `facet_wrap()`
    + **coordinate systems**, like `coord_flip()`
    
**source.** [**ggplot2.tidyverse.org**](ggplot2.tidyverse.org)

# example: do cars with big engines use more fuel than cars with small engines?
- **mpg dataset.** "This dataset contains a subset of the fuel economy data that the EPA makes available on [**http://fueleconomy.gov**](http://fueleconomy.gov). It contains only models which had a new release every year between 1999 and 2008 - this was used as a proxy for the popularity of the car."

**sources.** [**R for Data Science**](http://r4ds.had.co.nz/data-visualisation.html) and `help("mpg")`

# example: do cars with big engines use more fuel than cars with small engines?


```r
mpg
```

<div class="kable-table">

manufacturer   model                     displ   year   cyl  trans        drv    cty   hwy  fl   class      
-------------  -----------------------  ------  -----  ----  -----------  ----  ----  ----  ---  -----------
audi           a4                          1.8   1999     4  auto(l5)     f       18    29  p    compact    
audi           a4                          1.8   1999     4  manual(m5)   f       21    29  p    compact    
audi           a4                          2.0   2008     4  manual(m6)   f       20    31  p    compact    
audi           a4                          2.0   2008     4  auto(av)     f       21    30  p    compact    
audi           a4                          2.8   1999     6  auto(l5)     f       16    26  p    compact    
audi           a4                          2.8   1999     6  manual(m5)   f       18    26  p    compact    
audi           a4                          3.1   2008     6  auto(av)     f       18    27  p    compact    
audi           a4 quattro                  1.8   1999     4  manual(m5)   4       18    26  p    compact    
audi           a4 quattro                  1.8   1999     4  auto(l5)     4       16    25  p    compact    
audi           a4 quattro                  2.0   2008     4  manual(m6)   4       20    28  p    compact    
audi           a4 quattro                  2.0   2008     4  auto(s6)     4       19    27  p    compact    
audi           a4 quattro                  2.8   1999     6  auto(l5)     4       15    25  p    compact    
audi           a4 quattro                  2.8   1999     6  manual(m5)   4       17    25  p    compact    
audi           a4 quattro                  3.1   2008     6  auto(s6)     4       17    25  p    compact    
audi           a4 quattro                  3.1   2008     6  manual(m6)   4       15    25  p    compact    
audi           a6 quattro                  2.8   1999     6  auto(l5)     4       15    24  p    midsize    
audi           a6 quattro                  3.1   2008     6  auto(s6)     4       17    25  p    midsize    
audi           a6 quattro                  4.2   2008     8  auto(s6)     4       16    23  p    midsize    
chevrolet      c1500 suburban 2wd          5.3   2008     8  auto(l4)     r       14    20  r    suv        
chevrolet      c1500 suburban 2wd          5.3   2008     8  auto(l4)     r       11    15  e    suv        
chevrolet      c1500 suburban 2wd          5.3   2008     8  auto(l4)     r       14    20  r    suv        
chevrolet      c1500 suburban 2wd          5.7   1999     8  auto(l4)     r       13    17  r    suv        
chevrolet      c1500 suburban 2wd          6.0   2008     8  auto(l4)     r       12    17  r    suv        
chevrolet      corvette                    5.7   1999     8  manual(m6)   r       16    26  p    2seater    
chevrolet      corvette                    5.7   1999     8  auto(l4)     r       15    23  p    2seater    
chevrolet      corvette                    6.2   2008     8  manual(m6)   r       16    26  p    2seater    
chevrolet      corvette                    6.2   2008     8  auto(s6)     r       15    25  p    2seater    
chevrolet      corvette                    7.0   2008     8  manual(m6)   r       15    24  p    2seater    
chevrolet      k1500 tahoe 4wd             5.3   2008     8  auto(l4)     4       14    19  r    suv        
chevrolet      k1500 tahoe 4wd             5.3   2008     8  auto(l4)     4       11    14  e    suv        
chevrolet      k1500 tahoe 4wd             5.7   1999     8  auto(l4)     4       11    15  r    suv        
chevrolet      k1500 tahoe 4wd             6.5   1999     8  auto(l4)     4       14    17  d    suv        
chevrolet      malibu                      2.4   1999     4  auto(l4)     f       19    27  r    midsize    
chevrolet      malibu                      2.4   2008     4  auto(l4)     f       22    30  r    midsize    
chevrolet      malibu                      3.1   1999     6  auto(l4)     f       18    26  r    midsize    
chevrolet      malibu                      3.5   2008     6  auto(l4)     f       18    29  r    midsize    
chevrolet      malibu                      3.6   2008     6  auto(s6)     f       17    26  r    midsize    
dodge          caravan 2wd                 2.4   1999     4  auto(l3)     f       18    24  r    minivan    
dodge          caravan 2wd                 3.0   1999     6  auto(l4)     f       17    24  r    minivan    
dodge          caravan 2wd                 3.3   1999     6  auto(l4)     f       16    22  r    minivan    
dodge          caravan 2wd                 3.3   1999     6  auto(l4)     f       16    22  r    minivan    
dodge          caravan 2wd                 3.3   2008     6  auto(l4)     f       17    24  r    minivan    
dodge          caravan 2wd                 3.3   2008     6  auto(l4)     f       17    24  r    minivan    
dodge          caravan 2wd                 3.3   2008     6  auto(l4)     f       11    17  e    minivan    
dodge          caravan 2wd                 3.8   1999     6  auto(l4)     f       15    22  r    minivan    
dodge          caravan 2wd                 3.8   1999     6  auto(l4)     f       15    21  r    minivan    
dodge          caravan 2wd                 3.8   2008     6  auto(l6)     f       16    23  r    minivan    
dodge          caravan 2wd                 4.0   2008     6  auto(l6)     f       16    23  r    minivan    
dodge          dakota pickup 4wd           3.7   2008     6  manual(m6)   4       15    19  r    pickup     
dodge          dakota pickup 4wd           3.7   2008     6  auto(l4)     4       14    18  r    pickup     
dodge          dakota pickup 4wd           3.9   1999     6  auto(l4)     4       13    17  r    pickup     
dodge          dakota pickup 4wd           3.9   1999     6  manual(m5)   4       14    17  r    pickup     
dodge          dakota pickup 4wd           4.7   2008     8  auto(l5)     4       14    19  r    pickup     
dodge          dakota pickup 4wd           4.7   2008     8  auto(l5)     4       14    19  r    pickup     
dodge          dakota pickup 4wd           4.7   2008     8  auto(l5)     4        9    12  e    pickup     
dodge          dakota pickup 4wd           5.2   1999     8  manual(m5)   4       11    17  r    pickup     
dodge          dakota pickup 4wd           5.2   1999     8  auto(l4)     4       11    15  r    pickup     
dodge          durango 4wd                 3.9   1999     6  auto(l4)     4       13    17  r    suv        
dodge          durango 4wd                 4.7   2008     8  auto(l5)     4       13    17  r    suv        
dodge          durango 4wd                 4.7   2008     8  auto(l5)     4        9    12  e    suv        
dodge          durango 4wd                 4.7   2008     8  auto(l5)     4       13    17  r    suv        
dodge          durango 4wd                 5.2   1999     8  auto(l4)     4       11    16  r    suv        
dodge          durango 4wd                 5.7   2008     8  auto(l5)     4       13    18  r    suv        
dodge          durango 4wd                 5.9   1999     8  auto(l4)     4       11    15  r    suv        
dodge          ram 1500 pickup 4wd         4.7   2008     8  manual(m6)   4       12    16  r    pickup     
dodge          ram 1500 pickup 4wd         4.7   2008     8  auto(l5)     4        9    12  e    pickup     
dodge          ram 1500 pickup 4wd         4.7   2008     8  auto(l5)     4       13    17  r    pickup     
dodge          ram 1500 pickup 4wd         4.7   2008     8  auto(l5)     4       13    17  r    pickup     
dodge          ram 1500 pickup 4wd         4.7   2008     8  manual(m6)   4       12    16  r    pickup     
dodge          ram 1500 pickup 4wd         4.7   2008     8  manual(m6)   4        9    12  e    pickup     
dodge          ram 1500 pickup 4wd         5.2   1999     8  auto(l4)     4       11    15  r    pickup     
dodge          ram 1500 pickup 4wd         5.2   1999     8  manual(m5)   4       11    16  r    pickup     
dodge          ram 1500 pickup 4wd         5.7   2008     8  auto(l5)     4       13    17  r    pickup     
dodge          ram 1500 pickup 4wd         5.9   1999     8  auto(l4)     4       11    15  r    pickup     
ford           expedition 2wd              4.6   1999     8  auto(l4)     r       11    17  r    suv        
ford           expedition 2wd              5.4   1999     8  auto(l4)     r       11    17  r    suv        
ford           expedition 2wd              5.4   2008     8  auto(l6)     r       12    18  r    suv        
ford           explorer 4wd                4.0   1999     6  auto(l5)     4       14    17  r    suv        
ford           explorer 4wd                4.0   1999     6  manual(m5)   4       15    19  r    suv        
ford           explorer 4wd                4.0   1999     6  auto(l5)     4       14    17  r    suv        
ford           explorer 4wd                4.0   2008     6  auto(l5)     4       13    19  r    suv        
ford           explorer 4wd                4.6   2008     8  auto(l6)     4       13    19  r    suv        
ford           explorer 4wd                5.0   1999     8  auto(l4)     4       13    17  r    suv        
ford           f150 pickup 4wd             4.2   1999     6  auto(l4)     4       14    17  r    pickup     
ford           f150 pickup 4wd             4.2   1999     6  manual(m5)   4       14    17  r    pickup     
ford           f150 pickup 4wd             4.6   1999     8  manual(m5)   4       13    16  r    pickup     
ford           f150 pickup 4wd             4.6   1999     8  auto(l4)     4       13    16  r    pickup     
ford           f150 pickup 4wd             4.6   2008     8  auto(l4)     4       13    17  r    pickup     
ford           f150 pickup 4wd             5.4   1999     8  auto(l4)     4       11    15  r    pickup     
ford           f150 pickup 4wd             5.4   2008     8  auto(l4)     4       13    17  r    pickup     
ford           mustang                     3.8   1999     6  manual(m5)   r       18    26  r    subcompact 
ford           mustang                     3.8   1999     6  auto(l4)     r       18    25  r    subcompact 
ford           mustang                     4.0   2008     6  manual(m5)   r       17    26  r    subcompact 
ford           mustang                     4.0   2008     6  auto(l5)     r       16    24  r    subcompact 
ford           mustang                     4.6   1999     8  auto(l4)     r       15    21  r    subcompact 
ford           mustang                     4.6   1999     8  manual(m5)   r       15    22  r    subcompact 
ford           mustang                     4.6   2008     8  manual(m5)   r       15    23  r    subcompact 
ford           mustang                     4.6   2008     8  auto(l5)     r       15    22  r    subcompact 
ford           mustang                     5.4   2008     8  manual(m6)   r       14    20  p    subcompact 
honda          civic                       1.6   1999     4  manual(m5)   f       28    33  r    subcompact 
honda          civic                       1.6   1999     4  auto(l4)     f       24    32  r    subcompact 
honda          civic                       1.6   1999     4  manual(m5)   f       25    32  r    subcompact 
honda          civic                       1.6   1999     4  manual(m5)   f       23    29  p    subcompact 
honda          civic                       1.6   1999     4  auto(l4)     f       24    32  r    subcompact 
honda          civic                       1.8   2008     4  manual(m5)   f       26    34  r    subcompact 
honda          civic                       1.8   2008     4  auto(l5)     f       25    36  r    subcompact 
honda          civic                       1.8   2008     4  auto(l5)     f       24    36  c    subcompact 
honda          civic                       2.0   2008     4  manual(m6)   f       21    29  p    subcompact 
hyundai        sonata                      2.4   1999     4  auto(l4)     f       18    26  r    midsize    
hyundai        sonata                      2.4   1999     4  manual(m5)   f       18    27  r    midsize    
hyundai        sonata                      2.4   2008     4  auto(l4)     f       21    30  r    midsize    
hyundai        sonata                      2.4   2008     4  manual(m5)   f       21    31  r    midsize    
hyundai        sonata                      2.5   1999     6  auto(l4)     f       18    26  r    midsize    
hyundai        sonata                      2.5   1999     6  manual(m5)   f       18    26  r    midsize    
hyundai        sonata                      3.3   2008     6  auto(l5)     f       19    28  r    midsize    
hyundai        tiburon                     2.0   1999     4  auto(l4)     f       19    26  r    subcompact 
hyundai        tiburon                     2.0   1999     4  manual(m5)   f       19    29  r    subcompact 
hyundai        tiburon                     2.0   2008     4  manual(m5)   f       20    28  r    subcompact 
hyundai        tiburon                     2.0   2008     4  auto(l4)     f       20    27  r    subcompact 
hyundai        tiburon                     2.7   2008     6  auto(l4)     f       17    24  r    subcompact 
hyundai        tiburon                     2.7   2008     6  manual(m6)   f       16    24  r    subcompact 
hyundai        tiburon                     2.7   2008     6  manual(m5)   f       17    24  r    subcompact 
jeep           grand cherokee 4wd          3.0   2008     6  auto(l5)     4       17    22  d    suv        
jeep           grand cherokee 4wd          3.7   2008     6  auto(l5)     4       15    19  r    suv        
jeep           grand cherokee 4wd          4.0   1999     6  auto(l4)     4       15    20  r    suv        
jeep           grand cherokee 4wd          4.7   1999     8  auto(l4)     4       14    17  r    suv        
jeep           grand cherokee 4wd          4.7   2008     8  auto(l5)     4        9    12  e    suv        
jeep           grand cherokee 4wd          4.7   2008     8  auto(l5)     4       14    19  r    suv        
jeep           grand cherokee 4wd          5.7   2008     8  auto(l5)     4       13    18  r    suv        
jeep           grand cherokee 4wd          6.1   2008     8  auto(l5)     4       11    14  p    suv        
land rover     range rover                 4.0   1999     8  auto(l4)     4       11    15  p    suv        
land rover     range rover                 4.2   2008     8  auto(s6)     4       12    18  r    suv        
land rover     range rover                 4.4   2008     8  auto(s6)     4       12    18  r    suv        
land rover     range rover                 4.6   1999     8  auto(l4)     4       11    15  p    suv        
lincoln        navigator 2wd               5.4   1999     8  auto(l4)     r       11    17  r    suv        
lincoln        navigator 2wd               5.4   1999     8  auto(l4)     r       11    16  p    suv        
lincoln        navigator 2wd               5.4   2008     8  auto(l6)     r       12    18  r    suv        
mercury        mountaineer 4wd             4.0   1999     6  auto(l5)     4       14    17  r    suv        
mercury        mountaineer 4wd             4.0   2008     6  auto(l5)     4       13    19  r    suv        
mercury        mountaineer 4wd             4.6   2008     8  auto(l6)     4       13    19  r    suv        
mercury        mountaineer 4wd             5.0   1999     8  auto(l4)     4       13    17  r    suv        
nissan         altima                      2.4   1999     4  manual(m5)   f       21    29  r    compact    
nissan         altima                      2.4   1999     4  auto(l4)     f       19    27  r    compact    
nissan         altima                      2.5   2008     4  auto(av)     f       23    31  r    midsize    
nissan         altima                      2.5   2008     4  manual(m6)   f       23    32  r    midsize    
nissan         altima                      3.5   2008     6  manual(m6)   f       19    27  p    midsize    
nissan         altima                      3.5   2008     6  auto(av)     f       19    26  p    midsize    
nissan         maxima                      3.0   1999     6  auto(l4)     f       18    26  r    midsize    
nissan         maxima                      3.0   1999     6  manual(m5)   f       19    25  r    midsize    
nissan         maxima                      3.5   2008     6  auto(av)     f       19    25  p    midsize    
nissan         pathfinder 4wd              3.3   1999     6  auto(l4)     4       14    17  r    suv        
nissan         pathfinder 4wd              3.3   1999     6  manual(m5)   4       15    17  r    suv        
nissan         pathfinder 4wd              4.0   2008     6  auto(l5)     4       14    20  p    suv        
nissan         pathfinder 4wd              5.6   2008     8  auto(s5)     4       12    18  p    suv        
pontiac        grand prix                  3.1   1999     6  auto(l4)     f       18    26  r    midsize    
pontiac        grand prix                  3.8   1999     6  auto(l4)     f       16    26  p    midsize    
pontiac        grand prix                  3.8   1999     6  auto(l4)     f       17    27  r    midsize    
pontiac        grand prix                  3.8   2008     6  auto(l4)     f       18    28  r    midsize    
pontiac        grand prix                  5.3   2008     8  auto(s4)     f       16    25  p    midsize    
subaru         forester awd                2.5   1999     4  manual(m5)   4       18    25  r    suv        
subaru         forester awd                2.5   1999     4  auto(l4)     4       18    24  r    suv        
subaru         forester awd                2.5   2008     4  manual(m5)   4       20    27  r    suv        
subaru         forester awd                2.5   2008     4  manual(m5)   4       19    25  p    suv        
subaru         forester awd                2.5   2008     4  auto(l4)     4       20    26  r    suv        
subaru         forester awd                2.5   2008     4  auto(l4)     4       18    23  p    suv        
subaru         impreza awd                 2.2   1999     4  auto(l4)     4       21    26  r    subcompact 
subaru         impreza awd                 2.2   1999     4  manual(m5)   4       19    26  r    subcompact 
subaru         impreza awd                 2.5   1999     4  manual(m5)   4       19    26  r    subcompact 
subaru         impreza awd                 2.5   1999     4  auto(l4)     4       19    26  r    subcompact 
subaru         impreza awd                 2.5   2008     4  auto(s4)     4       20    25  p    compact    
subaru         impreza awd                 2.5   2008     4  auto(s4)     4       20    27  r    compact    
subaru         impreza awd                 2.5   2008     4  manual(m5)   4       19    25  p    compact    
subaru         impreza awd                 2.5   2008     4  manual(m5)   4       20    27  r    compact    
toyota         4runner 4wd                 2.7   1999     4  manual(m5)   4       15    20  r    suv        
toyota         4runner 4wd                 2.7   1999     4  auto(l4)     4       16    20  r    suv        
toyota         4runner 4wd                 3.4   1999     6  auto(l4)     4       15    19  r    suv        
toyota         4runner 4wd                 3.4   1999     6  manual(m5)   4       15    17  r    suv        
toyota         4runner 4wd                 4.0   2008     6  auto(l5)     4       16    20  r    suv        
toyota         4runner 4wd                 4.7   2008     8  auto(l5)     4       14    17  r    suv        
toyota         camry                       2.2   1999     4  manual(m5)   f       21    29  r    midsize    
toyota         camry                       2.2   1999     4  auto(l4)     f       21    27  r    midsize    
toyota         camry                       2.4   2008     4  manual(m5)   f       21    31  r    midsize    
toyota         camry                       2.4   2008     4  auto(l5)     f       21    31  r    midsize    
toyota         camry                       3.0   1999     6  auto(l4)     f       18    26  r    midsize    
toyota         camry                       3.0   1999     6  manual(m5)   f       18    26  r    midsize    
toyota         camry                       3.5   2008     6  auto(s6)     f       19    28  r    midsize    
toyota         camry solara                2.2   1999     4  auto(l4)     f       21    27  r    compact    
toyota         camry solara                2.2   1999     4  manual(m5)   f       21    29  r    compact    
toyota         camry solara                2.4   2008     4  manual(m5)   f       21    31  r    compact    
toyota         camry solara                2.4   2008     4  auto(s5)     f       22    31  r    compact    
toyota         camry solara                3.0   1999     6  auto(l4)     f       18    26  r    compact    
toyota         camry solara                3.0   1999     6  manual(m5)   f       18    26  r    compact    
toyota         camry solara                3.3   2008     6  auto(s5)     f       18    27  r    compact    
toyota         corolla                     1.8   1999     4  auto(l3)     f       24    30  r    compact    
toyota         corolla                     1.8   1999     4  auto(l4)     f       24    33  r    compact    
toyota         corolla                     1.8   1999     4  manual(m5)   f       26    35  r    compact    
toyota         corolla                     1.8   2008     4  manual(m5)   f       28    37  r    compact    
toyota         corolla                     1.8   2008     4  auto(l4)     f       26    35  r    compact    
toyota         land cruiser wagon 4wd      4.7   1999     8  auto(l4)     4       11    15  r    suv        
toyota         land cruiser wagon 4wd      5.7   2008     8  auto(s6)     4       13    18  r    suv        
toyota         toyota tacoma 4wd           2.7   1999     4  manual(m5)   4       15    20  r    pickup     
toyota         toyota tacoma 4wd           2.7   1999     4  auto(l4)     4       16    20  r    pickup     
toyota         toyota tacoma 4wd           2.7   2008     4  manual(m5)   4       17    22  r    pickup     
toyota         toyota tacoma 4wd           3.4   1999     6  manual(m5)   4       15    17  r    pickup     
toyota         toyota tacoma 4wd           3.4   1999     6  auto(l4)     4       15    19  r    pickup     
toyota         toyota tacoma 4wd           4.0   2008     6  manual(m6)   4       15    18  r    pickup     
toyota         toyota tacoma 4wd           4.0   2008     6  auto(l5)     4       16    20  r    pickup     
volkswagen     gti                         2.0   1999     4  manual(m5)   f       21    29  r    compact    
volkswagen     gti                         2.0   1999     4  auto(l4)     f       19    26  r    compact    
volkswagen     gti                         2.0   2008     4  manual(m6)   f       21    29  p    compact    
volkswagen     gti                         2.0   2008     4  auto(s6)     f       22    29  p    compact    
volkswagen     gti                         2.8   1999     6  manual(m5)   f       17    24  r    compact    
volkswagen     jetta                       1.9   1999     4  manual(m5)   f       33    44  d    compact    
volkswagen     jetta                       2.0   1999     4  manual(m5)   f       21    29  r    compact    
volkswagen     jetta                       2.0   1999     4  auto(l4)     f       19    26  r    compact    
volkswagen     jetta                       2.0   2008     4  auto(s6)     f       22    29  p    compact    
volkswagen     jetta                       2.0   2008     4  manual(m6)   f       21    29  p    compact    
volkswagen     jetta                       2.5   2008     5  auto(s6)     f       21    29  r    compact    
volkswagen     jetta                       2.5   2008     5  manual(m5)   f       21    29  r    compact    
volkswagen     jetta                       2.8   1999     6  auto(l4)     f       16    23  r    compact    
volkswagen     jetta                       2.8   1999     6  manual(m5)   f       17    24  r    compact    
volkswagen     new beetle                  1.9   1999     4  manual(m5)   f       35    44  d    subcompact 
volkswagen     new beetle                  1.9   1999     4  auto(l4)     f       29    41  d    subcompact 
volkswagen     new beetle                  2.0   1999     4  manual(m5)   f       21    29  r    subcompact 
volkswagen     new beetle                  2.0   1999     4  auto(l4)     f       19    26  r    subcompact 
volkswagen     new beetle                  2.5   2008     5  manual(m5)   f       20    28  r    subcompact 
volkswagen     new beetle                  2.5   2008     5  auto(s6)     f       20    29  r    subcompact 
volkswagen     passat                      1.8   1999     4  manual(m5)   f       21    29  p    midsize    
volkswagen     passat                      1.8   1999     4  auto(l5)     f       18    29  p    midsize    
volkswagen     passat                      2.0   2008     4  auto(s6)     f       19    28  p    midsize    
volkswagen     passat                      2.0   2008     4  manual(m6)   f       21    29  p    midsize    
volkswagen     passat                      2.8   1999     6  auto(l5)     f       16    26  p    midsize    
volkswagen     passat                      2.8   1999     6  manual(m5)   f       18    26  p    midsize    
volkswagen     passat                      3.6   2008     6  auto(s6)     f       17    26  p    midsize    

</div>

# example: do cars with big engines use more fuel than cars with small engines?
1. start with mapping and `aes()`
    + **displ.** engine displacement, in litres (bigger numbers = greater engine size)
    + **hwy.** highway miles per gallon (bigger numbers = using less fuel each mile)

# example: do cars with big engines use more fuel than cars with small engines?


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))
```

![](visualize_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

# example: do cars with big engines use more fuel than cars with small engines?
1. start with mapping and `aes()`
    + you are mapping aesthetics onto data
    + x-axis position maps onto displ
    + y-axis position maps onto hwy
    + x-position and y-position are aesthetics: things that we can perceive on the graphic

# example: do cars with big engines use more fuel than cars with small engines?


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))
```

![](visualize_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

# example: do cars with big engines use more fuel than cars with small engines?
1. start with mapping and `aes()`
    + you are mapping aesthetics onto data
    + x-axis position maps onto displ
    + y-axis position maps onto hwy
    + x-position and y-position are aesthetics: things that we can perceive on the graphic
2. add a layer, like `geom_point()`
      + layers determine physical representations of data

**source.** [**A layered grammar of graphics**](http://vita.had.co.nz/papers/layered-grammar.pdf)

# example: do cars with big engines use more fuel than cars with small engines?


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))
```

![](visualize_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

# example: do cars with big engines use more fuel than cars with small engines?


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()
```

![](visualize_files/figure-html/unnamed-chunk-6-1.png)<!-- -->

# example: what types have cars have big engines but decent highway mpg?
1. start with mapping and `aes()`
    + you are mapping aesthetics onto data
    + x-axis position maps onto displ
    + y-axis position maps onto hwy
2. add a layer, like `geom_point()`
    + layers determine physical representations of data
3. add a new aesthetic mapping, like color
      + **class.** "type" of car
      + color maps onto class

**source.** [A layered grammar of graphics](http://vita.had.co.nz/papers/layered-grammar.pdf)

# example: what types have cars have big engines but decent highway mpg?


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point()
```

![](visualize_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

# example: what types have cars have big engines but decent highway mpg?


```r
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point()
```

![](visualize_files/figure-html/unnamed-chunk-8-1.png)<!-- -->

# which type of car has better mpg in the city?
- **cty.** city miles per gallon
    + now x-position maps onto class
    + and y-position maps onto cty

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty))
```

![](visualize_files/figure-html/unnamed-chunk-9-1.png)<!-- -->

# which type of car has better mpg in the city?
- **cty.** city miles per gallon
- trusty boxplots
    + boxplots are a complex layer
    + e.g., they require statistics like fences, hinges, and outliers in addition to the shapes we see

**source.** [A layered grammar of graphics](http://vita.had.co.nz/papers/layered-grammar.pdf)

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty))
```

![](visualize_files/figure-html/unnamed-chunk-10-1.png)<!-- -->

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  geom_boxplot()
```

![](visualize_files/figure-html/unnamed-chunk-11-1.png)<!-- -->

# which type of car has better mpg in the city?
- **cty.** city miles per gallon
- standard bars representing means + 95% confidence intervals
- `stat_summary()`: "Summarise y values at unique/binned x"
- `mean_cl_normal()`: "... computes 3 summary variables: the sample mean and lower and upper Gaussian confidence limits based on the t-distribution."

**sources.** `help("stat_summary")` and `help("mean_cl_normal")`

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty))
```

![](visualize_files/figure-html/unnamed-chunk-12-1.png)<!-- -->

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal)
```

![](visualize_files/figure-html/unnamed-chunk-13-1.png)<!-- -->

# which type of car has better mpg in the city?
- **cty.** city miles per gallon
- standard bars representing means + 95% confidence intervals
- `stat_summary()`: "Summarise y values at unique/binned x"
- `mean_cl_normal()`: "... computes 3 summary variables: the sample mean and lower and upper Gaussian confidence limits based on the t-distribution."

**sources.** `help("stat_summary")` and `help("mean_cl_normal")`

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal)
```

![](visualize_files/figure-html/unnamed-chunk-14-1.png)<!-- -->

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal) +
  stat_summary(geom = "errorbar", fun.data = mean_cl_normal, width = 0)
```

![](visualize_files/figure-html/unnamed-chunk-15-1.png)<!-- -->

# which type of car has better mpg in the city?
- **cty.** city miles per gallon
- standard bars representing means + 95% confidence intervals
- `stat_summary()`: "Summarise y values at unique/binned x"
- `mean_cl_normal()`: "... computes 3 summary variables: the sample mean and lower and upper Gaussian confidence limits based on the t-distribution."
- fill the bars with fill = white, and color their outline with color = "black"

**sources.** `help("stat_summary")` and `help("mean_cl_normal")`

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal) +
  stat_summary(geom = "errorbar", fun.data = mean_cl_normal, width = 0)
```

![](visualize_files/figure-html/unnamed-chunk-16-1.png)<!-- -->

# which type of car has better mpg in the city?


```r
ggplot(data = mpg, mapping = aes(x = class, y = cty)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal, fill = "white", color = "black") +
  stat_summary(geom = "errorbar", fun.data = mean_cl_normal, width = 0)
```

![](visualize_files/figure-html/unnamed-chunk-17-1.png)<!-- -->

# exercise: play with the sleepstudy dataset that comes with `lme4`
- **sleepstudy.** "The average reaction time per day for subjects in a sleep deprivation study. On day 0 the subjects had their normal amount of sleep. Starting that night they were restricted to 3 hours of sleep per night. The observations represent the average reaction time on a series of tests given each day to each subject."

**source.** `help(sleepstudy)`

# exercise: play with the sleepstudy dataset that comes with `lme4`


```r
sleepstudy
```

<div class="kable-table">

 Reaction   Days  Subject 
---------  -----  --------
 249.5600      0  308     
 258.7047      1  308     
 250.8006      2  308     
 321.4398      3  308     
 356.8519      4  308     
 414.6901      5  308     
 382.2038      6  308     
 290.1486      7  308     
 430.5853      8  308     
 466.3535      9  308     
 222.7339      0  309     
 205.2658      1  309     
 202.9778      2  309     
 204.7070      3  309     
 207.7161      4  309     
 215.9618      5  309     
 213.6303      6  309     
 217.7272      7  309     
 224.2957      8  309     
 237.3142      9  309     
 199.0539      0  310     
 194.3322      1  310     
 234.3200      2  310     
 232.8416      3  310     
 229.3074      4  310     
 220.4579      5  310     
 235.4208      6  310     
 255.7511      7  310     
 261.0125      8  310     
 247.5153      9  310     
 321.5426      0  330     
 300.4002      1  330     
 283.8565      2  330     
 285.1330      3  330     
 285.7973      4  330     
 297.5855      5  330     
 280.2396      6  330     
 318.2613      7  330     
 305.3495      8  330     
 354.0487      9  330     
 287.6079      0  331     
 285.0000      1  331     
 301.8206      2  331     
 320.1153      3  331     
 316.2773      4  331     
 293.3187      5  331     
 290.0750      6  331     
 334.8177      7  331     
 293.7469      8  331     
 371.5811      9  331     
 234.8606      0  332     
 242.8118      1  332     
 272.9613      2  332     
 309.7688      3  332     
 317.4629      4  332     
 309.9976      5  332     
 454.1619      6  332     
 346.8311      7  332     
 330.3003      8  332     
 253.8644      9  332     
 283.8424      0  333     
 289.5550      1  333     
 276.7693      2  333     
 299.8097      3  333     
 297.1710      4  333     
 338.1665      5  333     
 332.0265      6  333     
 348.8399      7  333     
 333.3600      8  333     
 362.0428      9  333     
 265.4731      0  334     
 276.2012      1  334     
 243.3647      2  334     
 254.6723      3  334     
 279.0244      4  334     
 284.1912      5  334     
 305.5248      6  334     
 331.5229      7  334     
 335.7469      8  334     
 377.2990      9  334     
 241.6083      0  335     
 273.9472      1  335     
 254.4907      2  335     
 270.8021      3  335     
 251.4519      4  335     
 254.6362      5  335     
 245.4523      6  335     
 235.3110      7  335     
 235.7541      8  335     
 237.2466      9  335     
 312.3666      0  337     
 313.8058      1  337     
 291.6112      2  337     
 346.1222      3  337     
 365.7324      4  337     
 391.8385      5  337     
 404.2601      6  337     
 416.6923      7  337     
 455.8643      8  337     
 458.9167      9  337     
 236.1032      0  349     
 230.3167      1  349     
 238.9256      2  349     
 254.9220      3  349     
 250.7103      4  349     
 269.7744      5  349     
 281.5648      6  349     
 308.1020      7  349     
 336.2806      8  349     
 351.6451      9  349     
 256.2968      0  350     
 243.4543      1  350     
 256.2046      2  350     
 255.5271      3  350     
 268.9165      4  350     
 329.7247      5  350     
 379.4445      6  350     
 362.9184      7  350     
 394.4872      8  350     
 389.0527      9  350     
 250.5265      0  351     
 300.0576      1  351     
 269.8939      2  351     
 280.5891      3  351     
 271.8274      4  351     
 304.6336      5  351     
 287.7466      6  351     
 266.5955      7  351     
 321.5418      8  351     
 347.5655      9  351     
 221.6771      0  352     
 298.1939      1  352     
 326.8785      2  352     
 346.8555      3  352     
 348.7402      4  352     
 352.8287      5  352     
 354.4266      6  352     
 360.4326      7  352     
 375.6406      8  352     
 388.5417      9  352     
 271.9235      0  369     
 268.4369      1  369     
 257.2424      2  369     
 277.6566      3  369     
 314.8222      4  369     
 317.2135      5  369     
 298.1353      6  369     
 348.1229      7  369     
 340.2800      8  369     
 366.5131      9  369     
 225.2640      0  370     
 234.5235      1  370     
 238.9008      2  370     
 240.4730      3  370     
 267.5373      4  370     
 344.1937      5  370     
 281.1481      6  370     
 347.5855      7  370     
 365.1630      8  370     
 372.2288      9  370     
 269.8804      0  371     
 272.4428      1  371     
 277.8989      2  371     
 281.7895      3  371     
 279.1705      4  371     
 284.5120      5  371     
 259.2658      6  371     
 304.6306      7  371     
 350.7807      8  371     
 369.4692      9  371     
 269.4117      0  372     
 273.4740      1  372     
 297.5968      2  372     
 310.6316      3  372     
 287.1726      4  372     
 329.6076      5  372     
 334.4818      6  372     
 343.2199      7  372     
 369.1417      8  372     
 364.1236      9  372     

</div>

# exercise: play with the sleepstudy dataset that comes with `lme4`
- **sleepstudy.**
    + does average reaction time change over time?
    + does change over time depend on Subject?
    + **hint.** `help(facet_wrap)`

**source.** `help(sleepstudy)`

# exercise: play with the sleepstudy dataset that comes with `lme4`
- **sleepstudy.**
    + does average reaction time change over time?

# exercise: play with the sleepstudy dataset that comes with `lme4`


```r
ggplot(data = sleepstudy, mapping = aes(x = Days, y = Reaction)) +
  geom_point() +
  scale_x_continuous(breaks = seq(from = 0, to = 9, by = 1))
```

![](visualize_files/figure-html/unnamed-chunk-19-1.png)<!-- -->

# exercise: play with the sleepstudy dataset that comes with `lme4`
- **sleepstudy.**
    + does average reaction time change over time?
    + does change over time depend on Subject?
    + **hint.** `help(facet_wrap)`

# exercise: play with the sleepstudy dataset that comes with `lme4`


```r
ggplot(data = sleepstudy, mapping = aes(x = Days, y = Reaction)) +
  geom_point() +
  scale_x_continuous(breaks = seq(from = 0, to = 9, by = 1)) +
  facet_wrap(facets = ~ Subject)
```

![](visualize_files/figure-html/unnamed-chunk-20-1.png)<!-- -->

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package
- "The raw data behind the story "Some People Are Too Superstitious To Have A Baby On Friday The 13th" [**Some people aare too superstitious to have a baby on friday the 13th**](https://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/)."

**source.** `help(US_births_2000_2014)`

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package


```r
US_births_2000_2014
```

<div class="kable-table">

 year   month   date_of_month  date         day_of_week    births
-----  ------  --------------  -----------  ------------  -------
 2000       1               1  2000-01-01   Sat              9083
 2000       1               2  2000-01-02   Sun              8006
 2000       1               3  2000-01-03   Mon             11363
 2000       1               4  2000-01-04   Tues            13032
 2000       1               5  2000-01-05   Wed             12558
 2000       1               6  2000-01-06   Thurs           12466
 2000       1               7  2000-01-07   Fri             12516
 2000       1               8  2000-01-08   Sat              8934
 2000       1               9  2000-01-09   Sun              7949
 2000       1              10  2000-01-10   Mon             11668
 2000       1              11  2000-01-11   Tues            12611
 2000       1              12  2000-01-12   Wed             12398
 2000       1              13  2000-01-13   Thurs           11815
 2000       1              14  2000-01-14   Fri             12180
 2000       1              15  2000-01-15   Sat              8525
 2000       1              16  2000-01-16   Sun              7657
 2000       1              17  2000-01-17   Mon             10824
 2000       1              18  2000-01-18   Tues            12350
 2000       1              19  2000-01-19   Wed             12405
 2000       1              20  2000-01-20   Thurs           12506
 2000       1              21  2000-01-21   Fri             11953
 2000       1              22  2000-01-22   Sat              8855
 2000       1              23  2000-01-23   Sun              7856
 2000       1              24  2000-01-24   Mon             11449
 2000       1              25  2000-01-25   Tues            12593
 2000       1              26  2000-01-26   Wed             12143
 2000       1              27  2000-01-27   Thurs           12408
 2000       1              28  2000-01-28   Fri             11934
 2000       1              29  2000-01-29   Sat              8805
 2000       1              30  2000-01-30   Sun              7764
 2000       1              31  2000-01-31   Mon             11133
 2000       2               1  2000-02-01   Tues            12614
 2000       2               2  2000-02-02   Wed             12465
 2000       2               3  2000-02-03   Thurs           12062
 2000       2               4  2000-02-04   Fri             12035
 2000       2               5  2000-02-05   Sat              8624
 2000       2               6  2000-02-06   Sun              7862
 2000       2               7  2000-02-07   Mon             11630
 2000       2               8  2000-02-08   Tues            12879
 2000       2               9  2000-02-09   Wed             12315
 2000       2              10  2000-02-10   Thurs           12612
 2000       2              11  2000-02-11   Fri             12411
 2000       2              12  2000-02-12   Sat              8836
 2000       2              13  2000-02-13   Sun              7933
 2000       2              14  2000-02-14   Mon             12152
 2000       2              15  2000-02-15   Tues            13017
 2000       2              16  2000-02-16   Wed             12504
 2000       2              17  2000-02-17   Thurs           12520
 2000       2              18  2000-02-18   Fri             12406
 2000       2              19  2000-02-19   Sat              8861
 2000       2              20  2000-02-20   Sun              7943
 2000       2              21  2000-02-21   Mon             10610
 2000       2              22  2000-02-22   Tues            12664
 2000       2              23  2000-02-23   Wed             12252
 2000       2              24  2000-02-24   Thurs           12423
 2000       2              25  2000-02-25   Fri             12204
 2000       2              26  2000-02-26   Sat              9026
 2000       2              27  2000-02-27   Sun              7836
 2000       2              28  2000-02-28   Mon             11455
 2000       2              29  2000-02-29   Tues            11895
 2000       3               1  2000-03-01   Wed             12672
 2000       3               2  2000-03-02   Thurs           12524
 2000       3               3  2000-03-03   Fri             12390
 2000       3               4  2000-03-04   Sat              9054
 2000       3               5  2000-03-05   Sun              7734
 2000       3               6  2000-03-06   Mon             11375
 2000       3               7  2000-03-07   Tues            12420
 2000       3               8  2000-03-08   Wed             12338
 2000       3               9  2000-03-09   Thurs           12615
 2000       3              10  2000-03-10   Fri             12152
 2000       3              11  2000-03-11   Sat              8822
 2000       3              12  2000-03-12   Sun              7937
 2000       3              13  2000-03-13   Mon             11157
 2000       3              14  2000-03-14   Tues            12773
 2000       3              15  2000-03-15   Wed             12428
 2000       3              16  2000-03-16   Thurs           12431
 2000       3              17  2000-03-17   Fri             12385
 2000       3              18  2000-03-18   Sat              8677
 2000       3              19  2000-03-19   Sun              7782
 2000       3              20  2000-03-20   Mon             11595
 2000       3              21  2000-03-21   Tues            12689
 2000       3              22  2000-03-22   Wed             12272
 2000       3              23  2000-03-23   Thurs           12396
 2000       3              24  2000-03-24   Fri             12327
 2000       3              25  2000-03-25   Sat              9155
 2000       3              26  2000-03-26   Sun              7815
 2000       3              27  2000-03-27   Mon             11291
 2000       3              28  2000-03-28   Tues            12650
 2000       3              29  2000-03-29   Wed             12077
 2000       3              30  2000-03-30   Thurs           12071
 2000       3              31  2000-03-31   Fri             11820
 2000       4               1  2000-04-01   Sat              8388
 2000       4               2  2000-04-02   Sun              7540
 2000       4               3  2000-04-03   Mon             11397
 2000       4               4  2000-04-04   Tues            12797
 2000       4               5  2000-04-05   Wed             12209
 2000       4               6  2000-04-06   Thurs           12192
 2000       4               7  2000-04-07   Fri             12213
 2000       4               8  2000-04-08   Sat              8743
 2000       4               9  2000-04-09   Sun              7759
 2000       4              10  2000-04-10   Mon             11333
 2000       4              11  2000-04-11   Tues            12850
 2000       4              12  2000-04-12   Wed             12545
 2000       4              13  2000-04-13   Thurs           11907
 2000       4              14  2000-04-14   Fri             12053
 2000       4              15  2000-04-15   Sat              8887
 2000       4              16  2000-04-16   Sun              7859
 2000       4              17  2000-04-17   Mon             11322
 2000       4              18  2000-04-18   Tues            12783
 2000       4              19  2000-04-19   Wed             12562
 2000       4              20  2000-04-20   Thurs           12301
 2000       4              21  2000-04-21   Fri             11257
 2000       4              22  2000-04-22   Sat              8367
 2000       4              23  2000-04-23   Sun              7483
 2000       4              24  2000-04-24   Mon             11309
 2000       4              25  2000-04-25   Tues            12488
 2000       4              26  2000-04-26   Wed             12245
 2000       4              27  2000-04-27   Thurs           12235
 2000       4              28  2000-04-28   Fri             11989
 2000       4              29  2000-04-29   Sat              8703
 2000       4              30  2000-04-30   Sun              7641
 2000       5               1  2000-05-01   Mon             11621
 2000       5               2  2000-05-02   Tues            12934
 2000       5               3  2000-05-03   Wed             12259
 2000       5               4  2000-05-04   Thurs           12434
 2000       5               5  2000-05-05   Fri             12539
 2000       5               6  2000-05-06   Sat              8814
 2000       5               7  2000-05-07   Sun              7797
 2000       5               8  2000-05-08   Mon             11604
 2000       5               9  2000-05-09   Tues            12744
 2000       5              10  2000-05-10   Wed             12607
 2000       5              11  2000-05-11   Thurs           12442
 2000       5              12  2000-05-12   Fri             12132
 2000       5              13  2000-05-13   Sat              8747
 2000       5              14  2000-05-14   Sun              7617
 2000       5              15  2000-05-15   Mon             11587
 2000       5              16  2000-05-16   Tues            12898
 2000       5              17  2000-05-17   Wed             12729
 2000       5              18  2000-05-18   Thurs           12580
 2000       5              19  2000-05-19   Fri             12174
 2000       5              20  2000-05-20   Sat              8673
 2000       5              21  2000-05-21   Sun              7887
 2000       5              22  2000-05-22   Mon             11582
 2000       5              23  2000-05-23   Tues            13097
 2000       5              24  2000-05-24   Wed             12669
 2000       5              25  2000-05-25   Thurs           13026
 2000       5              26  2000-05-26   Fri             12726
 2000       5              27  2000-05-27   Sat              8991
 2000       5              28  2000-05-28   Sun              7873
 2000       5              29  2000-05-29   Mon              8272
 2000       5              30  2000-05-30   Tues            11954
 2000       5              31  2000-05-31   Wed             12941
 2000       6               1  2000-06-01   Thurs           13363
 2000       6               2  2000-06-02   Fri             12695
 2000       6               3  2000-06-03   Sat              8940
 2000       6               4  2000-06-04   Sun              7983
 2000       6               5  2000-06-05   Mon             11647
 2000       6               6  2000-06-06   Tues            12765
 2000       6               7  2000-06-07   Wed             12474
 2000       6               8  2000-06-08   Thurs           12751
 2000       6               9  2000-06-09   Fri             12504
 2000       6              10  2000-06-10   Sat              9134
 2000       6              11  2000-06-11   Sun              8116
 2000       6              12  2000-06-12   Mon             11848
 2000       6              13  2000-06-13   Tues            12683
 2000       6              14  2000-06-14   Wed             12849
 2000       6              15  2000-06-15   Thurs           12798
 2000       6              16  2000-06-16   Fri             12727
 2000       6              17  2000-06-17   Sat              9143
 2000       6              18  2000-06-18   Sun              8162
 2000       6              19  2000-06-19   Mon             11649
 2000       6              20  2000-06-20   Tues            13017
 2000       6              21  2000-06-21   Wed             12729
 2000       6              22  2000-06-22   Thurs           12809
 2000       6              23  2000-06-23   Fri             12603
 2000       6              24  2000-06-24   Sat              9094
 2000       6              25  2000-06-25   Sun              8178
 2000       6              26  2000-06-26   Mon             12164
 2000       6              27  2000-06-27   Tues            13354
 2000       6              28  2000-06-28   Wed             13033
 2000       6              29  2000-06-29   Thurs           13462
 2000       6              30  2000-06-30   Fri             13225
 2000       7               1  2000-07-01   Sat              9376
 2000       7               2  2000-07-02   Sun              8100
 2000       7               3  2000-07-03   Mon             11345
 2000       7               4  2000-07-04   Tues             9550
 2000       7               5  2000-07-05   Wed             12346
 2000       7               6  2000-07-06   Thurs           13853
 2000       7               7  2000-07-07   Fri             13658
 2000       7               8  2000-07-08   Sat              9631
 2000       7               9  2000-07-09   Sun              8586
 2000       7              10  2000-07-10   Mon             12420
 2000       7              11  2000-07-11   Tues            13584
 2000       7              12  2000-07-12   Wed             12827
 2000       7              13  2000-07-13   Thurs           12980
 2000       7              14  2000-07-14   Fri             13230
 2000       7              15  2000-07-15   Sat              9627
 2000       7              16  2000-07-16   Sun              8423
 2000       7              17  2000-07-17   Mon             12053
 2000       7              18  2000-07-18   Tues            13663
 2000       7              19  2000-07-19   Wed             13001
 2000       7              20  2000-07-20   Thurs           13173
 2000       7              21  2000-07-21   Fri             13027
 2000       7              22  2000-07-22   Sat              9463
 2000       7              23  2000-07-23   Sun              8166
 2000       7              24  2000-07-24   Mon             12128
 2000       7              25  2000-07-25   Tues            13176
 2000       7              26  2000-07-26   Wed             12931
 2000       7              27  2000-07-27   Thurs           13155
 2000       7              28  2000-07-28   Fri             12890
 2000       7              29  2000-07-29   Sat              9465
 2000       7              30  2000-07-30   Sun              8444
 2000       7              31  2000-07-31   Mon             11860
 2000       8               1  2000-08-01   Tues            13356
 2000       8               2  2000-08-02   Wed             12835
 2000       8               3  2000-08-03   Thurs           13092
 2000       8               4  2000-08-04   Fri             12940
 2000       8               5  2000-08-05   Sat              9398
 2000       8               6  2000-08-06   Sun              8350
 2000       8               7  2000-08-07   Mon             11864
 2000       8               8  2000-08-08   Tues            13693
 2000       8               9  2000-08-09   Wed             13170
 2000       8              10  2000-08-10   Thurs           12953
 2000       8              11  2000-08-11   Fri             12729
 2000       8              12  2000-08-12   Sat              9305
 2000       8              13  2000-08-13   Sun              8313
 2000       8              14  2000-08-14   Mon             11927
 2000       8              15  2000-08-15   Tues            13374
 2000       8              16  2000-08-16   Wed             13174
 2000       8              17  2000-08-17   Thurs           13099
 2000       8              18  2000-08-18   Fri             13124
 2000       8              19  2000-08-19   Sat              9276
 2000       8              20  2000-08-20   Sun              8346
 2000       8              21  2000-08-21   Mon             12003
 2000       8              22  2000-08-22   Tues            13406
 2000       8              23  2000-08-23   Wed             12929
 2000       8              24  2000-08-24   Thurs           13021
 2000       8              25  2000-08-25   Fri             12926
 2000       8              26  2000-08-26   Sat              9341
 2000       8              27  2000-08-27   Sun              8240
 2000       8              28  2000-08-28   Mon             12074
 2000       8              29  2000-08-29   Tues            13237
 2000       8              30  2000-08-30   Wed             13111
 2000       8              31  2000-08-31   Thurs           13287
 2000       9               1  2000-09-01   Fri             13145
 2000       9               2  2000-09-02   Sat              9265
 2000       9               3  2000-09-03   Sun              8248
 2000       9               4  2000-09-04   Mon              8603
 2000       9               5  2000-09-05   Tues            12200
 2000       9               6  2000-09-06   Wed             13917
 2000       9               7  2000-09-07   Thurs           13512
 2000       9               8  2000-09-08   Fri             13487
 2000       9               9  2000-09-09   Sat              9860
 2000       9              10  2000-09-10   Sun              8552
 2000       9              11  2000-09-11   Mon             12405
 2000       9              12  2000-09-12   Tues            13649
 2000       9              13  2000-09-13   Wed             13299
 2000       9              14  2000-09-14   Thurs           13739
 2000       9              15  2000-09-15   Fri             13552
 2000       9              16  2000-09-16   Sat              9780
 2000       9              17  2000-09-17   Sun              8683
 2000       9              18  2000-09-18   Mon             12554
 2000       9              19  2000-09-19   Tues            13850
 2000       9              20  2000-09-20   Wed             13775
 2000       9              21  2000-09-21   Thurs           13350
 2000       9              22  2000-09-22   Fri             13189
 2000       9              23  2000-09-23   Sat              9494
 2000       9              24  2000-09-24   Sun              8539
 2000       9              25  2000-09-25   Mon             12432
 2000       9              26  2000-09-26   Tues            13540
 2000       9              27  2000-09-27   Wed             13467
 2000       9              28  2000-09-28   Thurs           13515
 2000       9              29  2000-09-29   Fri             13045
 2000       9              30  2000-09-30   Sat              9335
 2000      10               1  2000-10-01   Sun              8453
 2000      10               2  2000-10-02   Mon             12223
 2000      10               3  2000-10-03   Tues            13245
 2000      10               4  2000-10-04   Wed             13154
 2000      10               5  2000-10-05   Thurs           13288
 2000      10               6  2000-10-06   Fri             12774
 2000      10               7  2000-10-07   Sat              9131
 2000      10               8  2000-10-08   Sun              8119
 2000      10               9  2000-10-09   Mon             11343
 2000      10              10  2000-10-10   Tues            13124
 2000      10              11  2000-10-11   Wed             12907
 2000      10              12  2000-10-12   Thurs           13038
 2000      10              13  2000-10-13   Fri             11723
 2000      10              14  2000-10-14   Sat              9163
 2000      10              15  2000-10-15   Sun              8156
 2000      10              16  2000-10-16   Mon             12001
 2000      10              17  2000-10-17   Tues            13106
 2000      10              18  2000-10-18   Wed             12816
 2000      10              19  2000-10-19   Thurs           12502
 2000      10              20  2000-10-20   Fri             12471
 2000      10              21  2000-10-21   Sat              8956
 2000      10              22  2000-10-22   Sun              7938
 2000      10              23  2000-10-23   Mon             11810
 2000      10              24  2000-10-24   Tues            12995
 2000      10              25  2000-10-25   Wed             12780
 2000      10              26  2000-10-26   Thurs           12787
 2000      10              27  2000-10-27   Fri             12333
 2000      10              28  2000-10-28   Sat              8978
 2000      10              29  2000-10-29   Sun              8124
 2000      10              30  2000-10-30   Mon             11558
 2000      10              31  2000-10-31   Tues            11372
 2000      11               1  2000-11-01   Wed             12927
 2000      11               2  2000-11-02   Thurs           13066
 2000      11               3  2000-11-03   Fri             12630
 2000      11               4  2000-11-04   Sat              9084
 2000      11               5  2000-11-05   Sun              8078
 2000      11               6  2000-11-06   Mon             11862
 2000      11               7  2000-11-07   Tues            12822
 2000      11               8  2000-11-08   Wed             12829
 2000      11               9  2000-11-09   Thurs           12778
 2000      11              10  2000-11-10   Fri             12554
 2000      11              11  2000-11-11   Sat              9318
 2000      11              12  2000-11-12   Sun              8070
 2000      11              13  2000-11-13   Mon             11480
 2000      11              14  2000-11-14   Tues            13153
 2000      11              15  2000-11-15   Wed             12953
 2000      11              16  2000-11-16   Thurs           13061
 2000      11              17  2000-11-17   Fri             12888
 2000      11              18  2000-11-18   Sat              9137
 2000      11              19  2000-11-19   Sun              8077
 2000      11              20  2000-11-20   Mon             12974
 2000      11              21  2000-11-21   Tues            13991
 2000      11              22  2000-11-22   Wed             12420
 2000      11              23  2000-11-23   Thurs            8144
 2000      11              24  2000-11-24   Fri              9805
 2000      11              25  2000-11-25   Sat              8537
 2000      11              26  2000-11-26   Sun              7950
 2000      11              27  2000-11-27   Mon             12175
 2000      11              28  2000-11-28   Tues            13799
 2000      11              29  2000-11-29   Wed             13114
 2000      11              30  2000-11-30   Thurs           12818
 2000      12               1  2000-12-01   Fri             12545
 2000      12               2  2000-12-02   Sat              8914
 2000      12               3  2000-12-03   Sun              7930
 2000      12               4  2000-12-04   Mon             11501
 2000      12               5  2000-12-05   Tues            12997
 2000      12               6  2000-12-06   Wed             12697
 2000      12               7  2000-12-07   Thurs           12820
 2000      12               8  2000-12-08   Fri             12548
 2000      12               9  2000-12-09   Sat              8853
 2000      12              10  2000-12-10   Sun              8022
 2000      12              11  2000-12-11   Mon             11811
 2000      12              12  2000-12-12   Tues            13627
 2000      12              13  2000-12-13   Wed             12567
 2000      12              14  2000-12-14   Thurs           12640
 2000      12              15  2000-12-15   Fri             12656
 2000      12              16  2000-12-16   Sat              9184
 2000      12              17  2000-12-17   Sun              8026
 2000      12              18  2000-12-18   Mon             12590
 2000      12              19  2000-12-19   Tues            13829
 2000      12              20  2000-12-20   Wed             13762
 2000      12              21  2000-12-21   Thurs           13524
 2000      12              22  2000-12-22   Fri             12248
 2000      12              23  2000-12-23   Sat              8484
 2000      12              24  2000-12-24   Sun              6971
 2000      12              25  2000-12-25   Mon              6719
 2000      12              26  2000-12-26   Tues            10395
 2000      12              27  2000-12-27   Wed             13252
 2000      12              28  2000-12-28   Thurs           13900
 2000      12              29  2000-12-29   Fri             13607
 2000      12              30  2000-12-30   Sat              9405
 2000      12              31  2000-12-31   Sun              7892
 2001       1               1  2001-01-01   Mon              7663
 2001       1               2  2001-01-02   Tues            10635
 2001       1               3  2001-01-03   Wed             12449
 2001       1               4  2001-01-04   Thurs           12678
 2001       1               5  2001-01-05   Fri             12647
 2001       1               6  2001-01-06   Sat              9180
 2001       1               7  2001-01-07   Sun              7883
 2001       1               8  2001-01-08   Mon             11447
 2001       1               9  2001-01-09   Tues            12386
 2001       1              10  2001-01-10   Wed             12455
 2001       1              11  2001-01-11   Thurs           12433
 2001       1              12  2001-01-12   Fri             12735
 2001       1              13  2001-01-13   Sat              8836
 2001       1              14  2001-01-14   Sun              7818
 2001       1              15  2001-01-15   Mon             10926
 2001       1              16  2001-01-16   Tues            12327
 2001       1              17  2001-01-17   Wed             12344
 2001       1              18  2001-01-18   Thurs           12648
 2001       1              19  2001-01-19   Fri             12339
 2001       1              20  2001-01-20   Sat              8771
 2001       1              21  2001-01-21   Sun              7850
 2001       1              22  2001-01-22   Mon             11444
 2001       1              23  2001-01-23   Tues            12446
 2001       1              24  2001-01-24   Wed             12244
 2001       1              25  2001-01-25   Thurs           12570
 2001       1              26  2001-01-26   Fri             12191
 2001       1              27  2001-01-27   Sat              8795
 2001       1              28  2001-01-28   Sun              7761
 2001       1              29  2001-01-29   Mon             11513
 2001       1              30  2001-01-30   Tues            12488
 2001       1              31  2001-01-31   Wed             12477
 2001       2               1  2001-02-01   Thurs           12477
 2001       2               2  2001-02-02   Fri             12470
 2001       2               3  2001-02-03   Sat              8650
 2001       2               4  2001-02-04   Sun              7716
 2001       2               5  2001-02-05   Mon             11825
 2001       2               6  2001-02-06   Tues            12536
 2001       2               7  2001-02-07   Wed             12343
 2001       2               8  2001-02-08   Thurs           12390
 2001       2               9  2001-02-09   Fri             12343
 2001       2              10  2001-02-10   Sat              8791
 2001       2              11  2001-02-11   Sun              7563
 2001       2              12  2001-02-12   Mon             11670
 2001       2              13  2001-02-13   Tues            12267
 2001       2              14  2001-02-14   Wed             13191
 2001       2              15  2001-02-15   Thurs           12632
 2001       2              16  2001-02-16   Fri             12355
 2001       2              17  2001-02-17   Sat              8609
 2001       2              18  2001-02-18   Sun              7555
 2001       2              19  2001-02-19   Mon             10522
 2001       2              20  2001-02-20   Tues            12373
 2001       2              21  2001-02-21   Wed             12492
 2001       2              22  2001-02-22   Thurs           12482
 2001       2              23  2001-02-23   Fri             12242
 2001       2              24  2001-02-24   Sat              8656
 2001       2              25  2001-02-25   Sun              7794
 2001       2              26  2001-02-26   Mon             11332
 2001       2              27  2001-02-27   Tues            12334
 2001       2              28  2001-02-28   Wed             12209
 2001       3               1  2001-03-01   Thurs           12530
 2001       3               2  2001-03-02   Fri             12383
 2001       3               3  2001-03-03   Sat              8935
 2001       3               4  2001-03-04   Sun              7799
 2001       3               5  2001-03-05   Mon             11411
 2001       3               6  2001-03-06   Tues            12339
 2001       3               7  2001-03-07   Wed             12351
 2001       3               8  2001-03-08   Thurs           12440
 2001       3               9  2001-03-09   Fri             12461
 2001       3              10  2001-03-10   Sat              8807
 2001       3              11  2001-03-11   Sun              7697
 2001       3              12  2001-03-12   Mon             11595
 2001       3              13  2001-03-13   Tues            12534
 2001       3              14  2001-03-14   Wed             12578
 2001       3              15  2001-03-15   Thurs           12525
 2001       3              16  2001-03-16   Fri             12460
 2001       3              17  2001-03-17   Sat              9006
 2001       3              18  2001-03-18   Sun              7526
 2001       3              19  2001-03-19   Mon             11352
 2001       3              20  2001-03-20   Tues            12868
 2001       3              21  2001-03-21   Wed             12690
 2001       3              22  2001-03-22   Thurs           12472
 2001       3              23  2001-03-23   Fri             12432
 2001       3              24  2001-03-24   Sat              8830
 2001       3              25  2001-03-25   Sun              7800
 2001       3              26  2001-03-26   Mon             11290
 2001       3              27  2001-03-27   Tues            12570
 2001       3              28  2001-03-28   Wed             12469
 2001       3              29  2001-03-29   Thurs           12366
 2001       3              30  2001-03-30   Fri             12059
 2001       3              31  2001-03-31   Sat              8770
 2001       4               1  2001-04-01   Sun              7212
 2001       4               2  2001-04-02   Mon             11673
 2001       4               3  2001-04-03   Tues            12864
 2001       4               4  2001-04-04   Wed             12655
 2001       4               5  2001-04-05   Thurs           12438
 2001       4               6  2001-04-06   Fri             12407
 2001       4               7  2001-04-07   Sat              8755
 2001       4               8  2001-04-08   Sun              7718
 2001       4               9  2001-04-09   Mon             11617
 2001       4              10  2001-04-10   Tues            13031
 2001       4              11  2001-04-11   Wed             12912
 2001       4              12  2001-04-12   Thurs           12733
 2001       4              13  2001-04-13   Fri             10881
 2001       4              14  2001-04-14   Sat              8262
 2001       4              15  2001-04-15   Sun              7230
 2001       4              16  2001-04-16   Mon             11220
 2001       4              17  2001-04-17   Tues            12867
 2001       4              18  2001-04-18   Wed             12381
 2001       4              19  2001-04-19   Thurs           12257
 2001       4              20  2001-04-20   Fri             12296
 2001       4              21  2001-04-21   Sat              8849
 2001       4              22  2001-04-22   Sun              7758
 2001       4              23  2001-04-23   Mon             11672
 2001       4              24  2001-04-24   Tues            12981
 2001       4              25  2001-04-25   Wed             12728
 2001       4              26  2001-04-26   Thurs           12560
 2001       4              27  2001-04-27   Fri             12335
 2001       4              28  2001-04-28   Sat              8574
 2001       4              29  2001-04-29   Sun              7602
 2001       4              30  2001-04-30   Mon             11416
 2001       5               1  2001-05-01   Tues            13037
 2001       5               2  2001-05-02   Wed             12542
 2001       5               3  2001-05-03   Thurs           12596
 2001       5               4  2001-05-04   Fri             12276
 2001       5               5  2001-05-05   Sat              8795
 2001       5               6  2001-05-06   Sun              8001
 2001       5               7  2001-05-07   Mon             11635
 2001       5               8  2001-05-08   Tues            13032
 2001       5               9  2001-05-09   Wed             12477
 2001       5              10  2001-05-10   Thurs           12632
 2001       5              11  2001-05-11   Fri             12296
 2001       5              12  2001-05-12   Sat              8692
 2001       5              13  2001-05-13   Sun              7479
 2001       5              14  2001-05-14   Mon             11577
 2001       5              15  2001-05-15   Tues            13124
 2001       5              16  2001-05-16   Wed             12625
 2001       5              17  2001-05-17   Thurs           12630
 2001       5              18  2001-05-18   Fri             12313
 2001       5              19  2001-05-19   Sat              8803
 2001       5              20  2001-05-20   Sun              7732
 2001       5              21  2001-05-21   Mon             11680
 2001       5              22  2001-05-22   Tues            13047
 2001       5              23  2001-05-23   Wed             12936
 2001       5              24  2001-05-24   Thurs           13179
 2001       5              25  2001-05-25   Fri             12722
 2001       5              26  2001-05-26   Sat              8911
 2001       5              27  2001-05-27   Sun              7529
 2001       5              28  2001-05-28   Mon              7993
 2001       5              29  2001-05-29   Tues            12013
 2001       5              30  2001-05-30   Wed             13334
 2001       5              31  2001-05-31   Thurs           13051
 2001       6               1  2001-06-01   Fri             12677
 2001       6               2  2001-06-02   Sat              8920
 2001       6               3  2001-06-03   Sun              7887
 2001       6               4  2001-06-04   Mon             11500
 2001       6               5  2001-06-05   Tues            12683
 2001       6               6  2001-06-06   Wed             12804
 2001       6               7  2001-06-07   Thurs           12566
 2001       6               8  2001-06-08   Fri             12451
 2001       6               9  2001-06-09   Sat              8756
 2001       6              10  2001-06-10   Sun              7674
 2001       6              11  2001-06-11   Mon             11776
 2001       6              12  2001-06-12   Tues            13218
 2001       6              13  2001-06-13   Wed             12342
 2001       6              14  2001-06-14   Thurs           12655
 2001       6              15  2001-06-15   Fri             12394
 2001       6              16  2001-06-16   Sat              8780
 2001       6              17  2001-06-17   Sun              7722
 2001       6              18  2001-06-18   Mon             11756
 2001       6              19  2001-06-19   Tues            12785
 2001       6              20  2001-06-20   Wed             12704
 2001       6              21  2001-06-21   Thurs           12615
 2001       6              22  2001-06-22   Fri             12299
 2001       6              23  2001-06-23   Sat              8452
 2001       6              24  2001-06-24   Sun              7639
 2001       6              25  2001-06-25   Mon             11575
 2001       6              26  2001-06-26   Tues            12939
 2001       6              27  2001-06-27   Wed             12809
 2001       6              28  2001-06-28   Thurs           13059
 2001       6              29  2001-06-29   Fri             12922
 2001       6              30  2001-06-30   Sat              9247
 2001       7               1  2001-07-01   Sun              8145
 2001       7               2  2001-07-02   Mon             12390
 2001       7               3  2001-07-03   Tues            13364
 2001       7               4  2001-07-04   Wed              9608
 2001       7               5  2001-07-05   Thurs           12531
 2001       7               6  2001-07-06   Fri             13151
 2001       7               7  2001-07-07   Sat              9544
 2001       7               8  2001-07-08   Sun              8249
 2001       7               9  2001-07-09   Mon             12036
 2001       7              10  2001-07-10   Tues            13614
 2001       7              11  2001-07-11   Wed             13026
 2001       7              12  2001-07-12   Thurs           13188
 2001       7              13  2001-07-13   Fri             12187
 2001       7              14  2001-07-14   Sat              9269
 2001       7              15  2001-07-15   Sun              8047
 2001       7              16  2001-07-16   Mon             12383
 2001       7              17  2001-07-17   Tues            13657
 2001       7              18  2001-07-18   Wed             13241
 2001       7              19  2001-07-19   Thurs           13293
 2001       7              20  2001-07-20   Fri             12950
 2001       7              21  2001-07-21   Sat              9410
 2001       7              22  2001-07-22   Sun              8116
 2001       7              23  2001-07-23   Mon             12099
 2001       7              24  2001-07-24   Tues            13532
 2001       7              25  2001-07-25   Wed             12988
 2001       7              26  2001-07-26   Thurs           13022
 2001       7              27  2001-07-27   Fri             12677
 2001       7              28  2001-07-28   Sat              9102
 2001       7              29  2001-07-29   Sun              7892
 2001       7              30  2001-07-30   Mon             12150
 2001       7              31  2001-07-31   Tues            13218
 2001       8               1  2001-08-01   Wed             12960
 2001       8               2  2001-08-02   Thurs           13097
 2001       8               3  2001-08-03   Fri             12859
 2001       8               4  2001-08-04   Sat              9143
 2001       8               5  2001-08-05   Sun              8062
 2001       8               6  2001-08-06   Mon             12008
 2001       8               7  2001-08-07   Tues            13488
 2001       8               8  2001-08-08   Wed             13185
 2001       8               9  2001-08-09   Thurs           13339
 2001       8              10  2001-08-10   Fri             13094
 2001       8              11  2001-08-11   Sat              9275
 2001       8              12  2001-08-12   Sun              8261
 2001       8              13  2001-08-13   Mon             11682
 2001       8              14  2001-08-14   Tues            13325
 2001       8              15  2001-08-15   Wed             13332
 2001       8              16  2001-08-16   Thurs           13372
 2001       8              17  2001-08-17   Fri             13102
 2001       8              18  2001-08-18   Sat              9294
 2001       8              19  2001-08-19   Sun              7945
 2001       8              20  2001-08-20   Mon             12313
 2001       8              21  2001-08-21   Tues            13590
 2001       8              22  2001-08-22   Wed             13146
 2001       8              23  2001-08-23   Thurs           13158
 2001       8              24  2001-08-24   Fri             12996
 2001       8              25  2001-08-25   Sat              9229
 2001       8              26  2001-08-26   Sun              8115
 2001       8              27  2001-08-27   Mon             12080
 2001       8              28  2001-08-28   Tues            13792
 2001       8              29  2001-08-29   Wed             13160
 2001       8              30  2001-08-30   Thurs           13520
 2001       8              31  2001-08-31   Fri             13461
 2001       9               1  2001-09-01   Sat              9248
 2001       9               2  2001-09-02   Sun              8239
 2001       9               3  2001-09-03   Mon              8115
 2001       9               4  2001-09-04   Tues            12501
 2001       9               5  2001-09-05   Wed             14055
 2001       9               6  2001-09-06   Thurs           13925
 2001       9               7  2001-09-07   Fri             13721
 2001       9               8  2001-09-08   Sat              9344
 2001       9               9  2001-09-09   Sun              8347
 2001       9              10  2001-09-10   Mon             12459
 2001       9              11  2001-09-11   Tues            13590
 2001       9              12  2001-09-12   Wed             13149
 2001       9              13  2001-09-13   Thurs           13186
 2001       9              14  2001-09-14   Fri             13444
 2001       9              15  2001-09-15   Sat              9662
 2001       9              16  2001-09-16   Sun              8319
 2001       9              17  2001-09-17   Mon             12664
 2001       9              18  2001-09-18   Tues            13526
 2001       9              19  2001-09-19   Wed             13575
 2001       9              20  2001-09-20   Thurs           13750
 2001       9              21  2001-09-21   Fri             13341
 2001       9              22  2001-09-22   Sat              9607
 2001       9              23  2001-09-23   Sun              8495
 2001       9              24  2001-09-24   Mon             12564
 2001       9              25  2001-09-25   Tues            14063
 2001       9              26  2001-09-26   Wed             13441
 2001       9              27  2001-09-27   Thurs           13199
 2001       9              28  2001-09-28   Fri             13174
 2001       9              29  2001-09-29   Sat              9243
 2001       9              30  2001-09-30   Sun              8042
 2001      10               1  2001-10-01   Mon             12425
 2001      10               2  2001-10-02   Tues            13523
 2001      10               3  2001-10-03   Wed             13056
 2001      10               4  2001-10-04   Thurs           13182
 2001      10               5  2001-10-05   Fri             12851
 2001      10               6  2001-10-06   Sat              8872
 2001      10               7  2001-10-07   Sun              7744
 2001      10               8  2001-10-08   Mon             11531
 2001      10               9  2001-10-09   Tues            12886
 2001      10              10  2001-10-10   Wed             12858
 2001      10              11  2001-10-11   Thurs           12568
 2001      10              12  2001-10-12   Fri             12676
 2001      10              13  2001-10-13   Sat              8659
 2001      10              14  2001-10-14   Sun              7753
 2001      10              15  2001-10-15   Mon             11649
 2001      10              16  2001-10-16   Tues            12770
 2001      10              17  2001-10-17   Wed             12599
 2001      10              18  2001-10-18   Thurs           12579
 2001      10              19  2001-10-19   Fri             12359
 2001      10              20  2001-10-20   Sat              8747
 2001      10              21  2001-10-21   Sun              7506
 2001      10              22  2001-10-22   Mon             11705
 2001      10              23  2001-10-23   Tues            12896
 2001      10              24  2001-10-24   Wed             12676
 2001      10              25  2001-10-25   Thurs           12516
 2001      10              26  2001-10-26   Fri             12296
 2001      10              27  2001-10-27   Sat              8458
 2001      10              28  2001-10-28   Sun              7676
 2001      10              29  2001-10-29   Mon             11389
 2001      10              30  2001-10-30   Tues            12534
 2001      10              31  2001-10-31   Wed             10913
 2001      11               1  2001-11-01   Thurs           12879
 2001      11               2  2001-11-02   Fri             12374
 2001      11               3  2001-11-03   Sat              8572
 2001      11               4  2001-11-04   Sun              7533
 2001      11               5  2001-11-05   Mon             11668
 2001      11               6  2001-11-06   Tues            12662
 2001      11               7  2001-11-07   Wed             12419
 2001      11               8  2001-11-08   Thurs           12519
 2001      11               9  2001-11-09   Fri             12416
 2001      11              10  2001-11-10   Sat              8665
 2001      11              11  2001-11-11   Sun              7599
 2001      11              12  2001-11-12   Mon             11670
 2001      11              13  2001-11-13   Tues            12382
 2001      11              14  2001-11-14   Wed             12602
 2001      11              15  2001-11-15   Thurs           12936
 2001      11              16  2001-11-16   Fri             12979
 2001      11              17  2001-11-17   Sat              8774
 2001      11              18  2001-11-18   Sun              7495
 2001      11              19  2001-11-19   Mon             12709
 2001      11              20  2001-11-20   Tues            13603
 2001      11              21  2001-11-21   Wed             12167
 2001      11              22  2001-11-22   Thurs            7513
 2001      11              23  2001-11-23   Fri              9594
 2001      11              24  2001-11-24   Sat              8100
 2001      11              25  2001-11-25   Sun              7456
 2001      11              26  2001-11-26   Mon             11732
 2001      11              27  2001-11-27   Tues            13249
 2001      11              28  2001-11-28   Wed             12516
 2001      11              29  2001-11-29   Thurs           12474
 2001      11              30  2001-11-30   Fri             12019
 2001      12               1  2001-12-01   Sat              8255
 2001      12               2  2001-12-02   Sun              7385
 2001      12               3  2001-12-03   Mon             11548
 2001      12               4  2001-12-04   Tues            12605
 2001      12               5  2001-12-05   Wed             12609
 2001      12               6  2001-12-06   Thurs           12188
 2001      12               7  2001-12-07   Fri             11693
 2001      12               8  2001-12-08   Sat              8372
 2001      12               9  2001-12-09   Sun              7498
 2001      12              10  2001-12-10   Mon             11655
 2001      12              11  2001-12-11   Tues            12798
 2001      12              12  2001-12-12   Wed             12884
 2001      12              13  2001-12-13   Thurs           12230
 2001      12              14  2001-12-14   Fri             12405
 2001      12              15  2001-12-15   Sat              8615
 2001      12              16  2001-12-16   Sun              7432
 2001      12              17  2001-12-17   Mon             12392
 2001      12              18  2001-12-18   Tues            13657
 2001      12              19  2001-12-19   Wed             13404
 2001      12              20  2001-12-20   Thurs           13871
 2001      12              21  2001-12-21   Fri             13530
 2001      12              22  2001-12-22   Sat              9062
 2001      12              23  2001-12-23   Sun              7245
 2001      12              24  2001-12-24   Mon              7626
 2001      12              25  2001-12-25   Tues             6603
 2001      12              26  2001-12-26   Wed             11040
 2001      12              27  2001-12-27   Thurs           14151
 2001      12              28  2001-12-28   Fri             14235
 2001      12              29  2001-12-29   Sat              9563
 2001      12              30  2001-12-30   Sun              7840
 2001      12              31  2001-12-31   Mon             10272
 2002       1               1  2002-01-01   Tues             7927
 2002       1               2  2002-01-02   Wed             10723
 2002       1               3  2002-01-03   Thurs           12465
 2002       1               4  2002-01-04   Fri             12671
 2002       1               5  2002-01-05   Sat              8902
 2002       1               6  2002-01-06   Sun              7647
 2002       1               7  2002-01-07   Mon             11548
 2002       1               8  2002-01-08   Tues            12515
 2002       1               9  2002-01-09   Wed             11654
 2002       1              10  2002-01-10   Thurs           12596
 2002       1              11  2002-01-11   Fri             12276
 2002       1              12  2002-01-12   Sat              8591
 2002       1              13  2002-01-13   Sun              7471
 2002       1              14  2002-01-14   Mon             11530
 2002       1              15  2002-01-15   Tues            12369
 2002       1              16  2002-01-16   Wed             11996
 2002       1              17  2002-01-17   Thurs           12412
 2002       1              18  2002-01-18   Fri             12251
 2002       1              19  2002-01-19   Sat              8434
 2002       1              20  2002-01-20   Sun              7462
 2002       1              21  2002-01-21   Mon             10921
 2002       1              22  2002-01-22   Tues            12361
 2002       1              23  2002-01-23   Wed             12252
 2002       1              24  2002-01-24   Thurs           12549
 2002       1              25  2002-01-25   Fri             12069
 2002       1              26  2002-01-26   Sat              8530
 2002       1              27  2002-01-27   Sun              7510
 2002       1              28  2002-01-28   Mon             11354
 2002       1              29  2002-01-29   Tues            12215
 2002       1              30  2002-01-30   Wed             12146
 2002       1              31  2002-01-31   Thurs           12125
 2002       2               1  2002-02-01   Fri             12130
 2002       2               2  2002-02-02   Sat              9021
 2002       2               3  2002-02-03   Sun              7442
 2002       2               4  2002-02-04   Mon             11412
 2002       2               5  2002-02-05   Tues            12488
 2002       2               6  2002-02-06   Wed             12210
 2002       2               7  2002-02-07   Thurs           12418
 2002       2               8  2002-02-08   Fri             12444
 2002       2               9  2002-02-09   Sat              8706
 2002       2              10  2002-02-10   Sun              7569
 2002       2              11  2002-02-11   Mon             11547
 2002       2              12  2002-02-12   Tues            12779
 2002       2              13  2002-02-13   Wed             12069
 2002       2              14  2002-02-14   Thurs           13062
 2002       2              15  2002-02-15   Fri             12548
 2002       2              16  2002-02-16   Sat              8710
 2002       2              17  2002-02-17   Sun              7484
 2002       2              18  2002-02-18   Mon             10907
 2002       2              19  2002-02-19   Tues            12262
 2002       2              20  2002-02-20   Wed             12817
 2002       2              21  2002-02-21   Thurs           12384
 2002       2              22  2002-02-22   Fri             12667
 2002       2              23  2002-02-23   Sat              8639
 2002       2              24  2002-02-24   Sun              7488
 2002       2              25  2002-02-25   Mon             11547
 2002       2              26  2002-02-26   Tues            12487
 2002       2              27  2002-02-27   Wed             12303
 2002       2              28  2002-02-28   Thurs           12370
 2002       3               1  2002-03-01   Fri             12388
 2002       3               2  2002-03-02   Sat              8507
 2002       3               3  2002-03-03   Sun              7624
 2002       3               4  2002-03-04   Mon             11661
 2002       3               5  2002-03-05   Tues            12678
 2002       3               6  2002-03-06   Wed             12372
 2002       3               7  2002-03-07   Thurs           12525
 2002       3               8  2002-03-08   Fri             12244
 2002       3               9  2002-03-09   Sat              8606
 2002       3              10  2002-03-10   Sun              7633
 2002       3              11  2002-03-11   Mon             11197
 2002       3              12  2002-03-12   Tues            12667
 2002       3              13  2002-03-13   Wed             12031
 2002       3              14  2002-03-14   Thurs           12583
 2002       3              15  2002-03-15   Fri             12472
 2002       3              16  2002-03-16   Sat              8696
 2002       3              17  2002-03-17   Sun              7680
 2002       3              18  2002-03-18   Mon             11621
 2002       3              19  2002-03-19   Tues            12674
 2002       3              20  2002-03-20   Wed             12577
 2002       3              21  2002-03-21   Thurs           12502
 2002       3              22  2002-03-22   Fri             12252
 2002       3              23  2002-03-23   Sat              8569
 2002       3              24  2002-03-24   Sun              7419
 2002       3              25  2002-03-25   Mon             11507
 2002       3              26  2002-03-26   Tues            12840
 2002       3              27  2002-03-27   Wed             12568
 2002       3              28  2002-03-28   Thurs           12454
 2002       3              29  2002-03-29   Fri             11449
 2002       3              30  2002-03-30   Sat              8270
 2002       3              31  2002-03-31   Sun              7083
 2002       4               1  2002-04-01   Mon             10264
 2002       4               2  2002-04-02   Tues            12884
 2002       4               3  2002-04-03   Wed             12372
 2002       4               4  2002-04-04   Thurs           12262
 2002       4               5  2002-04-05   Fri             12006
 2002       4               6  2002-04-06   Sat              8301
 2002       4               7  2002-04-07   Sun              7109
 2002       4               8  2002-04-08   Mon             11706
 2002       4               9  2002-04-09   Tues            12741
 2002       4              10  2002-04-10   Wed             12418
 2002       4              11  2002-04-11   Thurs           12236
 2002       4              12  2002-04-12   Fri             12272
 2002       4              13  2002-04-13   Sat              8448
 2002       4              14  2002-04-14   Sun              7578
 2002       4              15  2002-04-15   Mon             11412
 2002       4              16  2002-04-16   Tues            12847
 2002       4              17  2002-04-17   Wed             12575
 2002       4              18  2002-04-18   Thurs           12490
 2002       4              19  2002-04-19   Fri             12297
 2002       4              20  2002-04-20   Sat              8224
 2002       4              21  2002-04-21   Sun              7298
 2002       4              22  2002-04-22   Mon             11576
 2002       4              23  2002-04-23   Tues            12457
 2002       4              24  2002-04-24   Wed             12297
 2002       4              25  2002-04-25   Thurs           12469
 2002       4              26  2002-04-26   Fri             11917
 2002       4              27  2002-04-27   Sat              8243
 2002       4              28  2002-04-28   Sun              7502
 2002       4              29  2002-04-29   Mon             11422
 2002       4              30  2002-04-30   Tues            12666
 2002       5               1  2002-05-01   Wed             12297
 2002       5               2  2002-05-02   Thurs           12405
 2002       5               3  2002-05-03   Fri             12130
 2002       5               4  2002-05-04   Sat              8215
 2002       5               5  2002-05-05   Sun              7447
 2002       5               6  2002-05-06   Mon             11362
 2002       5               7  2002-05-07   Tues            12505
 2002       5               8  2002-05-08   Wed             12334
 2002       5               9  2002-05-09   Thurs           12219
 2002       5              10  2002-05-10   Fri             12329
 2002       5              11  2002-05-11   Sat              8329
 2002       5              12  2002-05-12   Sun              7487
 2002       5              13  2002-05-13   Mon             11404
 2002       5              14  2002-05-14   Tues            12909
 2002       5              15  2002-05-15   Wed             12705
 2002       5              16  2002-05-16   Thurs           12609
 2002       5              17  2002-05-17   Fri             12218
 2002       5              18  2002-05-18   Sat              8528
 2002       5              19  2002-05-19   Sun              7470
 2002       5              20  2002-05-20   Mon             11788
 2002       5              21  2002-05-21   Tues            12916
 2002       5              22  2002-05-22   Wed             12670
 2002       5              23  2002-05-23   Thurs           13123
 2002       5              24  2002-05-24   Fri             12775
 2002       5              25  2002-05-25   Sat              8515
 2002       5              26  2002-05-26   Sun              7282
 2002       5              27  2002-05-27   Mon              7765
 2002       5              28  2002-05-28   Tues            12148
 2002       5              29  2002-05-29   Wed             13436
 2002       5              30  2002-05-30   Thurs           12963
 2002       5              31  2002-05-31   Fri             12568
 2002       6               1  2002-06-01   Sat              8547
 2002       6               2  2002-06-02   Sun              7662
 2002       6               3  2002-06-03   Mon             11433
 2002       6               4  2002-06-04   Tues            12616
 2002       6               5  2002-06-05   Wed             12663
 2002       6               6  2002-06-06   Thurs           12745
 2002       6               7  2002-06-07   Fri             12280
 2002       6               8  2002-06-08   Sat              8524
 2002       6               9  2002-06-09   Sun              7485
 2002       6              10  2002-06-10   Mon             11863
 2002       6              11  2002-06-11   Tues            12713
 2002       6              12  2002-06-12   Wed             12758
 2002       6              13  2002-06-13   Thurs           12457
 2002       6              14  2002-06-14   Fri             12562
 2002       6              15  2002-06-15   Sat              8708
 2002       6              16  2002-06-16   Sun              7685
 2002       6              17  2002-06-17   Mon             11738
 2002       6              18  2002-06-18   Tues            13139
 2002       6              19  2002-06-19   Wed             12598
 2002       6              20  2002-06-20   Thurs           12847
 2002       6              21  2002-06-21   Fri             12377
 2002       6              22  2002-06-22   Sat              8676
 2002       6              23  2002-06-23   Sun              7661
 2002       6              24  2002-06-24   Mon             11972
 2002       6              25  2002-06-25   Tues            13425
 2002       6              26  2002-06-26   Wed             13167
 2002       6              27  2002-06-27   Thurs           13310
 2002       6              28  2002-06-28   Fri             12996
 2002       6              29  2002-06-29   Sat              8994
 2002       6              30  2002-06-30   Sun              7831
 2002       7               1  2002-07-01   Mon             12584
 2002       7               2  2002-07-02   Tues            14187
 2002       7               3  2002-07-03   Wed             13626
 2002       7               4  2002-07-04   Thurs            9481
 2002       7               5  2002-07-05   Fri             11326
 2002       7               6  2002-07-06   Sat              8816
 2002       7               7  2002-07-07   Sun              8080
 2002       7               8  2002-07-08   Mon             12253
 2002       7               9  2002-07-09   Tues            13814
 2002       7              10  2002-07-10   Wed             13264
 2002       7              11  2002-07-11   Thurs           13215
 2002       7              12  2002-07-12   Fri             12760
 2002       7              13  2002-07-13   Sat              8896
 2002       7              14  2002-07-14   Sun              7884
 2002       7              15  2002-07-15   Mon             12370
 2002       7              16  2002-07-16   Tues            13606
 2002       7              17  2002-07-17   Wed             13396
 2002       7              18  2002-07-18   Thurs           13395
 2002       7              19  2002-07-19   Fri             12900
 2002       7              20  2002-07-20   Sat              8799
 2002       7              21  2002-07-21   Sun              7954
 2002       7              22  2002-07-22   Mon             12194
 2002       7              23  2002-07-23   Tues            13630
 2002       7              24  2002-07-24   Wed             13231
 2002       7              25  2002-07-25   Thurs           13345
 2002       7              26  2002-07-26   Fri             12914
 2002       7              27  2002-07-27   Sat              9073
 2002       7              28  2002-07-28   Sun              7915
 2002       7              29  2002-07-29   Mon             12148
 2002       7              30  2002-07-30   Tues            13593
 2002       7              31  2002-07-31   Wed             13311
 2002       8               1  2002-08-01   Thurs           13267
 2002       8               2  2002-08-02   Fri             13127
 2002       8               3  2002-08-03   Sat              8963
 2002       8               4  2002-08-04   Sun              7833
 2002       8               5  2002-08-05   Mon             12191
 2002       8               6  2002-08-06   Tues            13407
 2002       8               7  2002-08-07   Wed             13035
 2002       8               8  2002-08-08   Thurs           13420
 2002       8               9  2002-08-09   Fri             12893
 2002       8              10  2002-08-10   Sat              9078
 2002       8              11  2002-08-11   Sun              7970
 2002       8              12  2002-08-12   Mon             12311
 2002       8              13  2002-08-13   Tues            13603
 2002       8              14  2002-08-14   Wed             13302
 2002       8              15  2002-08-15   Thurs           13551
 2002       8              16  2002-08-16   Fri             13132
 2002       8              17  2002-08-17   Sat              9298
 2002       8              18  2002-08-18   Sun              7925
 2002       8              19  2002-08-19   Mon             12299
 2002       8              20  2002-08-20   Tues            13820
 2002       8              21  2002-08-21   Wed             13356
 2002       8              22  2002-08-22   Thurs           13232
 2002       8              23  2002-08-23   Fri             13133
 2002       8              24  2002-08-24   Sat              9086
 2002       8              25  2002-08-25   Sun              7961
 2002       8              26  2002-08-26   Mon             12182
 2002       8              27  2002-08-27   Tues            13788
 2002       8              28  2002-08-28   Wed             13398
 2002       8              29  2002-08-29   Thurs           13426
 2002       8              30  2002-08-30   Fri             13300
 2002       8              31  2002-08-31   Sat              9122
 2002       9               1  2002-09-01   Sun              7947
 2002       9               2  2002-09-02   Mon              8297
 2002       9               3  2002-09-03   Tues            12613
 2002       9               4  2002-09-04   Wed             13969
 2002       9               5  2002-09-05   Thurs           14021
 2002       9               6  2002-09-06   Fri             13680
 2002       9               7  2002-09-07   Sat              9354
 2002       9               8  2002-09-08   Sun              8077
 2002       9               9  2002-09-09   Mon             12875
 2002       9              10  2002-09-10   Tues            13940
 2002       9              11  2002-09-11   Wed             12655
 2002       9              12  2002-09-12   Thurs           14247
 2002       9              13  2002-09-13   Fri             13028
 2002       9              14  2002-09-14   Sat              9388
 2002       9              15  2002-09-15   Sun              8433
 2002       9              16  2002-09-16   Mon             12793
 2002       9              17  2002-09-17   Tues            14241
 2002       9              18  2002-09-18   Wed             13953
 2002       9              19  2002-09-19   Thurs           13899
 2002       9              20  2002-09-20   Fri             13721
 2002       9              21  2002-09-21   Sat              9613
 2002       9              22  2002-09-22   Sun              8222
 2002       9              23  2002-09-23   Mon             12795
 2002       9              24  2002-09-24   Tues            14205
 2002       9              25  2002-09-25   Wed             13518
 2002       9              26  2002-09-26   Thurs           13469
 2002       9              27  2002-09-27   Fri             13298
 2002       9              28  2002-09-28   Sat              9250
 2002       9              29  2002-09-29   Sun              7968
 2002       9              30  2002-09-30   Mon             12232
 2002      10               1  2002-10-01   Tues            13625
 2002      10               2  2002-10-02   Wed             13512
 2002      10               3  2002-10-03   Thurs           13044
 2002      10               4  2002-10-04   Fri             12814
 2002      10               5  2002-10-05   Sat              8922
 2002      10               6  2002-10-06   Sun              7801
 2002      10               7  2002-10-07   Mon             11970
 2002      10               8  2002-10-08   Tues            13066
 2002      10               9  2002-10-09   Wed             12658
 2002      10              10  2002-10-10   Thurs           12684
 2002      10              11  2002-10-11   Fri             12467
 2002      10              12  2002-10-12   Sat              8451
 2002      10              13  2002-10-13   Sun              7416
 2002      10              14  2002-10-14   Mon             11559
 2002      10              15  2002-10-15   Tues            12788
 2002      10              16  2002-10-16   Wed             12642
 2002      10              17  2002-10-17   Thurs           12507
 2002      10              18  2002-10-18   Fri             12197
 2002      10              19  2002-10-19   Sat              8534
 2002      10              20  2002-10-20   Sun              7405
 2002      10              21  2002-10-21   Mon             11690
 2002      10              22  2002-10-22   Tues            13214
 2002      10              23  2002-10-23   Wed             12656
 2002      10              24  2002-10-24   Thurs           12679
 2002      10              25  2002-10-25   Fri             12523
 2002      10              26  2002-10-26   Sat              8414
 2002      10              27  2002-10-27   Sun              7690
 2002      10              28  2002-10-28   Mon             11853
 2002      10              29  2002-10-29   Tues            12833
 2002      10              30  2002-10-30   Wed             12274
 2002      10              31  2002-10-31   Thurs           10850
 2002      11               1  2002-11-01   Fri             12591
 2002      11               2  2002-11-02   Sat              8561
 2002      11               3  2002-11-03   Sun              7502
 2002      11               4  2002-11-04   Mon             11761
 2002      11               5  2002-11-05   Tues            12906
 2002      11               6  2002-11-06   Wed             12602
 2002      11               7  2002-11-07   Thurs           12653
 2002      11               8  2002-11-08   Fri             12472
 2002      11               9  2002-11-09   Sat              8615
 2002      11              10  2002-11-10   Sun              7691
 2002      11              11  2002-11-11   Mon             11509
 2002      11              12  2002-11-12   Tues            12725
 2002      11              13  2002-11-13   Wed             12097
 2002      11              14  2002-11-14   Thurs           12485
 2002      11              15  2002-11-15   Fri             12273
 2002      11              16  2002-11-16   Sat              8295
 2002      11              17  2002-11-17   Sun              7353
 2002      11              18  2002-11-18   Mon             11790
 2002      11              19  2002-11-19   Tues            12716
 2002      11              20  2002-11-20   Wed             12574
 2002      11              21  2002-11-21   Thurs           12716
 2002      11              22  2002-11-22   Fri             12978
 2002      11              23  2002-11-23   Sat              8581
 2002      11              24  2002-11-24   Sun              7650
 2002      11              25  2002-11-25   Mon             12470
 2002      11              26  2002-11-26   Tues            13377
 2002      11              27  2002-11-27   Wed             11544
 2002      11              28  2002-11-28   Thurs            7392
 2002      11              29  2002-11-29   Fri              9341
 2002      11              30  2002-11-30   Sat              8159
 2002      12               1  2002-12-01   Sun              7402
 2002      12               2  2002-12-02   Mon             11929
 2002      12               3  2002-12-03   Tues            13314
 2002      12               4  2002-12-04   Wed             12684
 2002      12               5  2002-12-05   Thurs           12596
 2002      12               6  2002-12-06   Fri             11775
 2002      12               7  2002-12-07   Sat              8513
 2002      12               8  2002-12-08   Sun              7339
 2002      12               9  2002-12-09   Mon             11547
 2002      12              10  2002-12-10   Tues            12867
 2002      12              11  2002-12-11   Wed             12632
 2002      12              12  2002-12-12   Thurs           12850
 2002      12              13  2002-12-13   Fri             11600
 2002      12              14  2002-12-14   Sat              8420
 2002      12              15  2002-12-15   Sun              7516
 2002      12              16  2002-12-16   Mon             12344
 2002      12              17  2002-12-17   Tues            13454
 2002      12              18  2002-12-18   Wed             13580
 2002      12              19  2002-12-19   Thurs           13665
 2002      12              20  2002-12-20   Fri             14015
 2002      12              21  2002-12-21   Sat              9092
 2002      12              22  2002-12-22   Sun              7607
 2002      12              23  2002-12-23   Mon             11396
 2002      12              24  2002-12-24   Tues             9131
 2002      12              25  2002-12-25   Wed              6774
 2002      12              26  2002-12-26   Thurs           11242
 2002      12              27  2002-12-27   Fri             13650
 2002      12              28  2002-12-28   Sat              9114
 2002      12              29  2002-12-29   Sun              8035
 2002      12              30  2002-12-30   Mon             13158
 2002      12              31  2002-12-31   Tues            12582
 2003       1               1  2003-01-01   Wed              7908
 2003       1               2  2003-01-02   Thurs           11124
 2003       1               3  2003-01-03   Fri             12252
 2003       1               4  2003-01-04   Sat              8519
 2003       1               5  2003-01-05   Sun              7495
 2003       1               6  2003-01-06   Mon             11364
 2003       1               7  2003-01-07   Tues            12657
 2003       1               8  2003-01-08   Wed             12167
 2003       1               9  2003-01-09   Thurs           12081
 2003       1              10  2003-01-10   Fri             12517
 2003       1              11  2003-01-11   Sat              8471
 2003       1              12  2003-01-12   Sun              7297
 2003       1              13  2003-01-13   Mon             11197
 2003       1              14  2003-01-14   Tues            12918
 2003       1              15  2003-01-15   Wed             12140
 2003       1              16  2003-01-16   Thurs           12136
 2003       1              17  2003-01-17   Fri             12110
 2003       1              18  2003-01-18   Sat              8431
 2003       1              19  2003-01-19   Sun              7498
 2003       1              20  2003-01-20   Mon             11045
 2003       1              21  2003-01-21   Tues            12288
 2003       1              22  2003-01-22   Wed             12097
 2003       1              23  2003-01-23   Thurs           12185
 2003       1              24  2003-01-24   Fri             12107
 2003       1              25  2003-01-25   Sat              8379
 2003       1              26  2003-01-26   Sun              7389
 2003       1              27  2003-01-27   Mon             11418
 2003       1              28  2003-01-28   Tues            12595
 2003       1              29  2003-01-29   Wed             12100
 2003       1              30  2003-01-30   Thurs           12289
 2003       1              31  2003-01-31   Fri             11989
 2003       2               1  2003-02-01   Sat              8667
 2003       2               2  2003-02-02   Sun              7685
 2003       2               3  2003-02-03   Mon             11498
 2003       2               4  2003-02-04   Tues            12566
 2003       2               5  2003-02-05   Wed             12011
 2003       2               6  2003-02-06   Thurs           12352
 2003       2               7  2003-02-07   Fri             12381
 2003       2               8  2003-02-08   Sat              8573
 2003       2               9  2003-02-09   Sun              7482
 2003       2              10  2003-02-10   Mon             11996
 2003       2              11  2003-02-11   Tues            12961
 2003       2              12  2003-02-12   Wed             12595
 2003       2              13  2003-02-13   Thurs           12340
 2003       2              14  2003-02-14   Fri             13051
 2003       2              15  2003-02-15   Sat              8850
 2003       2              16  2003-02-16   Sun              7669
 2003       2              17  2003-02-17   Mon             10707
 2003       2              18  2003-02-18   Tues            12637
 2003       2              19  2003-02-19   Wed             12626
 2003       2              20  2003-02-20   Thurs           12545
 2003       2              21  2003-02-21   Fri             12689
 2003       2              22  2003-02-22   Sat              8883
 2003       2              23  2003-02-23   Sun              7723
 2003       2              24  2003-02-24   Mon             11874
 2003       2              25  2003-02-25   Tues            12882
 2003       2              26  2003-02-26   Wed             12356
 2003       2              27  2003-02-27   Thurs           12657
 2003       2              28  2003-02-28   Fri             12533
 2003       3               1  2003-03-01   Sat              8587
 2003       3               2  2003-03-02   Sun              7545
 2003       3               3  2003-03-03   Mon             12774
 2003       3               4  2003-03-04   Tues            12871
 2003       3               5  2003-03-05   Wed             12483
 2003       3               6  2003-03-06   Thurs           12604
 2003       3               7  2003-03-07   Fri             12503
 2003       3               8  2003-03-08   Sat              8649
 2003       3               9  2003-03-09   Sun              7387
 2003       3              10  2003-03-10   Mon             11671
 2003       3              11  2003-03-11   Tues            12935
 2003       3              12  2003-03-12   Wed             12520
 2003       3              13  2003-03-13   Thurs           12333
 2003       3              14  2003-03-14   Fri             12770
 2003       3              15  2003-03-15   Sat              8601
 2003       3              16  2003-03-16   Sun              7472
 2003       3              17  2003-03-17   Mon             11990
 2003       3              18  2003-03-18   Tues            12960
 2003       3              19  2003-03-19   Wed             12587
 2003       3              20  2003-03-20   Thurs           12755
 2003       3              21  2003-03-21   Fri             12653
 2003       3              22  2003-03-22   Sat              8488
 2003       3              23  2003-03-23   Sun              7420
 2003       3              24  2003-03-24   Mon             11654
 2003       3              25  2003-03-25   Tues            13054
 2003       3              26  2003-03-26   Wed             12549
 2003       3              27  2003-03-27   Thurs           12601
 2003       3              28  2003-03-28   Fri             12493
 2003       3              29  2003-03-29   Sat              8691
 2003       3              30  2003-03-30   Sun              7493
 2003       3              31  2003-03-31   Mon             11481
 2003       4               1  2003-04-01   Tues            12000
 2003       4               2  2003-04-02   Wed             12994
 2003       4               3  2003-04-03   Thurs           12599
 2003       4               4  2003-04-04   Fri             12669
 2003       4               5  2003-04-05   Sat              8440
 2003       4               6  2003-04-06   Sun              7265
 2003       4               7  2003-04-07   Mon             11750
 2003       4               8  2003-04-08   Tues            13020
 2003       4               9  2003-04-09   Wed             12397
 2003       4              10  2003-04-10   Thurs           12689
 2003       4              11  2003-04-11   Fri             12397
 2003       4              12  2003-04-12   Sat              8517
 2003       4              13  2003-04-13   Sun              7234
 2003       4              14  2003-04-14   Mon             11800
 2003       4              15  2003-04-15   Tues            13055
 2003       4              16  2003-04-16   Wed             12947
 2003       4              17  2003-04-17   Thurs           12926
 2003       4              18  2003-04-18   Fri             11680
 2003       4              19  2003-04-19   Sat              8155
 2003       4              20  2003-04-20   Sun              7155
 2003       4              21  2003-04-21   Mon             11465
 2003       4              22  2003-04-22   Tues            12696
 2003       4              23  2003-04-23   Wed             12616
 2003       4              24  2003-04-24   Thurs           12530
 2003       4              25  2003-04-25   Fri             12255
 2003       4              26  2003-04-26   Sat              8343
 2003       4              27  2003-04-27   Sun              7453
 2003       4              28  2003-04-28   Mon             11666
 2003       4              29  2003-04-29   Tues            12672
 2003       4              30  2003-04-30   Wed             12306
 2003       5               1  2003-05-01   Thurs           12727
 2003       5               2  2003-05-02   Fri             12549
 2003       5               3  2003-05-03   Sat              8488
 2003       5               4  2003-05-04   Sun              7551
 2003       5               5  2003-05-05   Mon             12001
 2003       5               6  2003-05-06   Tues            13165
 2003       5               7  2003-05-07   Wed             12667
 2003       5               8  2003-05-08   Thurs           12902
 2003       5               9  2003-05-09   Fri             12710
 2003       5              10  2003-05-10   Sat              8706
 2003       5              11  2003-05-11   Sun              7576
 2003       5              12  2003-05-12   Mon             12118
 2003       5              13  2003-05-13   Tues            12685
 2003       5              14  2003-05-14   Wed             12833
 2003       5              15  2003-05-15   Thurs           13074
 2003       5              16  2003-05-16   Fri             12840
 2003       5              17  2003-05-17   Sat              8687
 2003       5              18  2003-05-18   Sun              7606
 2003       5              19  2003-05-19   Mon             12035
 2003       5              20  2003-05-20   Tues            13239
 2003       5              21  2003-05-21   Wed             13380
 2003       5              22  2003-05-22   Thurs           13393
 2003       5              23  2003-05-23   Fri             13176
 2003       5              24  2003-05-24   Sat              8769
 2003       5              25  2003-05-25   Sun              7690
 2003       5              26  2003-05-26   Mon              7933
 2003       5              27  2003-05-27   Tues            12390
 2003       5              28  2003-05-28   Wed             13854
 2003       5              29  2003-05-29   Thurs           13497
 2003       5              30  2003-05-30   Fri             13224
 2003       5              31  2003-05-31   Sat              8850
 2003       6               1  2003-06-01   Sun              7650
 2003       6               2  2003-06-02   Mon             12041
 2003       6               3  2003-06-03   Tues            13090
 2003       6               4  2003-06-04   Wed             12853
 2003       6               5  2003-06-05   Thurs           12850
 2003       6               6  2003-06-06   Fri             12869
 2003       6               7  2003-06-07   Sat              8670
 2003       6               8  2003-06-08   Sun              7606
 2003       6               9  2003-06-09   Mon             11917
 2003       6              10  2003-06-10   Tues            13326
 2003       6              11  2003-06-11   Wed             13154
 2003       6              12  2003-06-12   Thurs           13092
 2003       6              13  2003-06-13   Fri             12013
 2003       6              14  2003-06-14   Sat              8696
 2003       6              15  2003-06-15   Sun              7680
 2003       6              16  2003-06-16   Mon             12388
 2003       6              17  2003-06-17   Tues            13443
 2003       6              18  2003-06-18   Wed             13082
 2003       6              19  2003-06-19   Thurs           12975
 2003       6              20  2003-06-20   Fri             12693
 2003       6              21  2003-06-21   Sat              8734
 2003       6              22  2003-06-22   Sun              7742
 2003       6              23  2003-06-23   Mon             12236
 2003       6              24  2003-06-24   Tues            13578
 2003       6              25  2003-06-25   Wed             13468
 2003       6              26  2003-06-26   Thurs           13330
 2003       6              27  2003-06-27   Fri             12862
 2003       6              28  2003-06-28   Sat              8862
 2003       6              29  2003-06-29   Sun              7723
 2003       6              30  2003-06-30   Mon             12261
 2003       7               1  2003-07-01   Tues            13930
 2003       7               2  2003-07-02   Wed             13823
 2003       7               3  2003-07-03   Thurs           13487
 2003       7               4  2003-07-04   Fri              9504
 2003       7               5  2003-07-05   Sat              8269
 2003       7               6  2003-07-06   Sun              7871
 2003       7               7  2003-07-07   Mon             12630
 2003       7               8  2003-07-08   Tues            13906
 2003       7               9  2003-07-09   Wed             13508
 2003       7              10  2003-07-10   Thurs           13600
 2003       7              11  2003-07-11   Fri             13096
 2003       7              12  2003-07-12   Sat              8908
 2003       7              13  2003-07-13   Sun              7946
 2003       7              14  2003-07-14   Mon             12281
 2003       7              15  2003-07-15   Tues            13711
 2003       7              16  2003-07-16   Wed             13480
 2003       7              17  2003-07-17   Thurs           13729
 2003       7              18  2003-07-18   Fri             13225
 2003       7              19  2003-07-19   Sat              8926
 2003       7              20  2003-07-20   Sun              8058
 2003       7              21  2003-07-21   Mon             12419
 2003       7              22  2003-07-22   Tues            13775
 2003       7              23  2003-07-23   Wed             13539
 2003       7              24  2003-07-24   Thurs           13569
 2003       7              25  2003-07-25   Fri             12977
 2003       7              26  2003-07-26   Sat              8978
 2003       7              27  2003-07-27   Sun              7830
 2003       7              28  2003-07-28   Mon             12434
 2003       7              29  2003-07-29   Tues            13825
 2003       7              30  2003-07-30   Wed             13557
 2003       7              31  2003-07-31   Thurs           13445
 2003       8               1  2003-08-01   Fri             13242
 2003       8               2  2003-08-02   Sat              8882
 2003       8               3  2003-08-03   Sun              7838
 2003       8               4  2003-08-04   Mon             12233
 2003       8               5  2003-08-05   Tues            13735
 2003       8               6  2003-08-06   Wed             13363
 2003       8               7  2003-08-07   Thurs           13539
 2003       8               8  2003-08-08   Fri             13352
 2003       8               9  2003-08-09   Sat              9226
 2003       8              10  2003-08-10   Sun              7954
 2003       8              11  2003-08-11   Mon             12282
 2003       8              12  2003-08-12   Tues            13995
 2003       8              13  2003-08-13   Wed             13202
 2003       8              14  2003-08-14   Thurs           13391
 2003       8              15  2003-08-15   Fri             13206
 2003       8              16  2003-08-16   Sat              9316
 2003       8              17  2003-08-17   Sun              8181
 2003       8              18  2003-08-18   Mon             12437
 2003       8              19  2003-08-19   Tues            13831
 2003       8              20  2003-08-20   Wed             13464
 2003       8              21  2003-08-21   Thurs           13528
 2003       8              22  2003-08-22   Fri             13478
 2003       8              23  2003-08-23   Sat              9240
 2003       8              24  2003-08-24   Sun              7936
 2003       8              25  2003-08-25   Mon             12631
 2003       8              26  2003-08-26   Tues            14008
 2003       8              27  2003-08-27   Wed             13854
 2003       8              28  2003-08-28   Thurs           14099
 2003       8              29  2003-08-29   Fri             13769
 2003       8              30  2003-08-30   Sat              9344
 2003       8              31  2003-08-31   Sun              7865
 2003       9               1  2003-09-01   Mon              8164
 2003       9               2  2003-09-02   Tues            12684
 2003       9               3  2003-09-03   Wed             14427
 2003       9               4  2003-09-04   Thurs           14161
 2003       9               5  2003-09-05   Fri             13897
 2003       9               6  2003-09-06   Sat              9400
 2003       9               7  2003-09-07   Sun              8188
 2003       9               8  2003-09-08   Mon             12701
 2003       9               9  2003-09-09   Tues            13869
 2003       9              10  2003-09-10   Wed             14180
 2003       9              11  2003-09-11   Thurs           13196
 2003       9              12  2003-09-12   Fri             13848
 2003       9              13  2003-09-13   Sat              9574
 2003       9              14  2003-09-14   Sun              8500
 2003       9              15  2003-09-15   Mon             13068
 2003       9              16  2003-09-16   Tues            14399
 2003       9              17  2003-09-17   Wed             14018
 2003       9              18  2003-09-18   Thurs           14066
 2003       9              19  2003-09-19   Fri             13560
 2003       9              20  2003-09-20   Sat              9688
 2003       9              21  2003-09-21   Sun              8500
 2003       9              22  2003-09-22   Mon             12987
 2003       9              23  2003-09-23   Tues            14376
 2003       9              24  2003-09-24   Wed             13841
 2003       9              25  2003-09-25   Thurs           13865
 2003       9              26  2003-09-26   Fri             13846
 2003       9              27  2003-09-27   Sat              9177
 2003       9              28  2003-09-28   Sun              8206
 2003       9              29  2003-09-29   Mon             12522
 2003       9              30  2003-09-30   Tues            13413
 2003      10               1  2003-10-01   Wed             13398
 2003      10               2  2003-10-02   Thurs           13638
 2003      10               3  2003-10-03   Fri             13284
 2003      10               4  2003-10-04   Sat              8983
 2003      10               5  2003-10-05   Sun              7744
 2003      10               6  2003-10-06   Mon             12104
 2003      10               7  2003-10-07   Tues            13523
 2003      10               8  2003-10-08   Wed             13509
 2003      10               9  2003-10-09   Thurs           13285
 2003      10              10  2003-10-10   Fri             13306
 2003      10              11  2003-10-11   Sat              8721
 2003      10              12  2003-10-12   Sun              7816
 2003      10              13  2003-10-13   Mon             11455
 2003      10              14  2003-10-14   Tues            13274
 2003      10              15  2003-10-15   Wed             12949
 2003      10              16  2003-10-16   Thurs           12711
 2003      10              17  2003-10-17   Fri             12676
 2003      10              18  2003-10-18   Sat              8564
 2003      10              19  2003-10-19   Sun              7561
 2003      10              20  2003-10-20   Mon             12073
 2003      10              21  2003-10-21   Tues            13300
 2003      10              22  2003-10-22   Wed             13054
 2003      10              23  2003-10-23   Thurs           12817
 2003      10              24  2003-10-24   Fri             12566
 2003      10              25  2003-10-25   Sat              8568
 2003      10              26  2003-10-26   Sun              7818
 2003      10              27  2003-10-27   Mon             11956
 2003      10              28  2003-10-28   Tues            13426
 2003      10              29  2003-10-29   Wed             12950
 2003      10              30  2003-10-30   Thurs           12600
 2003      10              31  2003-10-31   Fri             11005
 2003      11               1  2003-11-01   Sat              8491
 2003      11               2  2003-11-02   Sun              7716
 2003      11               3  2003-11-03   Mon             12443
 2003      11               4  2003-11-04   Tues            13374
 2003      11               5  2003-11-05   Wed             12998
 2003      11               6  2003-11-06   Thurs           12801
 2003      11               7  2003-11-07   Fri             12535
 2003      11               8  2003-11-08   Sat              8719
 2003      11               9  2003-11-09   Sun              7481
 2003      11              10  2003-11-10   Mon             12117
 2003      11              11  2003-11-11   Tues            13166
 2003      11              12  2003-11-12   Wed             12680
 2003      11              13  2003-11-13   Thurs           12438
 2003      11              14  2003-11-14   Fri             12433
 2003      11              15  2003-11-15   Sat              8309
 2003      11              16  2003-11-16   Sun              7486
 2003      11              17  2003-11-17   Mon             12006
 2003      11              18  2003-11-18   Tues            13330
 2003      11              19  2003-11-19   Wed             12879
 2003      11              20  2003-11-20   Thurs           12988
 2003      11              21  2003-11-21   Fri             13036
 2003      11              22  2003-11-22   Sat              8623
 2003      11              23  2003-11-23   Sun              7383
 2003      11              24  2003-11-24   Mon             13035
 2003      11              25  2003-11-25   Tues            13732
 2003      11              26  2003-11-26   Wed             12069
 2003      11              27  2003-11-27   Thurs            7340
 2003      11              28  2003-11-28   Fri              9407
 2003      11              29  2003-11-29   Sat              8043
 2003      11              30  2003-11-30   Sun              7330
 2003      12               1  2003-12-01   Mon             12213
 2003      12               2  2003-12-02   Tues            13454
 2003      12               3  2003-12-03   Wed             13199
 2003      12               4  2003-12-04   Thurs           12631
 2003      12               5  2003-12-05   Fri             12180
 2003      12               6  2003-12-06   Sat              8247
 2003      12               7  2003-12-07   Sun              7383
 2003      12               8  2003-12-08   Mon             11708
 2003      12               9  2003-12-09   Tues            13001
 2003      12              10  2003-12-10   Wed             12739
 2003      12              11  2003-12-11   Thurs           12502
 2003      12              12  2003-12-12   Fri             12484
 2003      12              13  2003-12-13   Sat              8303
 2003      12              14  2003-12-14   Sun              7462
 2003      12              15  2003-12-15   Mon             12319
 2003      12              16  2003-12-16   Tues            13649
 2003      12              17  2003-12-17   Wed             13454
 2003      12              18  2003-12-18   Thurs           13865
 2003      12              19  2003-12-19   Fri             13693
 2003      12              20  2003-12-20   Sat              8953
 2003      12              21  2003-12-21   Sun              7657
 2003      12              22  2003-12-22   Mon             13249
 2003      12              23  2003-12-23   Tues            12939
 2003      12              24  2003-12-24   Wed              9272
 2003      12              25  2003-12-25   Thurs            6744
 2003      12              26  2003-12-26   Fri             10431
 2003      12              27  2003-12-27   Sat              8785
 2003      12              28  2003-12-28   Sun              7763
 2003      12              29  2003-12-29   Mon             13125
 2003      12              30  2003-12-30   Tues            14700
 2003      12              31  2003-12-31   Wed             12540
 2004       1               1  2004-01-01   Thurs            8205
 2004       1               2  2004-01-02   Fri             10586
 2004       1               3  2004-01-03   Sat              8337
 2004       1               4  2004-01-04   Sun              7359
 2004       1               5  2004-01-05   Mon             11489
 2004       1               6  2004-01-06   Tues            12755
 2004       1               7  2004-01-07   Wed             12716
 2004       1               8  2004-01-08   Thurs           12781
 2004       1               9  2004-01-09   Fri             12469
 2004       1              10  2004-01-10   Sat              8337
 2004       1              11  2004-01-11   Sun              7316
 2004       1              12  2004-01-12   Mon             11813
 2004       1              13  2004-01-13   Tues            12639
 2004       1              14  2004-01-14   Wed             12965
 2004       1              15  2004-01-15   Thurs           12837
 2004       1              16  2004-01-16   Fri             12424
 2004       1              17  2004-01-17   Sat              8442
 2004       1              18  2004-01-18   Sun              7512
 2004       1              19  2004-01-19   Mon             11152
 2004       1              20  2004-01-20   Tues            12810
 2004       1              21  2004-01-21   Wed             12753
 2004       1              22  2004-01-22   Thurs           12675
 2004       1              23  2004-01-23   Fri             12643
 2004       1              24  2004-01-24   Sat              8632
 2004       1              25  2004-01-25   Sun              7556
 2004       1              26  2004-01-26   Mon             11611
 2004       1              27  2004-01-27   Tues            12892
 2004       1              28  2004-01-28   Wed             12373
 2004       1              29  2004-01-29   Thurs           12313
 2004       1              30  2004-01-30   Fri             12375
 2004       1              31  2004-01-31   Sat              8310
 2004       2               1  2004-02-01   Sun              7270
 2004       2               2  2004-02-02   Mon             11686
 2004       2               3  2004-02-03   Tues            13211
 2004       2               4  2004-02-04   Wed             12580
 2004       2               5  2004-02-05   Thurs           12572
 2004       2               6  2004-02-06   Fri             12371
 2004       2               7  2004-02-07   Sat              8533
 2004       2               8  2004-02-08   Sun              7440
 2004       2               9  2004-02-09   Mon             11654
 2004       2              10  2004-02-10   Tues            13139
 2004       2              11  2004-02-11   Wed             12966
 2004       2              12  2004-02-12   Thurs           12957
 2004       2              13  2004-02-13   Fri             11749
 2004       2              14  2004-02-14   Sat              8944
 2004       2              15  2004-02-15   Sun              7603
 2004       2              16  2004-02-16   Mon             11280
 2004       2              17  2004-02-17   Tues            12790
 2004       2              18  2004-02-18   Wed             12954
 2004       2              19  2004-02-19   Thurs           12709
 2004       2              20  2004-02-20   Fri             12720
 2004       2              21  2004-02-21   Sat              8481
 2004       2              22  2004-02-22   Sun              7552
 2004       2              23  2004-02-23   Mon             11565
 2004       2              24  2004-02-24   Tues            13009
 2004       2              25  2004-02-25   Wed             12800
 2004       2              26  2004-02-26   Thurs           12621
 2004       2              27  2004-02-27   Fri             12403
 2004       2              28  2004-02-28   Sat              8488
 2004       2              29  2004-02-29   Sun              7301
 2004       3               1  2004-03-01   Mon             12017
 2004       3               2  2004-03-02   Tues            12943
 2004       3               3  2004-03-03   Wed             12696
 2004       3               4  2004-03-04   Thurs           12611
 2004       3               5  2004-03-05   Fri             12407
 2004       3               6  2004-03-06   Sat              8532
 2004       3               7  2004-03-07   Sun              7304
 2004       3               8  2004-03-08   Mon             11816
 2004       3               9  2004-03-09   Tues            12988
 2004       3              10  2004-03-10   Wed             12777
 2004       3              11  2004-03-11   Thurs           12797
 2004       3              12  2004-03-12   Fri             12519
 2004       3              13  2004-03-13   Sat              8398
 2004       3              14  2004-03-14   Sun              7401
 2004       3              15  2004-03-15   Mon             11903
 2004       3              16  2004-03-16   Tues            12873
 2004       3              17  2004-03-17   Wed             12979
 2004       3              18  2004-03-18   Thurs           12710
 2004       3              19  2004-03-19   Fri             12480
 2004       3              20  2004-03-20   Sat              8329
 2004       3              21  2004-03-21   Sun              7548
 2004       3              22  2004-03-22   Mon             11842
 2004       3              23  2004-03-23   Tues            12978
 2004       3              24  2004-03-24   Wed             12765
 2004       3              25  2004-03-25   Thurs           12835
 2004       3              26  2004-03-26   Fri             12372
 2004       3              27  2004-03-27   Sat              8602
 2004       3              28  2004-03-28   Sun              7549
 2004       3              29  2004-03-29   Mon             11788
 2004       3              30  2004-03-30   Tues            13078
 2004       3              31  2004-03-31   Wed             12542
 2004       4               1  2004-04-01   Thurs           12138
 2004       4               2  2004-04-02   Fri             12776
 2004       4               3  2004-04-03   Sat              8479
 2004       4               4  2004-04-04   Sun              7559
 2004       4               5  2004-04-05   Mon             12013
 2004       4               6  2004-04-06   Tues            13122
 2004       4               7  2004-04-07   Wed             12929
 2004       4               8  2004-04-08   Thurs           12836
 2004       4               9  2004-04-09   Fri             11695
 2004       4              10  2004-04-10   Sat              8148
 2004       4              11  2004-04-11   Sun              6969
 2004       4              12  2004-04-12   Mon             11751
 2004       4              13  2004-04-13   Tues            12613
 2004       4              14  2004-04-14   Wed             12732
 2004       4              15  2004-04-15   Thurs           12785
 2004       4              16  2004-04-16   Fri             12482
 2004       4              17  2004-04-17   Sat              8584
 2004       4              18  2004-04-18   Sun              7447
 2004       4              19  2004-04-19   Mon             11792
 2004       4              20  2004-04-20   Tues            13128
 2004       4              21  2004-04-21   Wed             12787
 2004       4              22  2004-04-22   Thurs           12866
 2004       4              23  2004-04-23   Fri             12442
 2004       4              24  2004-04-24   Sat              8595
 2004       4              25  2004-04-25   Sun              7507
 2004       4              26  2004-04-26   Mon             12020
 2004       4              27  2004-04-27   Tues            13147
 2004       4              28  2004-04-28   Wed             12756
 2004       4              29  2004-04-29   Thurs           12617
 2004       4              30  2004-04-30   Fri             12364
 2004       5               1  2004-05-01   Sat              8259
 2004       5               2  2004-05-02   Sun              7433
 2004       5               3  2004-05-03   Mon             11839
 2004       5               4  2004-05-04   Tues            12824
 2004       5               5  2004-05-05   Wed             12852
 2004       5               6  2004-05-06   Thurs           12707
 2004       5               7  2004-05-07   Fri             12582
 2004       5               8  2004-05-08   Sat              8599
 2004       5               9  2004-05-09   Sun              7380
 2004       5              10  2004-05-10   Mon             12243
 2004       5              11  2004-05-11   Tues            13229
 2004       5              12  2004-05-12   Wed             12989
 2004       5              13  2004-05-13   Thurs           12373
 2004       5              14  2004-05-14   Fri             12688
 2004       5              15  2004-05-15   Sat              8498
 2004       5              16  2004-05-16   Sun              7614
 2004       5              17  2004-05-17   Mon             12172
 2004       5              18  2004-05-18   Tues            13294
 2004       5              19  2004-05-19   Wed             12576
 2004       5              20  2004-05-20   Thurs           13036
 2004       5              21  2004-05-21   Fri             12625
 2004       5              22  2004-05-22   Sat              8614
 2004       5              23  2004-05-23   Sun              7628
 2004       5              24  2004-05-24   Mon             12341
 2004       5              25  2004-05-25   Tues            13451
 2004       5              26  2004-05-26   Wed             12891
 2004       5              27  2004-05-27   Thurs           13470
 2004       5              28  2004-05-28   Fri             12941
 2004       5              29  2004-05-29   Sat              8720
 2004       5              30  2004-05-30   Sun              7511
 2004       5              31  2004-05-31   Mon              7869
 2004       6               1  2004-06-01   Tues            12440
 2004       6               2  2004-06-02   Wed             13785
 2004       6               3  2004-06-03   Thurs           13644
 2004       6               4  2004-06-04   Fri             13059
 2004       6               5  2004-06-05   Sat              8706
 2004       6               6  2004-06-06   Sun              7451
 2004       6               7  2004-06-07   Mon             12173
 2004       6               8  2004-06-08   Tues            13339
 2004       6               9  2004-06-09   Wed             12806
 2004       6              10  2004-06-10   Thurs           13141
 2004       6              11  2004-06-11   Fri             12691
 2004       6              12  2004-06-12   Sat              8581
 2004       6              13  2004-06-13   Sun              7649
 2004       6              14  2004-06-14   Mon             12200
 2004       6              15  2004-06-15   Tues            13317
 2004       6              16  2004-06-16   Wed             13141
 2004       6              17  2004-06-17   Thurs           13165
 2004       6              18  2004-06-18   Fri             12785
 2004       6              19  2004-06-19   Sat              8492
 2004       6              20  2004-06-20   Sun              7629
 2004       6              21  2004-06-21   Mon             12093
 2004       6              22  2004-06-22   Tues            13237
 2004       6              23  2004-06-23   Wed             13096
 2004       6              24  2004-06-24   Thurs           13267
 2004       6              25  2004-06-25   Fri             13074
 2004       6              26  2004-06-26   Sat              8786
 2004       6              27  2004-06-27   Sun              7715
 2004       6              28  2004-06-28   Mon             12383
 2004       6              29  2004-06-29   Tues            13587
 2004       6              30  2004-06-30   Wed             13444
 2004       7               1  2004-07-01   Thurs           13887
 2004       7               2  2004-07-02   Fri             13271
 2004       7               3  2004-07-03   Sat              8900
 2004       7               4  2004-07-04   Sun              7820
 2004       7               5  2004-07-05   Mon              8978
 2004       7               6  2004-07-06   Tues            13221
 2004       7               7  2004-07-07   Wed             14496
 2004       7               8  2004-07-08   Thurs           14056
 2004       7               9  2004-07-09   Fri             13874
 2004       7              10  2004-07-10   Sat              9040
 2004       7              11  2004-07-11   Sun              7862
 2004       7              12  2004-07-12   Mon             12621
 2004       7              13  2004-07-13   Tues            13214
 2004       7              14  2004-07-14   Wed             13610
 2004       7              15  2004-07-15   Thurs           13601
 2004       7              16  2004-07-16   Fri             13411
 2004       7              17  2004-07-17   Sat              9067
 2004       7              18  2004-07-18   Sun              7797
 2004       7              19  2004-07-19   Mon             12286
 2004       7              20  2004-07-20   Tues            13804
 2004       7              21  2004-07-21   Wed             13370
 2004       7              22  2004-07-22   Thurs           13574
 2004       7              23  2004-07-23   Fri             12974
 2004       7              24  2004-07-24   Sat              9046
 2004       7              25  2004-07-25   Sun              7549
 2004       7              26  2004-07-26   Mon             12266
 2004       7              27  2004-07-27   Tues            13454
 2004       7              28  2004-07-28   Wed             13258
 2004       7              29  2004-07-29   Thurs           13281
 2004       7              30  2004-07-30   Fri             12934
 2004       7              31  2004-07-31   Sat              8858
 2004       8               1  2004-08-01   Sun              7837
 2004       8               2  2004-08-02   Mon             12428
 2004       8               3  2004-08-03   Tues            13249
 2004       8               4  2004-08-04   Wed             13498
 2004       8               5  2004-08-05   Thurs           13234
 2004       8               6  2004-08-06   Fri             12935
 2004       8               7  2004-08-07   Sat              8860
 2004       8               8  2004-08-08   Sun              7773
 2004       8               9  2004-08-09   Mon             12310
 2004       8              10  2004-08-10   Tues            13571
 2004       8              11  2004-08-11   Wed             13405
 2004       8              12  2004-08-12   Thurs           13448
 2004       8              13  2004-08-13   Fri             12275
 2004       8              14  2004-08-14   Sat              8884
 2004       8              15  2004-08-15   Sun              7885
 2004       8              16  2004-08-16   Mon             12328
 2004       8              17  2004-08-17   Tues            13551
 2004       8              18  2004-08-18   Wed             13274
 2004       8              19  2004-08-19   Thurs           13088
 2004       8              20  2004-08-20   Fri             13228
 2004       8              21  2004-08-21   Sat              8944
 2004       8              22  2004-08-22   Sun              7950
 2004       8              23  2004-08-23   Mon             12285
 2004       8              24  2004-08-24   Tues            13556
 2004       8              25  2004-08-25   Wed             13116
 2004       8              26  2004-08-26   Thurs           13196
 2004       8              27  2004-08-27   Fri             12971
 2004       8              28  2004-08-28   Sat              9049
 2004       8              29  2004-08-29   Sun              7783
 2004       8              30  2004-08-30   Mon             12342
 2004       8              31  2004-08-31   Tues            13582
 2004       9               1  2004-09-01   Wed             13418
 2004       9               2  2004-09-02   Thurs           13539
 2004       9               3  2004-09-03   Fri             13245
 2004       9               4  2004-09-04   Sat              8881
 2004       9               5  2004-09-05   Sun              7875
 2004       9               6  2004-09-06   Mon              8281
 2004       9               7  2004-09-07   Tues            12884
 2004       9               8  2004-09-08   Wed             14492
 2004       9               9  2004-09-09   Thurs           14526
 2004       9              10  2004-09-10   Fri             14081
 2004       9              11  2004-09-11   Sat              9253
 2004       9              12  2004-09-12   Sun              8281
 2004       9              13  2004-09-13   Mon             12644
 2004       9              14  2004-09-14   Tues            14172
 2004       9              15  2004-09-15   Wed             13641
 2004       9              16  2004-09-16   Thurs           13432
 2004       9              17  2004-09-17   Fri             13577
 2004       9              18  2004-09-18   Sat              9387
 2004       9              19  2004-09-19   Sun              8251
 2004       9              20  2004-09-20   Mon             12963
 2004       9              21  2004-09-21   Tues            13932
 2004       9              22  2004-09-22   Wed             13749
 2004       9              23  2004-09-23   Thurs           13969
 2004       9              24  2004-09-24   Fri             13722
 2004       9              25  2004-09-25   Sat              9142
 2004       9              26  2004-09-26   Sun              8143
 2004       9              27  2004-09-27   Mon             12674
 2004       9              28  2004-09-28   Tues            13882
 2004       9              29  2004-09-29   Wed             13416
 2004       9              30  2004-09-30   Thurs           13443
 2004      10               1  2004-10-01   Fri             13256
 2004      10               2  2004-10-02   Sat              8886
 2004      10               3  2004-10-03   Sun              7719
 2004      10               4  2004-10-04   Mon             12591
 2004      10               5  2004-10-05   Tues            13707
 2004      10               6  2004-10-06   Wed             13317
 2004      10               7  2004-10-07   Thurs           13383
 2004      10               8  2004-10-08   Fri             13122
 2004      10               9  2004-10-09   Sat              8716
 2004      10              10  2004-10-10   Sun              7709
 2004      10              11  2004-10-11   Mon             11758
 2004      10              12  2004-10-12   Tues            13405
 2004      10              13  2004-10-13   Wed             13069
 2004      10              14  2004-10-14   Thurs           13259
 2004      10              15  2004-10-15   Fri             13111
 2004      10              16  2004-10-16   Sat              8802
 2004      10              17  2004-10-17   Sun              7661
 2004      10              18  2004-10-18   Mon             12252
 2004      10              19  2004-10-19   Tues            13271
 2004      10              20  2004-10-20   Wed             12967
 2004      10              21  2004-10-21   Thurs           12959
 2004      10              22  2004-10-22   Fri             12887
 2004      10              23  2004-10-23   Sat              8627
 2004      10              24  2004-10-24   Sun              7699
 2004      10              25  2004-10-25   Mon             12341
 2004      10              26  2004-10-26   Tues            13464
 2004      10              27  2004-10-27   Wed             13178
 2004      10              28  2004-10-28   Thurs           13287
 2004      10              29  2004-10-29   Fri             12473
 2004      10              30  2004-10-30   Sat              8616
 2004      10              31  2004-10-31   Sun              7556
 2004      11               1  2004-11-01   Mon             12173
 2004      11               2  2004-11-02   Tues            13212
 2004      11               3  2004-11-03   Wed             13004
 2004      11               4  2004-11-04   Thurs           13075
 2004      11               5  2004-11-05   Fri             12900
 2004      11               6  2004-11-06   Sat              8789
 2004      11               7  2004-11-07   Sun              7734
 2004      11               8  2004-11-08   Mon             12420
 2004      11               9  2004-11-09   Tues            13351
 2004      11              10  2004-11-10   Wed             13017
 2004      11              11  2004-11-11   Thurs           12976
 2004      11              12  2004-11-12   Fri             12783
 2004      11              13  2004-11-13   Sat              8626
 2004      11              14  2004-11-14   Sun              7503
 2004      11              15  2004-11-15   Mon             12293
 2004      11              16  2004-11-16   Tues            13528
 2004      11              17  2004-11-17   Wed             13124
 2004      11              18  2004-11-18   Thurs           13348
 2004      11              19  2004-11-19   Fri             13063
 2004      11              20  2004-11-20   Sat              8694
 2004      11              21  2004-11-21   Sun              7742
 2004      11              22  2004-11-22   Mon             13463
 2004      11              23  2004-11-23   Tues            14238
 2004      11              24  2004-11-24   Wed             12430
 2004      11              25  2004-11-25   Thurs            7614
 2004      11              26  2004-11-26   Fri              9370
 2004      11              27  2004-11-27   Sat              8118
 2004      11              28  2004-11-28   Sun              7540
 2004      11              29  2004-11-29   Mon             12315
 2004      11              30  2004-11-30   Tues            13916
 2004      12               1  2004-12-01   Wed             13385
 2004      12               2  2004-12-02   Thurs           12989
 2004      12               3  2004-12-03   Fri             12604
 2004      12               4  2004-12-04   Sat              8616
 2004      12               5  2004-12-05   Sun              7606
 2004      12               6  2004-12-06   Mon             12054
 2004      12               7  2004-12-07   Tues            13372
 2004      12               8  2004-12-08   Wed             13179
 2004      12               9  2004-12-09   Thurs           12872
 2004      12              10  2004-12-10   Fri             12719
 2004      12              11  2004-12-11   Sat              8550
 2004      12              12  2004-12-12   Sun              7649
 2004      12              13  2004-12-13   Mon             11809
 2004      12              14  2004-12-14   Tues            13360
 2004      12              15  2004-12-15   Wed             13380
 2004      12              16  2004-12-16   Thurs           13418
 2004      12              17  2004-12-17   Fri             13090
 2004      12              18  2004-12-18   Sat              8623
 2004      12              19  2004-12-19   Sun              7552
 2004      12              20  2004-12-20   Mon             13587
 2004      12              21  2004-12-21   Tues            14390
 2004      12              22  2004-12-22   Wed             13006
 2004      12              23  2004-12-23   Thurs           11043
 2004      12              24  2004-12-24   Fri              7813
 2004      12              25  2004-12-25   Sat              6259
 2004      12              26  2004-12-26   Sun              7087
 2004      12              27  2004-12-27   Mon             12276
 2004      12              28  2004-12-28   Tues            13965
 2004      12              29  2004-12-29   Wed             13642
 2004      12              30  2004-12-30   Thurs           13314
 2004      12              31  2004-12-31   Fri             10130
 2005       1               1  2005-01-01   Sat              7317
 2005       1               2  2005-01-02   Sun              6871
 2005       1               3  2005-01-03   Mon             11153
 2005       1               4  2005-01-04   Tues            12644
 2005       1               5  2005-01-05   Wed             12671
 2005       1               6  2005-01-06   Thurs           12733
 2005       1               7  2005-01-07   Fri             12581
 2005       1               8  2005-01-08   Sat              8376
 2005       1               9  2005-01-09   Sun              7169
 2005       1              10  2005-01-10   Mon             11803
 2005       1              11  2005-01-11   Tues            12949
 2005       1              12  2005-01-12   Wed             12842
 2005       1              13  2005-01-13   Thurs           12357
 2005       1              14  2005-01-14   Fri             12562
 2005       1              15  2005-01-15   Sat              8502
 2005       1              16  2005-01-16   Sun              7192
 2005       1              17  2005-01-17   Mon             11059
 2005       1              18  2005-01-18   Tues            12677
 2005       1              19  2005-01-19   Wed             12726
 2005       1              20  2005-01-20   Thurs           12847
 2005       1              21  2005-01-21   Fri             12579
 2005       1              22  2005-01-22   Sat              8255
 2005       1              23  2005-01-23   Sun              7376
 2005       1              24  2005-01-24   Mon             11716
 2005       1              25  2005-01-25   Tues            13295
 2005       1              26  2005-01-26   Wed             12733
 2005       1              27  2005-01-27   Thurs           12680
 2005       1              28  2005-01-28   Fri             12578
 2005       1              29  2005-01-29   Sat              8303
 2005       1              30  2005-01-30   Sun              7402
 2005       1              31  2005-01-31   Mon             11530
 2005       2               1  2005-02-01   Tues            13263
 2005       2               2  2005-02-02   Wed             12966
 2005       2               3  2005-02-03   Thurs           12638
 2005       2               4  2005-02-04   Fri             12671
 2005       2               5  2005-02-05   Sat              8539
 2005       2               6  2005-02-06   Sun              7432
 2005       2               7  2005-02-07   Mon             11867
 2005       2               8  2005-02-08   Tues            12927
 2005       2               9  2005-02-09   Wed             12469
 2005       2              10  2005-02-10   Thurs           12865
 2005       2              11  2005-02-11   Fri             12517
 2005       2              12  2005-02-12   Sat              8462
 2005       2              13  2005-02-13   Sun              7395
 2005       2              14  2005-02-14   Mon             12386
 2005       2              15  2005-02-15   Tues            13378
 2005       2              16  2005-02-16   Wed             13029
 2005       2              17  2005-02-17   Thurs           12718
 2005       2              18  2005-02-18   Fri             12589
 2005       2              19  2005-02-19   Sat              8318
 2005       2              20  2005-02-20   Sun              7342
 2005       2              21  2005-02-21   Mon             11087
 2005       2              22  2005-02-22   Tues            12699
 2005       2              23  2005-02-23   Wed             12685
 2005       2              24  2005-02-24   Thurs           12733
 2005       2              25  2005-02-25   Fri             12495
 2005       2              26  2005-02-26   Sat              8293
 2005       2              27  2005-02-27   Sun              7449
 2005       2              28  2005-02-28   Mon             11678
 2005       3               1  2005-03-01   Tues            13042
 2005       3               2  2005-03-02   Wed             12765
 2005       3               3  2005-03-03   Thurs           13018
 2005       3               4  2005-03-04   Fri             12772
 2005       3               5  2005-03-05   Sat              8499
 2005       3               6  2005-03-06   Sun              7382
 2005       3               7  2005-03-07   Mon             11801
 2005       3               8  2005-03-08   Tues            12969
 2005       3               9  2005-03-09   Wed             12700
 2005       3              10  2005-03-10   Thurs           12920
 2005       3              11  2005-03-11   Fri             12777
 2005       3              12  2005-03-12   Sat              8511
 2005       3              13  2005-03-13   Sun              7239
 2005       3              14  2005-03-14   Mon             12086
 2005       3              15  2005-03-15   Tues            13144
 2005       3              16  2005-03-16   Wed             12718
 2005       3              17  2005-03-17   Thurs           13118
 2005       3              18  2005-03-18   Fri             12690
 2005       3              19  2005-03-19   Sat              8557
 2005       3              20  2005-03-20   Sun              7454
 2005       3              21  2005-03-21   Mon             12108
 2005       3              22  2005-03-22   Tues            13386
 2005       3              23  2005-03-23   Wed             12910
 2005       3              24  2005-03-24   Thurs           12912
 2005       3              25  2005-03-25   Fri             12111
 2005       3              26  2005-03-26   Sat              7980
 2005       3              27  2005-03-27   Sun              6923
 2005       3              28  2005-03-28   Mon             11820
 2005       3              29  2005-03-29   Tues            13028
 2005       3              30  2005-03-30   Wed             12947
 2005       3              31  2005-03-31   Thurs           12834
 2005       4               1  2005-04-01   Fri             11760
 2005       4               2  2005-04-02   Sat              8574
 2005       4               3  2005-04-03   Sun              7065
 2005       4               4  2005-04-04   Mon             12457
 2005       4               5  2005-04-05   Tues            13274
 2005       4               6  2005-04-06   Wed             13200
 2005       4               7  2005-04-07   Thurs           12996
 2005       4               8  2005-04-08   Fri             12747
 2005       4               9  2005-04-09   Sat              8355
 2005       4              10  2005-04-10   Sun              7443
 2005       4              11  2005-04-11   Mon             12143
 2005       4              12  2005-04-12   Tues            13146
 2005       4              13  2005-04-13   Wed             12452
 2005       4              14  2005-04-14   Thurs           12976
 2005       4              15  2005-04-15   Fri             13063
 2005       4              16  2005-04-16   Sat              8291
 2005       4              17  2005-04-17   Sun              7214
 2005       4              18  2005-04-18   Mon             12023
 2005       4              19  2005-04-19   Tues            13197
 2005       4              20  2005-04-20   Wed             13120
 2005       4              21  2005-04-21   Thurs           12978
 2005       4              22  2005-04-22   Fri             12543
 2005       4              23  2005-04-23   Sat              8244
 2005       4              24  2005-04-24   Sun              7267
 2005       4              25  2005-04-25   Mon             12002
 2005       4              26  2005-04-26   Tues            13157
 2005       4              27  2005-04-27   Wed             12929
 2005       4              28  2005-04-28   Thurs           12822
 2005       4              29  2005-04-29   Fri             12342
 2005       4              30  2005-04-30   Sat              8280
 2005       5               1  2005-05-01   Sun              7230
 2005       5               2  2005-05-02   Mon             11980
 2005       5               3  2005-05-03   Tues            13079
 2005       5               4  2005-05-04   Wed             12841
 2005       5               5  2005-05-05   Thurs           14357
 2005       5               6  2005-05-06   Fri             12496
 2005       5               7  2005-05-07   Sat              8204
 2005       5               8  2005-05-08   Sun              7349
 2005       5               9  2005-05-09   Mon             12155
 2005       5              10  2005-05-10   Tues            13299
 2005       5              11  2005-05-11   Wed             12762
 2005       5              12  2005-05-12   Thurs           13251
 2005       5              13  2005-05-13   Fri             11803
 2005       5              14  2005-05-14   Sat              8610
 2005       5              15  2005-05-15   Sun              7515
 2005       5              16  2005-05-16   Mon             12307
 2005       5              17  2005-05-17   Tues            13659
 2005       5              18  2005-05-18   Wed             13378
 2005       5              19  2005-05-19   Thurs           13114
 2005       5              20  2005-05-20   Fri             13007
 2005       5              21  2005-05-21   Sat              8490
 2005       5              22  2005-05-22   Sun              7386
 2005       5              23  2005-05-23   Mon             12445
 2005       5              24  2005-05-24   Tues            13740
 2005       5              25  2005-05-25   Wed             13793
 2005       5              26  2005-05-26   Thurs           13654
 2005       5              27  2005-05-27   Fri             13378
 2005       5              28  2005-05-28   Sat              8688
 2005       5              29  2005-05-29   Sun              7270
 2005       5              30  2005-05-30   Mon              7886
 2005       5              31  2005-05-31   Tues            12610
 2005       6               1  2005-06-01   Wed             14054
 2005       6               2  2005-06-02   Thurs           13666
 2005       6               3  2005-06-03   Fri             13483
 2005       6               4  2005-06-04   Sat              8686
 2005       6               5  2005-06-05   Sun              7791
 2005       6               6  2005-06-06   Mon             12363
 2005       6               7  2005-06-07   Tues            13481
 2005       6               8  2005-06-08   Wed             13138
 2005       6               9  2005-06-09   Thurs           13422
 2005       6              10  2005-06-10   Fri             13230
 2005       6              11  2005-06-11   Sat              8621
 2005       6              12  2005-06-12   Sun              7487
 2005       6              13  2005-06-13   Mon             11843
 2005       6              14  2005-06-14   Tues            13815
 2005       6              15  2005-06-15   Wed             13261
 2005       6              16  2005-06-16   Thurs           13033
 2005       6              17  2005-06-17   Fri             12821
 2005       6              18  2005-06-18   Sat              8573
 2005       6              19  2005-06-19   Sun              7522
 2005       6              20  2005-06-20   Mon             12332
 2005       6              21  2005-06-21   Tues            13439
 2005       6              22  2005-06-22   Wed             13342
 2005       6              23  2005-06-23   Thurs           13458
 2005       6              24  2005-06-24   Fri             13032
 2005       6              25  2005-06-25   Sat              8737
 2005       6              26  2005-06-26   Sun              7603
 2005       6              27  2005-06-27   Mon             12488
 2005       6              28  2005-06-28   Tues            13813
 2005       6              29  2005-06-29   Wed             14039
 2005       6              30  2005-06-30   Thurs           14003
 2005       7               1  2005-07-01   Fri             13759
 2005       7               2  2005-07-02   Sat              8862
 2005       7               3  2005-07-03   Sun              7668
 2005       7               4  2005-07-04   Mon              7733
 2005       7               5  2005-07-05   Tues            12847
 2005       7               6  2005-07-06   Wed             14562
 2005       7               7  2005-07-07   Thurs           14627
 2005       7               8  2005-07-08   Fri             14136
 2005       7               9  2005-07-09   Sat              9189
 2005       7              10  2005-07-10   Sun              7829
 2005       7              11  2005-07-11   Mon             12626
 2005       7              12  2005-07-12   Tues            13884
 2005       7              13  2005-07-13   Wed             13431
 2005       7              14  2005-07-14   Thurs           14038
 2005       7              15  2005-07-15   Fri             13685
 2005       7              16  2005-07-16   Sat              9036
 2005       7              17  2005-07-17   Sun              7793
 2005       7              18  2005-07-18   Mon             12698
 2005       7              19  2005-07-19   Tues            13791
 2005       7              20  2005-07-20   Wed             13603
 2005       7              21  2005-07-21   Thurs           13870
 2005       7              22  2005-07-22   Fri             13390
 2005       7              23  2005-07-23   Sat              8916
 2005       7              24  2005-07-24   Sun              7762
 2005       7              25  2005-07-25   Mon             12651
 2005       7              26  2005-07-26   Tues            13671
 2005       7              27  2005-07-27   Wed             13528
 2005       7              28  2005-07-28   Thurs           13621
 2005       7              29  2005-07-29   Fri             13260
 2005       7              30  2005-07-30   Sat              8987
 2005       7              31  2005-07-31   Sun              7743
 2005       8               1  2005-08-01   Mon             12415
 2005       8               2  2005-08-02   Tues            13730
 2005       8               3  2005-08-03   Wed             13350
 2005       8               4  2005-08-04   Thurs           13511
 2005       8               5  2005-08-05   Fri             13413
 2005       8               6  2005-08-06   Sat              8820
 2005       8               7  2005-08-07   Sun              7662
 2005       8               8  2005-08-08   Mon             12553
 2005       8               9  2005-08-09   Tues            13893
 2005       8              10  2005-08-10   Wed             13593
 2005       8              11  2005-08-11   Thurs           14011
 2005       8              12  2005-08-12   Fri             13610
 2005       8              13  2005-08-13   Sat              9049
 2005       8              14  2005-08-14   Sun              7867
 2005       8              15  2005-08-15   Mon             12740
 2005       8              16  2005-08-16   Tues            13998
 2005       8              17  2005-08-17   Wed             13801
 2005       8              18  2005-08-18   Thurs           14009
 2005       8              19  2005-08-19   Fri             13365
 2005       8              20  2005-08-20   Sat              9118
 2005       8              21  2005-08-21   Sun              7776
 2005       8              22  2005-08-22   Mon             12487
 2005       8              23  2005-08-23   Tues            13739
 2005       8              24  2005-08-24   Wed             13569
 2005       8              25  2005-08-25   Thurs           13824
 2005       8              26  2005-08-26   Fri             13327
 2005       8              27  2005-08-27   Sat              8952
 2005       8              28  2005-08-28   Sun              7743
 2005       8              29  2005-08-29   Mon             12711
 2005       8              30  2005-08-30   Tues            13933
 2005       8              31  2005-08-31   Wed             13898
 2005       9               1  2005-09-01   Thurs           14160
 2005       9               2  2005-09-02   Fri             13904
 2005       9               3  2005-09-03   Sat              9128
 2005       9               4  2005-09-04   Sun              7931
 2005       9               5  2005-09-05   Mon              8116
 2005       9               6  2005-09-06   Tues            13124
 2005       9               7  2005-09-07   Wed             14744
 2005       9               8  2005-09-08   Thurs           14740
 2005       9               9  2005-09-09   Fri             14505
 2005       9              10  2005-09-10   Sat              9565
 2005       9              11  2005-09-11   Sun              8041
 2005       9              12  2005-09-12   Mon             13189
 2005       9              13  2005-09-13   Tues            13951
 2005       9              14  2005-09-14   Wed             14160
 2005       9              15  2005-09-15   Thurs           14263
 2005       9              16  2005-09-16   Fri             14189
 2005       9              17  2005-09-17   Sat              9459
 2005       9              18  2005-09-18   Sun              8262
 2005       9              19  2005-09-19   Mon             13460
 2005       9              20  2005-09-20   Tues            14590
 2005       9              21  2005-09-21   Wed             14203
 2005       9              22  2005-09-22   Thurs           13973
 2005       9              23  2005-09-23   Fri             13776
 2005       9              24  2005-09-24   Sat              9207
 2005       9              25  2005-09-25   Sun              8028
 2005       9              26  2005-09-26   Mon             12952
 2005       9              27  2005-09-27   Tues            13955
 2005       9              28  2005-09-28   Wed             13785
 2005       9              29  2005-09-29   Thurs           13540
 2005       9              30  2005-09-30   Fri             13454
 2005      10               1  2005-10-01   Sat              8820
 2005      10               2  2005-10-02   Sun              7841
 2005      10               3  2005-10-03   Mon             12816
 2005      10               4  2005-10-04   Tues            13449
 2005      10               5  2005-10-05   Wed             13488
 2005      10               6  2005-10-06   Thurs           13552
 2005      10               7  2005-10-07   Fri             13056
 2005      10               8  2005-10-08   Sat              8846
 2005      10               9  2005-10-09   Sun              7508
 2005      10              10  2005-10-10   Mon             12298
 2005      10              11  2005-10-11   Tues            13256
 2005      10              12  2005-10-12   Wed             13191
 2005      10              13  2005-10-13   Thurs           12922
 2005      10              14  2005-10-14   Fri             13087
 2005      10              15  2005-10-15   Sat              8733
 2005      10              16  2005-10-16   Sun              7432
 2005      10              17  2005-10-17   Mon             12230
 2005      10              18  2005-10-18   Tues            13442
 2005      10              19  2005-10-19   Wed             12932
 2005      10              20  2005-10-20   Thurs           13267
 2005      10              21  2005-10-21   Fri             12828
 2005      10              22  2005-10-22   Sat              8568
 2005      10              23  2005-10-23   Sun              7371
 2005      10              24  2005-10-24   Mon             12012
 2005      10              25  2005-10-25   Tues            13351
 2005      10              26  2005-10-26   Wed             12798
 2005      10              27  2005-10-27   Thurs           13273
 2005      10              28  2005-10-28   Fri             12619
 2005      10              29  2005-10-29   Sat              8509
 2005      10              30  2005-10-30   Sun              7459
 2005      10              31  2005-10-31   Mon             10207
 2005      11               1  2005-11-01   Tues            13682
 2005      11               2  2005-11-02   Wed             13275
 2005      11               3  2005-11-03   Thurs           13284
 2005      11               4  2005-11-04   Fri             12928
 2005      11               5  2005-11-05   Sat              8675
 2005      11               6  2005-11-06   Sun              7565
 2005      11               7  2005-11-07   Mon             12176
 2005      11               8  2005-11-08   Tues            13678
 2005      11               9  2005-11-09   Wed             13208
 2005      11              10  2005-11-10   Thurs           13227
 2005      11              11  2005-11-11   Fri             12584
 2005      11              12  2005-11-12   Sat              8333
 2005      11              13  2005-11-13   Sun              7420
 2005      11              14  2005-11-14   Mon             12164
 2005      11              15  2005-11-15   Tues            13549
 2005      11              16  2005-11-16   Wed             13113
 2005      11              17  2005-11-17   Thurs           13280
 2005      11              18  2005-11-18   Fri             13153
 2005      11              19  2005-11-19   Sat              8481
 2005      11              20  2005-11-20   Sun              7594
 2005      11              21  2005-11-21   Mon             13399
 2005      11              22  2005-11-22   Tues            14175
 2005      11              23  2005-11-23   Wed             12202
 2005      11              24  2005-11-24   Thurs            7267
 2005      11              25  2005-11-25   Fri              9090
 2005      11              26  2005-11-26   Sat              7848
 2005      11              27  2005-11-27   Sun              7197
 2005      11              28  2005-11-28   Mon             12716
 2005      11              29  2005-11-29   Tues            13743
 2005      11              30  2005-11-30   Wed             13176
 2005      12               1  2005-12-01   Thurs           13210
 2005      12               2  2005-12-02   Fri             12599
 2005      12               3  2005-12-03   Sat              8241
 2005      12               4  2005-12-04   Sun              7297
 2005      12               5  2005-12-05   Mon             12106
 2005      12               6  2005-12-06   Tues            13249
 2005      12               7  2005-12-07   Wed             13017
 2005      12               8  2005-12-08   Thurs           13048
 2005      12               9  2005-12-09   Fri             12391
 2005      12              10  2005-12-10   Sat              8401
 2005      12              11  2005-12-11   Sun              7368
 2005      12              12  2005-12-12   Mon             12494
 2005      12              13  2005-12-13   Tues            13323
 2005      12              14  2005-12-14   Wed             13768
 2005      12              15  2005-12-15   Thurs           13586
 2005      12              16  2005-12-16   Fri             13320
 2005      12              17  2005-12-17   Sat              8701
 2005      12              18  2005-12-18   Sun              7617
 2005      12              19  2005-12-19   Mon             13410
 2005      12              20  2005-12-20   Tues            14659
 2005      12              21  2005-12-21   Wed             14159
 2005      12              22  2005-12-22   Thurs           12877
 2005      12              23  2005-12-23   Fri             10642
 2005      12              24  2005-12-24   Sat              7256
 2005      12              25  2005-12-25   Sun              6224
 2005      12              26  2005-12-26   Mon              8505
 2005      12              27  2005-12-27   Tues            13056
 2005      12              28  2005-12-28   Wed             14381
 2005      12              29  2005-12-29   Thurs           13972
 2005      12              30  2005-12-30   Fri             13208
 2005      12              31  2005-12-31   Sat              8635
 2006       1               1  2006-01-01   Sun              7137
 2006       1               2  2006-01-02   Mon              8198
 2006       1               3  2006-01-03   Tues            11992
 2006       1               4  2006-01-04   Wed             12966
 2006       1               5  2006-01-05   Thurs           13117
 2006       1               6  2006-01-06   Fri             13071
 2006       1               7  2006-01-07   Sat              8546
 2006       1               8  2006-01-08   Sun              7409
 2006       1               9  2006-01-09   Mon             11809
 2006       1              10  2006-01-10   Tues            12992
 2006       1              11  2006-01-11   Wed             12844
 2006       1              12  2006-01-12   Thurs           13309
 2006       1              13  2006-01-13   Fri             11994
 2006       1              14  2006-01-14   Sat              8628
 2006       1              15  2006-01-15   Sun              7312
 2006       1              16  2006-01-16   Mon             11477
 2006       1              17  2006-01-17   Tues            13018
 2006       1              18  2006-01-18   Wed             13079
 2006       1              19  2006-01-19   Thurs           13125
 2006       1              20  2006-01-20   Fri             13040
 2006       1              21  2006-01-21   Sat              8408
 2006       1              22  2006-01-22   Sun              7442
 2006       1              23  2006-01-23   Mon             12102
 2006       1              24  2006-01-24   Tues            12983
 2006       1              25  2006-01-25   Wed             12911
 2006       1              26  2006-01-26   Thurs           13044
 2006       1              27  2006-01-27   Fri             12917
 2006       1              28  2006-01-28   Sat              8439
 2006       1              29  2006-01-29   Sun              7572
 2006       1              30  2006-01-30   Mon             12150
 2006       1              31  2006-01-31   Tues            12945
 2006       2               1  2006-02-01   Wed             12960
 2006       2               2  2006-02-02   Thurs           13231
 2006       2               3  2006-02-03   Fri             13089
 2006       2               4  2006-02-04   Sat              8647
 2006       2               5  2006-02-05   Sun              7506
 2006       2               6  2006-02-06   Mon             12302
 2006       2               7  2006-02-07   Tues            13555
 2006       2               8  2006-02-08   Wed             13057
 2006       2               9  2006-02-09   Thurs           13232
 2006       2              10  2006-02-10   Fri             13298
 2006       2              11  2006-02-11   Sat              8702
 2006       2              12  2006-02-12   Sun              7404
 2006       2              13  2006-02-13   Mon             11955
 2006       2              14  2006-02-14   Tues            13886
 2006       2              15  2006-02-15   Wed             13424
 2006       2              16  2006-02-16   Thurs           13303
 2006       2              17  2006-02-17   Fri             13218
 2006       2              18  2006-02-18   Sat              8738
 2006       2              19  2006-02-19   Sun              7577
 2006       2              20  2006-02-20   Mon             11466
 2006       2              21  2006-02-21   Tues            13172
 2006       2              22  2006-02-22   Wed             13341
 2006       2              23  2006-02-23   Thurs           13280
 2006       2              24  2006-02-24   Fri             12832
 2006       2              25  2006-02-25   Sat              8557
 2006       2              26  2006-02-26   Sun              7400
 2006       2              27  2006-02-27   Mon             12080
 2006       2              28  2006-02-28   Tues            13223
 2006       3               1  2006-03-01   Wed             13422
 2006       3               2  2006-03-02   Thurs           13210
 2006       3               3  2006-03-03   Fri             13212
 2006       3               4  2006-03-04   Sat              8682
 2006       3               5  2006-03-05   Sun              7440
 2006       3               6  2006-03-06   Mon             12361
 2006       3               7  2006-03-07   Tues            13248
 2006       3               8  2006-03-08   Wed             13427
 2006       3               9  2006-03-09   Thurs           13305
 2006       3              10  2006-03-10   Fri             13162
 2006       3              11  2006-03-11   Sat              8602
 2006       3              12  2006-03-12   Sun              7558
 2006       3              13  2006-03-13   Mon             11742
 2006       3              14  2006-03-14   Tues            13358
 2006       3              15  2006-03-15   Wed             13183
 2006       3              16  2006-03-16   Thurs           13125
 2006       3              17  2006-03-17   Fri             13003
 2006       3              18  2006-03-18   Sat              8757
 2006       3              19  2006-03-19   Sun              7355
 2006       3              20  2006-03-20   Mon             12335
 2006       3              21  2006-03-21   Tues            13378
 2006       3              22  2006-03-22   Wed             13027
 2006       3              23  2006-03-23   Thurs           13042
 2006       3              24  2006-03-24   Fri             12874
 2006       3              25  2006-03-25   Sat              8381
 2006       3              26  2006-03-26   Sun              7403
 2006       3              27  2006-03-27   Mon             12095
 2006       3              28  2006-03-28   Tues            13246
 2006       3              29  2006-03-29   Wed             13114
 2006       3              30  2006-03-30   Thurs           13067
 2006       3              31  2006-03-31   Fri             12406
 2006       4               1  2006-04-01   Sat              8268
 2006       4               2  2006-04-02   Sun              7271
 2006       4               3  2006-04-03   Mon             12398
 2006       4               4  2006-04-04   Tues            13287
 2006       4               5  2006-04-05   Wed             13348
 2006       4               6  2006-04-06   Thurs           13069
 2006       4               7  2006-04-07   Fri             12922
 2006       4               8  2006-04-08   Sat              8333
 2006       4               9  2006-04-09   Sun              7314
 2006       4              10  2006-04-10   Mon             12233
 2006       4              11  2006-04-11   Tues            13504
 2006       4              12  2006-04-12   Wed             13120
 2006       4              13  2006-04-13   Thurs           12853
 2006       4              14  2006-04-14   Fri             12139
 2006       4              15  2006-04-15   Sat              8227
 2006       4              16  2006-04-16   Sun              7030
 2006       4              17  2006-04-17   Mon             11897
 2006       4              18  2006-04-18   Tues            13415
 2006       4              19  2006-04-19   Wed             12979
 2006       4              20  2006-04-20   Thurs           13157
 2006       4              21  2006-04-21   Fri             12776
 2006       4              22  2006-04-22   Sat              8397
 2006       4              23  2006-04-23   Sun              7141
 2006       4              24  2006-04-24   Mon             12164
 2006       4              25  2006-04-25   Tues            13238
 2006       4              26  2006-04-26   Wed             13011
 2006       4              27  2006-04-27   Thurs           13120
 2006       4              28  2006-04-28   Fri             12562
 2006       4              29  2006-04-29   Sat              8287
 2006       4              30  2006-04-30   Sun              7127
 2006       5               1  2006-05-01   Mon             12248
 2006       5               2  2006-05-02   Tues            13242
 2006       5               3  2006-05-03   Wed             13059
 2006       5               4  2006-05-04   Thurs           12941
 2006       5               5  2006-05-05   Fri             12983
 2006       5               6  2006-05-06   Sat              8297
 2006       5               7  2006-05-07   Sun              7343
 2006       5               8  2006-05-08   Mon             12355
 2006       5               9  2006-05-09   Tues            13100
 2006       5              10  2006-05-10   Wed             13079
 2006       5              11  2006-05-11   Thurs           12921
 2006       5              12  2006-05-12   Fri             12685
 2006       5              13  2006-05-13   Sat              8260
 2006       5              14  2006-05-14   Sun              7288
 2006       5              15  2006-05-15   Mon             12476
 2006       5              16  2006-05-16   Tues            13630
 2006       5              17  2006-05-17   Wed             13444
 2006       5              18  2006-05-18   Thurs           13274
 2006       5              19  2006-05-19   Fri             12731
 2006       5              20  2006-05-20   Sat              8624
 2006       5              21  2006-05-21   Sun              7473
 2006       5              22  2006-05-22   Mon             12775
 2006       5              23  2006-05-23   Tues            13827
 2006       5              24  2006-05-24   Wed             13544
 2006       5              25  2006-05-25   Thurs           14074
 2006       5              26  2006-05-26   Fri             13355
 2006       5              27  2006-05-27   Sat              8883
 2006       5              28  2006-05-28   Sun              7651
 2006       5              29  2006-05-29   Mon              8099
 2006       5              30  2006-05-30   Tues            13051
 2006       5              31  2006-05-31   Wed             14189
 2006       6               1  2006-06-01   Thurs           14257
 2006       6               2  2006-06-02   Fri             13772
 2006       6               3  2006-06-03   Sat              8878
 2006       6               4  2006-06-04   Sun              7834
 2006       6               5  2006-06-05   Mon             13004
 2006       6               6  2006-06-06   Tues            11661
 2006       6               7  2006-06-07   Wed             13693
 2006       6               8  2006-06-08   Thurs           14137
 2006       6               9  2006-06-09   Fri             13203
 2006       6              10  2006-06-10   Sat              8619
 2006       6              11  2006-06-11   Sun              7653
 2006       6              12  2006-06-12   Mon             12652
 2006       6              13  2006-06-13   Tues            13378
 2006       6              14  2006-06-14   Wed             13800
 2006       6              15  2006-06-15   Thurs           13765
 2006       6              16  2006-06-16   Fri             13461
 2006       6              17  2006-06-17   Sat              8892
 2006       6              18  2006-06-18   Sun              7902
 2006       6              19  2006-06-19   Mon             12869
 2006       6              20  2006-06-20   Tues            14021
 2006       6              21  2006-06-21   Wed             13586
 2006       6              22  2006-06-22   Thurs           13722
 2006       6              23  2006-06-23   Fri             13136
 2006       6              24  2006-06-24   Sat              8740
 2006       6              25  2006-06-25   Sun              7727
 2006       6              26  2006-06-26   Mon             12660
 2006       6              27  2006-06-27   Tues            14119
 2006       6              28  2006-06-28   Wed             14246
 2006       6              29  2006-06-29   Thurs           14218
 2006       6              30  2006-06-30   Fri             14010
 2006       7               1  2006-07-01   Sat              9285
 2006       7               2  2006-07-02   Sun              7817
 2006       7               3  2006-07-03   Mon             11867
 2006       7               4  2006-07-04   Tues             9083
 2006       7               5  2006-07-05   Wed             13124
 2006       7               6  2006-07-06   Thurs           15007
 2006       7               7  2006-07-07   Fri             14580
 2006       7               8  2006-07-08   Sat              9526
 2006       7               9  2006-07-09   Sun              8088
 2006       7              10  2006-07-10   Mon             13306
 2006       7              11  2006-07-11   Tues            14413
 2006       7              12  2006-07-12   Wed             13919
 2006       7              13  2006-07-13   Thurs           13926
 2006       7              14  2006-07-14   Fri             14174
 2006       7              15  2006-07-15   Sat              9477
 2006       7              16  2006-07-16   Sun              8150
 2006       7              17  2006-07-17   Mon             13454
 2006       7              18  2006-07-18   Tues            14456
 2006       7              19  2006-07-19   Wed             14019
 2006       7              20  2006-07-20   Thurs           14239
 2006       7              21  2006-07-21   Fri             14195
 2006       7              22  2006-07-22   Sat              9219
 2006       7              23  2006-07-23   Sun              8156
 2006       7              24  2006-07-24   Mon             13075
 2006       7              25  2006-07-25   Tues            14387
 2006       7              26  2006-07-26   Wed             14093
 2006       7              27  2006-07-27   Thurs           14270
 2006       7              28  2006-07-28   Fri             13912
 2006       7              29  2006-07-29   Sat              9332
 2006       7              30  2006-07-30   Sun              8105
 2006       7              31  2006-07-31   Mon             12791
 2006       8               1  2006-08-01   Tues            14537
 2006       8               2  2006-08-02   Wed             14114
 2006       8               3  2006-08-03   Thurs           14093
 2006       8               4  2006-08-04   Fri             13899
 2006       8               5  2006-08-05   Sat              9441
 2006       8               6  2006-08-06   Sun              7881
 2006       8               7  2006-08-07   Mon             13112
 2006       8               8  2006-08-08   Tues            14507
 2006       8               9  2006-08-09   Wed             14277
 2006       8              10  2006-08-10   Thurs           14331
 2006       8              11  2006-08-11   Fri             13975
 2006       8              12  2006-08-12   Sat              9401
 2006       8              13  2006-08-13   Sun              7979
 2006       8              14  2006-08-14   Mon             13313
 2006       8              15  2006-08-15   Tues            14570
 2006       8              16  2006-08-16   Wed             14330
 2006       8              17  2006-08-17   Thurs           14355
 2006       8              18  2006-08-18   Fri             13864
 2006       8              19  2006-08-19   Sat              9509
 2006       8              20  2006-08-20   Sun              8217
 2006       8              21  2006-08-21   Mon             13236
 2006       8              22  2006-08-22   Tues            14433
 2006       8              23  2006-08-23   Wed             14360
 2006       8              24  2006-08-24   Thurs           14109
 2006       8              25  2006-08-25   Fri             13921
 2006       8              26  2006-08-26   Sat              9313
 2006       8              27  2006-08-27   Sun              8144
 2006       8              28  2006-08-28   Mon             13433
 2006       8              29  2006-08-29   Tues            14688
 2006       8              30  2006-08-30   Wed             14466
 2006       8              31  2006-08-31   Thurs           14391
 2006       9               1  2006-09-01   Fri             14458
 2006       9               2  2006-09-02   Sat              9426
 2006       9               3  2006-09-03   Sun              8162
 2006       9               4  2006-09-04   Mon              8298
 2006       9               5  2006-09-05   Tues            13654
 2006       9               6  2006-09-06   Wed             15391
 2006       9               7  2006-09-07   Thurs           15454
 2006       9               8  2006-09-08   Fri             15018
 2006       9               9  2006-09-09   Sat              9759
 2006       9              10  2006-09-10   Sun              8407
 2006       9              11  2006-09-11   Mon             12868
 2006       9              12  2006-09-12   Tues            15078
 2006       9              13  2006-09-13   Wed             14769
 2006       9              14  2006-09-14   Thurs           15099
 2006       9              15  2006-09-15   Fri             14762
 2006       9              16  2006-09-16   Sat              9648
 2006       9              17  2006-09-17   Sun              8701
 2006       9              18  2006-09-18   Mon             13958
 2006       9              19  2006-09-19   Tues            15205
 2006       9              20  2006-09-20   Wed             14850
 2006       9              21  2006-09-21   Thurs           14965
 2006       9              22  2006-09-22   Fri             14708
 2006       9              23  2006-09-23   Sat              9815
 2006       9              24  2006-09-24   Sun              8371
 2006       9              25  2006-09-25   Mon             13740
 2006       9              26  2006-09-26   Tues            14912
 2006       9              27  2006-09-27   Wed             14465
 2006       9              28  2006-09-28   Thurs           14281
 2006       9              29  2006-09-29   Fri             13828
 2006       9              30  2006-09-30   Sat              9154
 2006      10               1  2006-10-01   Sun              8263
 2006      10               2  2006-10-02   Mon             13109
 2006      10               3  2006-10-03   Tues            14550
 2006      10               4  2006-10-04   Wed             14214
 2006      10               5  2006-10-05   Thurs           14212
 2006      10               6  2006-10-06   Fri             13829
 2006      10               7  2006-10-07   Sat              9015
 2006      10               8  2006-10-08   Sun              7940
 2006      10               9  2006-10-09   Mon             12796
 2006      10              10  2006-10-10   Tues            14480
 2006      10              11  2006-10-11   Wed             14086
 2006      10              12  2006-10-12   Thurs           13985
 2006      10              13  2006-10-13   Fri             12628
 2006      10              14  2006-10-14   Sat              8804
 2006      10              15  2006-10-15   Sun              7757
 2006      10              16  2006-10-16   Mon             12873
 2006      10              17  2006-10-17   Tues            14304
 2006      10              18  2006-10-18   Wed             13877
 2006      10              19  2006-10-19   Thurs           13648
 2006      10              20  2006-10-20   Fri             13327
 2006      10              21  2006-10-21   Sat              8803
 2006      10              22  2006-10-22   Sun              7805
 2006      10              23  2006-10-23   Mon             12836
 2006      10              24  2006-10-24   Tues            14153
 2006      10              25  2006-10-25   Wed             13751
 2006      10              26  2006-10-26   Thurs           13974
 2006      10              27  2006-10-27   Fri             13374
 2006      10              28  2006-10-28   Sat              8789
 2006      10              29  2006-10-29   Sun              7974
 2006      10              30  2006-10-30   Mon             12465
 2006      10              31  2006-10-31   Tues            12064
 2006      11               1  2006-11-01   Wed             13969
 2006      11               2  2006-11-02   Thurs           13920
 2006      11               3  2006-11-03   Fri             13589
 2006      11               4  2006-11-04   Sat              8787
 2006      11               5  2006-11-05   Sun              7957
 2006      11               6  2006-11-06   Mon             12893
 2006      11               7  2006-11-07   Tues            13779
 2006      11               8  2006-11-08   Wed             13798
 2006      11               9  2006-11-09   Thurs           13783
 2006      11              10  2006-11-10   Fri             13571
 2006      11              11  2006-11-11   Sat              8807
 2006      11              12  2006-11-12   Sun              7650
 2006      11              13  2006-11-13   Mon             12546
 2006      11              14  2006-11-14   Tues            14229
 2006      11              15  2006-11-15   Wed             13881
 2006      11              16  2006-11-16   Thurs           14073
 2006      11              17  2006-11-17   Fri             14158
 2006      11              18  2006-11-18   Sat              8844
 2006      11              19  2006-11-19   Sun              7577
 2006      11              20  2006-11-20   Mon             14053
 2006      11              21  2006-11-21   Tues            14835
 2006      11              22  2006-11-22   Wed             13181
 2006      11              23  2006-11-23   Thurs            7521
 2006      11              24  2006-11-24   Fri              9640
 2006      11              25  2006-11-25   Sat              8217
 2006      11              26  2006-11-26   Sun              7585
 2006      11              27  2006-11-27   Mon             13150
 2006      11              28  2006-11-28   Tues            14575
 2006      11              29  2006-11-29   Wed             13997
 2006      11              30  2006-11-30   Thurs           13411
 2006      12               1  2006-12-01   Fri             13451
 2006      12               2  2006-12-02   Sat              8740
 2006      12               3  2006-12-03   Sun              7607
 2006      12               4  2006-12-04   Mon             12498
 2006      12               5  2006-12-05   Tues            13859
 2006      12               6  2006-12-06   Wed             13840
 2006      12               7  2006-12-07   Thurs           13619
 2006      12               8  2006-12-08   Fri             12945
 2006      12               9  2006-12-09   Sat              8769
 2006      12              10  2006-12-10   Sun              7520
 2006      12              11  2006-12-11   Mon             12803
 2006      12              12  2006-12-12   Tues            14301
 2006      12              13  2006-12-13   Wed             13794
 2006      12              14  2006-12-14   Thurs           13993
 2006      12              15  2006-12-15   Fri             13489
 2006      12              16  2006-12-16   Sat              9012
 2006      12              17  2006-12-17   Sun              7741
 2006      12              18  2006-12-18   Mon             13597
 2006      12              19  2006-12-19   Tues            14900
 2006      12              20  2006-12-20   Wed             14900
 2006      12              21  2006-12-21   Thurs           14452
 2006      12              22  2006-12-22   Fri             12998
 2006      12              23  2006-12-23   Sat              8318
 2006      12              24  2006-12-24   Sun              6708
 2006      12              25  2006-12-25   Mon              6409
 2006      12              26  2006-12-26   Tues            11087
 2006      12              27  2006-12-27   Wed             14795
 2006      12              28  2006-12-28   Thurs           14997
 2006      12              29  2006-12-29   Fri             14402
 2006      12              30  2006-12-30   Sat              9498
 2006      12              31  2006-12-31   Sun              7569
 2007       1               1  2007-01-01   Mon              7322
 2007       1               2  2007-01-02   Tues            11807
 2007       1               3  2007-01-03   Wed             13687
 2007       1               4  2007-01-04   Thurs           13564
 2007       1               5  2007-01-05   Fri             13960
 2007       1               6  2007-01-06   Sat              8865
 2007       1               7  2007-01-07   Sun              7580
 2007       1               8  2007-01-08   Mon             12315
 2007       1               9  2007-01-09   Tues            13237
 2007       1              10  2007-01-10   Wed             13264
 2007       1              11  2007-01-11   Thurs           13517
 2007       1              12  2007-01-12   Fri             13400
 2007       1              13  2007-01-13   Sat              8670
 2007       1              14  2007-01-14   Sun              7653
 2007       1              15  2007-01-15   Mon             11820
 2007       1              16  2007-01-16   Tues            12825
 2007       1              17  2007-01-17   Wed             13244
 2007       1              18  2007-01-18   Thurs           13495
 2007       1              19  2007-01-19   Fri             12921
 2007       1              20  2007-01-20   Sat              8600
 2007       1              21  2007-01-21   Sun              7563
 2007       1              22  2007-01-22   Mon             12454
 2007       1              23  2007-01-23   Tues            13418
 2007       1              24  2007-01-24   Wed             13320
 2007       1              25  2007-01-25   Thurs           13448
 2007       1              26  2007-01-26   Fri             13110
 2007       1              27  2007-01-27   Sat              8633
 2007       1              28  2007-01-28   Sun              7633
 2007       1              29  2007-01-29   Mon             12402
 2007       1              30  2007-01-30   Tues            13486
 2007       1              31  2007-01-31   Wed             13308
 2007       2               1  2007-02-01   Thurs           13557
 2007       2               2  2007-02-02   Fri             13305
 2007       2               3  2007-02-03   Sat              8821
 2007       2               4  2007-02-04   Sun              7628
 2007       2               5  2007-02-05   Mon             12369
 2007       2               6  2007-02-06   Tues            13495
 2007       2               7  2007-02-07   Wed             13466
 2007       2               8  2007-02-08   Thurs           13451
 2007       2               9  2007-02-09   Fri             13419
 2007       2              10  2007-02-10   Sat              8732
 2007       2              11  2007-02-11   Sun              7833
 2007       2              12  2007-02-12   Mon             12792
 2007       2              13  2007-02-13   Tues            13437
 2007       2              14  2007-02-14   Wed             13647
 2007       2              15  2007-02-15   Thurs           13642
 2007       2              16  2007-02-16   Fri             13517
 2007       2              17  2007-02-17   Sat              8940
 2007       2              18  2007-02-18   Sun              7791
 2007       2              19  2007-02-19   Mon             11752
 2007       2              20  2007-02-20   Tues            13466
 2007       2              21  2007-02-21   Wed             13470
 2007       2              22  2007-02-22   Thurs           13748
 2007       2              23  2007-02-23   Fri             13347
 2007       2              24  2007-02-24   Sat              8732
 2007       2              25  2007-02-25   Sun              7725
 2007       2              26  2007-02-26   Mon             12578
 2007       2              27  2007-02-27   Tues            13591
 2007       2              28  2007-02-28   Wed             13366
 2007       3               1  2007-03-01   Thurs           13572
 2007       3               2  2007-03-02   Fri             13244
 2007       3               3  2007-03-03   Sat              8739
 2007       3               4  2007-03-04   Sun              7566
 2007       3               5  2007-03-05   Mon             12480
 2007       3               6  2007-03-06   Tues            13551
 2007       3               7  2007-03-07   Wed             13520
 2007       3               8  2007-03-08   Thurs           13751
 2007       3               9  2007-03-09   Fri             13508
 2007       3              10  2007-03-10   Sat              8729
 2007       3              11  2007-03-11   Sun              7390
 2007       3              12  2007-03-12   Mon             12524
 2007       3              13  2007-03-13   Tues            13147
 2007       3              14  2007-03-14   Wed             13311
 2007       3              15  2007-03-15   Thurs           13471
 2007       3              16  2007-03-16   Fri             13286
 2007       3              17  2007-03-17   Sat              8791
 2007       3              18  2007-03-18   Sun              7681
 2007       3              19  2007-03-19   Mon             12366
 2007       3              20  2007-03-20   Tues            13844
 2007       3              21  2007-03-21   Wed             13710
 2007       3              22  2007-03-22   Thurs           13388
 2007       3              23  2007-03-23   Fri             13464
 2007       3              24  2007-03-24   Sat              8762
 2007       3              25  2007-03-25   Sun              7785
 2007       3              26  2007-03-26   Mon             12462
 2007       3              27  2007-03-27   Tues            13664
 2007       3              28  2007-03-28   Wed             13420
 2007       3              29  2007-03-29   Thurs           13171
 2007       3              30  2007-03-30   Fri             13138
 2007       3              31  2007-03-31   Sat              8453
 2007       4               1  2007-04-01   Sun              7372
 2007       4               2  2007-04-02   Mon             12450
 2007       4               3  2007-04-03   Tues            13504
 2007       4               4  2007-04-04   Wed             13729
 2007       4               5  2007-04-05   Thurs           13360
 2007       4               6  2007-04-06   Fri             12308
 2007       4               7  2007-04-07   Sat              8253
 2007       4               8  2007-04-08   Sun              6903
 2007       4               9  2007-04-09   Mon             12120
 2007       4              10  2007-04-10   Tues            13564
 2007       4              11  2007-04-11   Wed             13430
 2007       4              12  2007-04-12   Thurs           13609
 2007       4              13  2007-04-13   Fri             12168
 2007       4              14  2007-04-14   Sat              8237
 2007       4              15  2007-04-15   Sun              7225
 2007       4              16  2007-04-16   Mon             12502
 2007       4              17  2007-04-17   Tues            13604
 2007       4              18  2007-04-18   Wed             13386
 2007       4              19  2007-04-19   Thurs           13358
 2007       4              20  2007-04-20   Fri             13000
 2007       4              21  2007-04-21   Sat              8302
 2007       4              22  2007-04-22   Sun              7590
 2007       4              23  2007-04-23   Mon             12431
 2007       4              24  2007-04-24   Tues            13519
 2007       4              25  2007-04-25   Wed             13368
 2007       4              26  2007-04-26   Thurs           13001
 2007       4              27  2007-04-27   Fri             12795
 2007       4              28  2007-04-28   Sat              8302
 2007       4              29  2007-04-29   Sun              7409
 2007       4              30  2007-04-30   Mon             12182
 2007       5               1  2007-05-01   Tues            13902
 2007       5               2  2007-05-02   Wed             13325
 2007       5               3  2007-05-03   Thurs           13155
 2007       5               4  2007-05-04   Fri             12773
 2007       5               5  2007-05-05   Sat              8374
 2007       5               6  2007-05-06   Sun              7476
 2007       5               7  2007-05-07   Mon             12250
 2007       5               8  2007-05-08   Tues            13267
 2007       5               9  2007-05-09   Wed             13111
 2007       5              10  2007-05-10   Thurs           13504
 2007       5              11  2007-05-11   Fri             13070
 2007       5              12  2007-05-12   Sat              8489
 2007       5              13  2007-05-13   Sun              7260
 2007       5              14  2007-05-14   Mon             12552
 2007       5              15  2007-05-15   Tues            13995
 2007       5              16  2007-05-16   Wed             13723
 2007       5              17  2007-05-17   Thurs           13408
 2007       5              18  2007-05-18   Fri             12782
 2007       5              19  2007-05-19   Sat              8560
 2007       5              20  2007-05-20   Sun              7577
 2007       5              21  2007-05-21   Mon             12816
 2007       5              22  2007-05-22   Tues            14143
 2007       5              23  2007-05-23   Wed             13906
 2007       5              24  2007-05-24   Thurs           14010
 2007       5              25  2007-05-25   Fri             13670
 2007       5              26  2007-05-26   Sat              8764
 2007       5              27  2007-05-27   Sun              7607
 2007       5              28  2007-05-28   Mon              7917
 2007       5              29  2007-05-29   Tues            13291
 2007       5              30  2007-05-30   Wed             14569
 2007       5              31  2007-05-31   Thurs           14245
 2007       6               1  2007-06-01   Fri             13714
 2007       6               2  2007-06-02   Sat              8977
 2007       6               3  2007-06-03   Sun              7813
 2007       6               4  2007-06-04   Mon             12711
 2007       6               5  2007-06-05   Tues            13848
 2007       6               6  2007-06-06   Wed             13703
 2007       6               7  2007-06-07   Thurs           13674
 2007       6               8  2007-06-08   Fri             13595
 2007       6               9  2007-06-09   Sat              8810
 2007       6              10  2007-06-10   Sun              7596
 2007       6              11  2007-06-11   Mon             12826
 2007       6              12  2007-06-12   Tues            13969
 2007       6              13  2007-06-13   Wed             13534
 2007       6              14  2007-06-14   Thurs           14139
 2007       6              15  2007-06-15   Fri             13563
 2007       6              16  2007-06-16   Sat              8967
 2007       6              17  2007-06-17   Sun              7837
 2007       6              18  2007-06-18   Mon             13178
 2007       6              19  2007-06-19   Tues            14017
 2007       6              20  2007-06-20   Wed             13904
 2007       6              21  2007-06-21   Thurs           13837
 2007       6              22  2007-06-22   Fri             13697
 2007       6              23  2007-06-23   Sat              9105
 2007       6              24  2007-06-24   Sun              7710
 2007       6              25  2007-06-25   Mon             12972
 2007       6              26  2007-06-26   Tues            14395
 2007       6              27  2007-06-27   Wed             14318
 2007       6              28  2007-06-28   Thurs           14224
 2007       6              29  2007-06-29   Fri             13837
 2007       6              30  2007-06-30   Sat              9016
 2007       7               1  2007-07-01   Sun              7937
 2007       7               2  2007-07-02   Mon             13794
 2007       7               3  2007-07-03   Tues            14814
 2007       7               4  2007-07-04   Wed              9746
 2007       7               5  2007-07-05   Thurs           13367
 2007       7               6  2007-07-06   Fri             14143
 2007       7               7  2007-07-07   Sat             10499
 2007       7               8  2007-07-08   Sun              8322
 2007       7               9  2007-07-09   Mon             13473
 2007       7              10  2007-07-10   Tues            14927
 2007       7              11  2007-07-11   Wed             14594
 2007       7              12  2007-07-12   Thurs           14115
 2007       7              13  2007-07-13   Fri             13228
 2007       7              14  2007-07-14   Sat              9327
 2007       7              15  2007-07-15   Sun              7983
 2007       7              16  2007-07-16   Mon             13483
 2007       7              17  2007-07-17   Tues            14828
 2007       7              18  2007-07-18   Wed             14349
 2007       7              19  2007-07-19   Thurs           14169
 2007       7              20  2007-07-20   Fri             14070
 2007       7              21  2007-07-21   Sat              9356
 2007       7              22  2007-07-22   Sun              7963
 2007       7              23  2007-07-23   Mon             13293
 2007       7              24  2007-07-24   Tues            14783
 2007       7              25  2007-07-25   Wed             14510
 2007       7              26  2007-07-26   Thurs           14212
 2007       7              27  2007-07-27   Fri             14354
 2007       7              28  2007-07-28   Sat              9258
 2007       7              29  2007-07-29   Sun              8116
 2007       7              30  2007-07-30   Mon             13439
 2007       7              31  2007-07-31   Tues            14409
 2007       8               1  2007-08-01   Wed             14627
 2007       8               2  2007-08-02   Thurs           14241
 2007       8               3  2007-08-03   Fri             13961
 2007       8               4  2007-08-04   Sat              9083
 2007       8               5  2007-08-05   Sun              8160
 2007       8               6  2007-08-06   Mon             13318
 2007       8               7  2007-08-07   Tues            14670
 2007       8               8  2007-08-08   Wed             14477
 2007       8               9  2007-08-09   Thurs           14314
 2007       8              10  2007-08-10   Fri             13836
 2007       8              11  2007-08-11   Sat              9200
 2007       8              12  2007-08-12   Sun              7945
 2007       8              13  2007-08-13   Mon             13199
 2007       8              14  2007-08-14   Tues            14695
 2007       8              15  2007-08-15   Wed             14629
 2007       8              16  2007-08-16   Thurs           14674
 2007       8              17  2007-08-17   Fri             14136
 2007       8              18  2007-08-18   Sat              9332
 2007       8              19  2007-08-19   Sun              8115
 2007       8              20  2007-08-20   Mon             13496
 2007       8              21  2007-08-21   Tues            14541
 2007       8              22  2007-08-22   Wed             14344
 2007       8              23  2007-08-23   Thurs           14447
 2007       8              24  2007-08-24   Fri             14162
 2007       8              25  2007-08-25   Sat              9234
 2007       8              26  2007-08-26   Sun              8025
 2007       8              27  2007-08-27   Mon             13187
 2007       8              28  2007-08-28   Tues            14959
 2007       8              29  2007-08-29   Wed             14517
 2007       8              30  2007-08-30   Thurs           14668
 2007       8              31  2007-08-31   Fri             14163
 2007       9               1  2007-09-01   Sat              9465
 2007       9               2  2007-09-02   Sun              7957
 2007       9               3  2007-09-03   Mon              8397
 2007       9               4  2007-09-04   Tues            13600
 2007       9               5  2007-09-05   Wed             15440
 2007       9               6  2007-09-06   Thurs           15010
 2007       9               7  2007-09-07   Fri             14818
 2007       9               8  2007-09-08   Sat              9745
 2007       9               9  2007-09-09   Sun              8389
 2007       9              10  2007-09-10   Mon             13844
 2007       9              11  2007-09-11   Tues            14063
 2007       9              12  2007-09-12   Wed             14960
 2007       9              13  2007-09-13   Thurs           14525
 2007       9              14  2007-09-14   Fri             14603
 2007       9              15  2007-09-15   Sat              9807
 2007       9              16  2007-09-16   Sun              8283
 2007       9              17  2007-09-17   Mon             13798
 2007       9              18  2007-09-18   Tues            15194
 2007       9              19  2007-09-19   Wed             14783
 2007       9              20  2007-09-20   Thurs           15139
 2007       9              21  2007-09-21   Fri             14473
 2007       9              22  2007-09-22   Sat              9604
 2007       9              23  2007-09-23   Sun              8512
 2007       9              24  2007-09-24   Mon             13534
 2007       9              25  2007-09-25   Tues            14788
 2007       9              26  2007-09-26   Wed             14417
 2007       9              27  2007-09-27   Thurs           14519
 2007       9              28  2007-09-28   Fri             13926
 2007       9              29  2007-09-29   Sat              9198
 2007       9              30  2007-09-30   Sun              7983
 2007      10               1  2007-10-01   Mon             13244
 2007      10               2  2007-10-02   Tues            14231
 2007      10               3  2007-10-03   Wed             14021
 2007      10               4  2007-10-04   Thurs           13756
 2007      10               5  2007-10-05   Fri             13649
 2007      10               6  2007-10-06   Sat              8901
 2007      10               7  2007-10-07   Sun              7858
 2007      10               8  2007-10-08   Mon             12582
 2007      10               9  2007-10-09   Tues            14033
 2007      10              10  2007-10-10   Wed             14086
 2007      10              11  2007-10-11   Thurs           13580
 2007      10              12  2007-10-12   Fri             13400
 2007      10              13  2007-10-13   Sat              8756
 2007      10              14  2007-10-14   Sun              7579
 2007      10              15  2007-10-15   Mon             12987
 2007      10              16  2007-10-16   Tues            14039
 2007      10              17  2007-10-17   Wed             13783
 2007      10              18  2007-10-18   Thurs           13581
 2007      10              19  2007-10-19   Fri             13437
 2007      10              20  2007-10-20   Sat              8607
 2007      10              21  2007-10-21   Sun              7723
 2007      10              22  2007-10-22   Mon             12730
 2007      10              23  2007-10-23   Tues            13681
 2007      10              24  2007-10-24   Wed             13771
 2007      10              25  2007-10-25   Thurs           13874
 2007      10              26  2007-10-26   Fri             13223
 2007      10              27  2007-10-27   Sat              8806
 2007      10              28  2007-10-28   Sun              7560
 2007      10              29  2007-10-29   Mon             12648
 2007      10              30  2007-10-30   Tues            13389
 2007      10              31  2007-10-31   Wed             11757
 2007      11               1  2007-11-01   Thurs           13926
 2007      11               2  2007-11-02   Fri             13803
 2007      11               3  2007-11-03   Sat              8837
 2007      11               4  2007-11-04   Sun              7975
 2007      11               5  2007-11-05   Mon             13023
 2007      11               6  2007-11-06   Tues            14159
 2007      11               7  2007-11-07   Wed             13905
 2007      11               8  2007-11-08   Thurs           13734
 2007      11               9  2007-11-09   Fri             13542
 2007      11              10  2007-11-10   Sat              8755
 2007      11              11  2007-11-11   Sun              7920
 2007      11              12  2007-11-12   Mon             12746
 2007      11              13  2007-11-13   Tues            13640
 2007      11              14  2007-11-14   Wed             13850
 2007      11              15  2007-11-15   Thurs           14432
 2007      11              16  2007-11-16   Fri             14156
 2007      11              17  2007-11-17   Sat              9123
 2007      11              18  2007-11-18   Sun              7898
 2007      11              19  2007-11-19   Mon             13944
 2007      11              20  2007-11-20   Tues            14808
 2007      11              21  2007-11-21   Wed             13230
 2007      11              22  2007-11-22   Thurs            7567
 2007      11              23  2007-11-23   Fri              9598
 2007      11              24  2007-11-24   Sat              8380
 2007      11              25  2007-11-25   Sun              7668
 2007      11              26  2007-11-26   Mon             13192
 2007      11              27  2007-11-27   Tues            14707
 2007      11              28  2007-11-28   Wed             14030
 2007      11              29  2007-11-29   Thurs           13821
 2007      11              30  2007-11-30   Fri             12966
 2007      12               1  2007-12-01   Sat              8761
 2007      12               2  2007-12-02   Sun              7676
 2007      12               3  2007-12-03   Mon             12581
 2007      12               4  2007-12-04   Tues            13878
 2007      12               5  2007-12-05   Wed             13695
 2007      12               6  2007-12-06   Thurs           13514
 2007      12               7  2007-12-07   Fri             13168
 2007      12               8  2007-12-08   Sat              8676
 2007      12               9  2007-12-09   Sun              7603
 2007      12              10  2007-12-10   Mon             12759
 2007      12              11  2007-12-11   Tues            13962
 2007      12              12  2007-12-12   Wed             13906
 2007      12              13  2007-12-13   Thurs           13418
 2007      12              14  2007-12-14   Fri             13267
 2007      12              15  2007-12-15   Sat              8654
 2007      12              16  2007-12-16   Sun              7636
 2007      12              17  2007-12-17   Mon             13455
 2007      12              18  2007-12-18   Tues            14983
 2007      12              19  2007-12-19   Wed             14941
 2007      12              20  2007-12-20   Thurs           15214
 2007      12              21  2007-12-21   Fri             14808
 2007      12              22  2007-12-22   Sat              9194
 2007      12              23  2007-12-23   Sun              7398
 2007      12              24  2007-12-24   Mon              7727
 2007      12              25  2007-12-25   Tues             6624
 2007      12              26  2007-12-26   Wed             12306
 2007      12              27  2007-12-27   Thurs           15590
 2007      12              28  2007-12-28   Fri             15555
 2007      12              29  2007-12-29   Sat              9961
 2007      12              30  2007-12-30   Sun              8191
 2007      12              31  2007-12-31   Mon             11102
 2008       1               1  2008-01-01   Tues             8014
 2008       1               2  2008-01-02   Wed             11729
 2008       1               3  2008-01-03   Thurs           13691
 2008       1               4  2008-01-04   Fri             13799
 2008       1               5  2008-01-05   Sat              9113
 2008       1               6  2008-01-06   Sun              7610
 2008       1               7  2008-01-07   Mon             12335
 2008       1               8  2008-01-08   Tues            13336
 2008       1               9  2008-01-09   Wed             13022
 2008       1              10  2008-01-10   Thurs           13617
 2008       1              11  2008-01-11   Fri             13412
 2008       1              12  2008-01-12   Sat              8712
 2008       1              13  2008-01-13   Sun              7407
 2008       1              14  2008-01-14   Mon             12566
 2008       1              15  2008-01-15   Tues            13344
 2008       1              16  2008-01-16   Wed             13183
 2008       1              17  2008-01-17   Thurs           13332
 2008       1              18  2008-01-18   Fri             13473
 2008       1              19  2008-01-19   Sat              8480
 2008       1              20  2008-01-20   Sun              7481
 2008       1              21  2008-01-21   Mon             11883
 2008       1              22  2008-01-22   Tues            13297
 2008       1              23  2008-01-23   Wed             13458
 2008       1              24  2008-01-24   Thurs           13485
 2008       1              25  2008-01-25   Fri             13305
 2008       1              26  2008-01-26   Sat              8717
 2008       1              27  2008-01-27   Sun              7643
 2008       1              28  2008-01-28   Mon             12592
 2008       1              29  2008-01-29   Tues            13412
 2008       1              30  2008-01-30   Wed             13233
 2008       1              31  2008-01-31   Thurs           13187
 2008       2               1  2008-02-01   Fri             13191
 2008       2               2  2008-02-02   Sat              8646
 2008       2               3  2008-02-03   Sun              7616
 2008       2               4  2008-02-04   Mon             12592
 2008       2               5  2008-02-05   Tues            13447
 2008       2               6  2008-02-06   Wed             13338
 2008       2               7  2008-02-07   Thurs           13636
 2008       2               8  2008-02-08   Fri             13582
 2008       2               9  2008-02-09   Sat              8862
 2008       2              10  2008-02-10   Sun              7637
 2008       2              11  2008-02-11   Mon             12578
 2008       2              12  2008-02-12   Tues            13867
 2008       2              13  2008-02-13   Wed             13125
 2008       2              14  2008-02-14   Thurs           14207
 2008       2              15  2008-02-15   Fri             13696
 2008       2              16  2008-02-16   Sat              8780
 2008       2              17  2008-02-17   Sun              7646
 2008       2              18  2008-02-18   Mon             12032
 2008       2              19  2008-02-19   Tues            13548
 2008       2              20  2008-02-20   Wed             13418
 2008       2              21  2008-02-21   Thurs           13507
 2008       2              22  2008-02-22   Fri             13183
 2008       2              23  2008-02-23   Sat              8973
 2008       2              24  2008-02-24   Sun              7505
 2008       2              25  2008-02-25   Mon             12621
 2008       2              26  2008-02-26   Tues            13500
 2008       2              27  2008-02-27   Wed             13316
 2008       2              28  2008-02-28   Thurs           13674
 2008       2              29  2008-02-29   Fri             11631
 2008       3               1  2008-03-01   Sat              8832
 2008       3               2  2008-03-02   Sun              7535
 2008       3               3  2008-03-03   Mon             12621
 2008       3               4  2008-03-04   Tues            13622
 2008       3               5  2008-03-05   Wed             13160
 2008       3               6  2008-03-06   Thurs           13279
 2008       3               7  2008-03-07   Fri             13104
 2008       3               8  2008-03-08   Sat              8409
 2008       3               9  2008-03-09   Sun              7216
 2008       3              10  2008-03-10   Mon             12648
 2008       3              11  2008-03-11   Tues            13571
 2008       3              12  2008-03-12   Wed             13353
 2008       3              13  2008-03-13   Thurs           13037
 2008       3              14  2008-03-14   Fri             13321
 2008       3              15  2008-03-15   Sat              8806
 2008       3              16  2008-03-16   Sun              7626
 2008       3              17  2008-03-17   Mon             13006
 2008       3              18  2008-03-18   Tues            13766
 2008       3              19  2008-03-19   Wed             13356
 2008       3              20  2008-03-20   Thurs           13614
 2008       3              21  2008-03-21   Fri             12606
 2008       3              22  2008-03-22   Sat              8477
 2008       3              23  2008-03-23   Sun              7174
 2008       3              24  2008-03-24   Mon             12352
 2008       3              25  2008-03-25   Tues            13572
 2008       3              26  2008-03-26   Wed             13116
 2008       3              27  2008-03-27   Thurs           13224
 2008       3              28  2008-03-28   Fri             12886
 2008       3              29  2008-03-29   Sat              8616
 2008       3              30  2008-03-30   Sun              7368
 2008       3              31  2008-03-31   Mon             12211
 2008       4               1  2008-04-01   Tues            12771
 2008       4               2  2008-04-02   Wed             13491
 2008       4               3  2008-04-03   Thurs           13340
 2008       4               4  2008-04-04   Fri             13405
 2008       4               5  2008-04-05   Sat              8600
 2008       4               6  2008-04-06   Sun              7606
 2008       4               7  2008-04-07   Mon             12312
 2008       4               8  2008-04-08   Tues            13526
 2008       4               9  2008-04-09   Wed             13009
 2008       4              10  2008-04-10   Thurs           13236
 2008       4              11  2008-04-11   Fri             13053
 2008       4              12  2008-04-12   Sat              8531
 2008       4              13  2008-04-13   Sun              7384
 2008       4              14  2008-04-14   Mon             12386
 2008       4              15  2008-04-15   Tues            13274
 2008       4              16  2008-04-16   Wed             13120
 2008       4              17  2008-04-17   Thurs           13164
 2008       4              18  2008-04-18   Fri             13090
 2008       4              19  2008-04-19   Sat              8695
 2008       4              20  2008-04-20   Sun              7504
 2008       4              21  2008-04-21   Mon             12376
 2008       4              22  2008-04-22   Tues            13428
 2008       4              23  2008-04-23   Wed             13284
 2008       4              24  2008-04-24   Thurs           13317
 2008       4              25  2008-04-25   Fri             12851
 2008       4              26  2008-04-26   Sat              8304
 2008       4              27  2008-04-27   Sun              7439
 2008       4              28  2008-04-28   Mon             12325
 2008       4              29  2008-04-29   Tues            13313
 2008       4              30  2008-04-30   Wed             13210
 2008       5               1  2008-05-01   Thurs           13520
 2008       5               2  2008-05-02   Fri             12872
 2008       5               3  2008-05-03   Sat              8329
 2008       5               4  2008-05-04   Sun              7135
 2008       5               5  2008-05-05   Mon             12480
 2008       5               6  2008-05-06   Tues            13416
 2008       5               7  2008-05-07   Wed             13059
 2008       5               8  2008-05-08   Thurs           13387
 2008       5               9  2008-05-09   Fri             12934
 2008       5              10  2008-05-10   Sat              8554
 2008       5              11  2008-05-11   Sun              7293
 2008       5              12  2008-05-12   Mon             12613
 2008       5              13  2008-05-13   Tues            13238
 2008       5              14  2008-05-14   Wed             13405
 2008       5              15  2008-05-15   Thurs           13521
 2008       5              16  2008-05-16   Fri             13062
 2008       5              17  2008-05-17   Sat              8246
 2008       5              18  2008-05-18   Sun              7573
 2008       5              19  2008-05-19   Mon             12614
 2008       5              20  2008-05-20   Tues            13912
 2008       5              21  2008-05-21   Wed             13853
 2008       5              22  2008-05-22   Thurs           13732
 2008       5              23  2008-05-23   Fri             13342
 2008       5              24  2008-05-24   Sat              8529
 2008       5              25  2008-05-25   Sun              7441
 2008       5              26  2008-05-26   Mon              7948
 2008       5              27  2008-05-27   Tues            13181
 2008       5              28  2008-05-28   Wed             14397
 2008       5              29  2008-05-29   Thurs           13783
 2008       5              30  2008-05-30   Fri             13602
 2008       5              31  2008-05-31   Sat              8864
 2008       6               1  2008-06-01   Sun              7651
 2008       6               2  2008-06-02   Mon             12590
 2008       6               3  2008-06-03   Tues            13459
 2008       6               4  2008-06-04   Wed             13597
 2008       6               5  2008-06-05   Thurs           13438
 2008       6               6  2008-06-06   Fri             13159
 2008       6               7  2008-06-07   Sat              8708
 2008       6               8  2008-06-08   Sun              7727
 2008       6               9  2008-06-09   Mon             12450
 2008       6              10  2008-06-10   Tues            13789
 2008       6              11  2008-06-11   Wed             13609
 2008       6              12  2008-06-12   Thurs           13796
 2008       6              13  2008-06-13   Fri             12394
 2008       6              14  2008-06-14   Sat              8603
 2008       6              15  2008-06-15   Sun              7779
 2008       6              16  2008-06-16   Mon             12732
 2008       6              17  2008-06-17   Tues            13756
 2008       6              18  2008-06-18   Wed             13638
 2008       6              19  2008-06-19   Thurs           13452
 2008       6              20  2008-06-20   Fri             13403
 2008       6              21  2008-06-21   Sat              8857
 2008       6              22  2008-06-22   Sun              7651
 2008       6              23  2008-06-23   Mon             12794
 2008       6              24  2008-06-24   Tues            13983
 2008       6              25  2008-06-25   Wed             13728
 2008       6              26  2008-06-26   Thurs           13547
 2008       6              27  2008-06-27   Fri             13411
 2008       6              28  2008-06-28   Sat              8991
 2008       6              29  2008-06-29   Sun              7840
 2008       6              30  2008-06-30   Mon             12898
 2008       7               1  2008-07-01   Tues            14350
 2008       7               2  2008-07-02   Wed             14189
 2008       7               3  2008-07-03   Thurs           14182
 2008       7               4  2008-07-04   Fri              9449
 2008       7               5  2008-07-05   Sat              8061
 2008       7               6  2008-07-06   Sun              7725
 2008       7               7  2008-07-07   Mon             13340
 2008       7               8  2008-07-08   Tues            14771
 2008       7               9  2008-07-09   Wed             14098
 2008       7              10  2008-07-10   Thurs           13952
 2008       7              11  2008-07-11   Fri             13697
 2008       7              12  2008-07-12   Sat              9084
 2008       7              13  2008-07-13   Sun              7885
 2008       7              14  2008-07-14   Mon             12881
 2008       7              15  2008-07-15   Tues            14221
 2008       7              16  2008-07-16   Wed             14016
 2008       7              17  2008-07-17   Thurs           13987
 2008       7              18  2008-07-18   Fri             13542
 2008       7              19  2008-07-19   Sat              8978
 2008       7              20  2008-07-20   Sun              7999
 2008       7              21  2008-07-21   Mon             13053
 2008       7              22  2008-07-22   Tues            14241
 2008       7              23  2008-07-23   Wed             13994
 2008       7              24  2008-07-24   Thurs           13622
 2008       7              25  2008-07-25   Fri             13417
 2008       7              26  2008-07-26   Sat              8898
 2008       7              27  2008-07-27   Sun              7940
 2008       7              28  2008-07-28   Mon             13054
 2008       7              29  2008-07-29   Tues            14259
 2008       7              30  2008-07-30   Wed             13883
 2008       7              31  2008-07-31   Thurs           13939
 2008       8               1  2008-08-01   Fri             13684
 2008       8               2  2008-08-02   Sat              9018
 2008       8               3  2008-08-03   Sun              7911
 2008       8               4  2008-08-04   Mon             13155
 2008       8               5  2008-08-05   Tues            13981
 2008       8               6  2008-08-06   Wed             13800
 2008       8               7  2008-08-07   Thurs           13859
 2008       8               8  2008-08-08   Fri             15374
 2008       8               9  2008-08-09   Sat              9233
 2008       8              10  2008-08-10   Sun              7951
 2008       8              11  2008-08-11   Mon             13186
 2008       8              12  2008-08-12   Tues            14336
 2008       8              13  2008-08-13   Wed             13933
 2008       8              14  2008-08-14   Thurs           14248
 2008       8              15  2008-08-15   Fri             13890
 2008       8              16  2008-08-16   Sat              9180
 2008       8              17  2008-08-17   Sun              7848
 2008       8              18  2008-08-18   Mon             13404
 2008       8              19  2008-08-19   Tues            14348
 2008       8              20  2008-08-20   Wed             14083
 2008       8              21  2008-08-21   Thurs           14010
 2008       8              22  2008-08-22   Fri             13923
 2008       8              23  2008-08-23   Sat              8997
 2008       8              24  2008-08-24   Sun              8008
 2008       8              25  2008-08-25   Mon             13051
 2008       8              26  2008-08-26   Tues            14260
 2008       8              27  2008-08-27   Wed             14213
 2008       8              28  2008-08-28   Thurs           14718
 2008       8              29  2008-08-29   Fri             14260
 2008       8              30  2008-08-30   Sat              9182
 2008       8              31  2008-08-31   Sun              8002
 2008       9               1  2008-09-01   Mon              8105
 2008       9               2  2008-09-02   Tues            13488
 2008       9               3  2008-09-03   Wed             14657
 2008       9               4  2008-09-04   Thurs           14980
 2008       9               5  2008-09-05   Fri             14475
 2008       9               6  2008-09-06   Sat              9450
 2008       9               7  2008-09-07   Sun              8209
 2008       9               8  2008-09-08   Mon             13437
 2008       9               9  2008-09-09   Tues            14567
 2008       9              10  2008-09-10   Wed             14474
 2008       9              11  2008-09-11   Thurs           13391
 2008       9              12  2008-09-12   Fri             14312
 2008       9              13  2008-09-13   Sat              9552
 2008       9              14  2008-09-14   Sun              8405
 2008       9              15  2008-09-15   Mon             13775
 2008       9              16  2008-09-16   Tues            14736
 2008       9              17  2008-09-17   Wed             14316
 2008       9              18  2008-09-18   Thurs           14512
 2008       9              19  2008-09-19   Fri             14151
 2008       9              20  2008-09-20   Sat              9227
 2008       9              21  2008-09-21   Sun              8183
 2008       9              22  2008-09-22   Mon             13246
 2008       9              23  2008-09-23   Tues            14464
 2008       9              24  2008-09-24   Wed             14016
 2008       9              25  2008-09-25   Thurs           14176
 2008       9              26  2008-09-26   Fri             13705
 2008       9              27  2008-09-27   Sat              9168
 2008       9              28  2008-09-28   Sun              7892
 2008       9              29  2008-09-29   Mon             12819
 2008       9              30  2008-09-30   Tues            13737
 2008      10               1  2008-10-01   Wed             13761
 2008      10               2  2008-10-02   Thurs           13742
 2008      10               3  2008-10-03   Fri             13189
 2008      10               4  2008-10-04   Sat              8788
 2008      10               5  2008-10-05   Sun              7609
 2008      10               6  2008-10-06   Mon             12557
 2008      10               7  2008-10-07   Tues            13728
 2008      10               8  2008-10-08   Wed             13499
 2008      10               9  2008-10-09   Thurs           13301
 2008      10              10  2008-10-10   Fri             13264
 2008      10              11  2008-10-11   Sat              8624
 2008      10              12  2008-10-12   Sun              7590
 2008      10              13  2008-10-13   Mon             11616
 2008      10              14  2008-10-14   Tues            13396
 2008      10              15  2008-10-15   Wed             13299
 2008      10              16  2008-10-16   Thurs           13163
 2008      10              17  2008-10-17   Fri             12957
 2008      10              18  2008-10-18   Sat              8373
 2008      10              19  2008-10-19   Sun              7205
 2008      10              20  2008-10-20   Mon             12384
 2008      10              21  2008-10-21   Tues            13478
 2008      10              22  2008-10-22   Wed             13256
 2008      10              23  2008-10-23   Thurs           13239
 2008      10              24  2008-10-24   Fri             12872
 2008      10              25  2008-10-25   Sat              8409
 2008      10              26  2008-10-26   Sun              7318
 2008      10              27  2008-10-27   Mon             12358
 2008      10              28  2008-10-28   Tues            13528
 2008      10              29  2008-10-29   Wed             12954
 2008      10              30  2008-10-30   Thurs           12950
 2008      10              31  2008-10-31   Fri             11013
 2008      11               1  2008-11-01   Sat              8395
 2008      11               2  2008-11-02   Sun              7807
 2008      11               3  2008-11-03   Mon             12887
 2008      11               4  2008-11-04   Tues            13244
 2008      11               5  2008-11-05   Wed             13041
 2008      11               6  2008-11-06   Thurs           13153
 2008      11               7  2008-11-07   Fri             13203
 2008      11               8  2008-11-08   Sat              8538
 2008      11               9  2008-11-09   Sun              7305
 2008      11              10  2008-11-10   Mon             12333
 2008      11              11  2008-11-11   Tues            13323
 2008      11              12  2008-11-12   Wed             12852
 2008      11              13  2008-11-13   Thurs           12541
 2008      11              14  2008-11-14   Fri             12824
 2008      11              15  2008-11-15   Sat              8377
 2008      11              16  2008-11-16   Sun              7225
 2008      11              17  2008-11-17   Mon             12251
 2008      11              18  2008-11-18   Tues            13202
 2008      11              19  2008-11-19   Wed             12874
 2008      11              20  2008-11-20   Thurs           13436
 2008      11              21  2008-11-21   Fri             13189
 2008      11              22  2008-11-22   Sat              8449
 2008      11              23  2008-11-23   Sun              7301
 2008      11              24  2008-11-24   Mon             13493
 2008      11              25  2008-11-25   Tues            13929
 2008      11              26  2008-11-26   Wed             12242
 2008      11              27  2008-11-27   Thurs            7126
 2008      11              28  2008-11-28   Fri              9247
 2008      11              29  2008-11-29   Sat              7803
 2008      11              30  2008-11-30   Sun              7315
 2008      12               1  2008-12-01   Mon             13029
 2008      12               2  2008-12-02   Tues            14138
 2008      12               3  2008-12-03   Wed             13317
 2008      12               4  2008-12-04   Thurs           13250
 2008      12               5  2008-12-05   Fri             12734
 2008      12               6  2008-12-06   Sat              8422
 2008      12               7  2008-12-07   Sun              7282
 2008      12               8  2008-12-08   Mon             12322
 2008      12               9  2008-12-09   Tues            13112
 2008      12              10  2008-12-10   Wed             13113
 2008      12              11  2008-12-11   Thurs           12851
 2008      12              12  2008-12-12   Fri             12903
 2008      12              13  2008-12-13   Sat              8436
 2008      12              14  2008-12-14   Sun              7380
 2008      12              15  2008-12-15   Mon             12377
 2008      12              16  2008-12-16   Tues            13900
 2008      12              17  2008-12-17   Wed             13814
 2008      12              18  2008-12-18   Thurs           14324
 2008      12              19  2008-12-19   Fri             14007
 2008      12              20  2008-12-20   Sat              8665
 2008      12              21  2008-12-21   Sun              7635
 2008      12              22  2008-12-22   Mon             13831
 2008      12              23  2008-12-23   Tues            13374
 2008      12              24  2008-12-24   Wed              9235
 2008      12              25  2008-12-25   Thurs            6471
 2008      12              26  2008-12-26   Fri             10890
 2008      12              27  2008-12-27   Sat              8728
 2008      12              28  2008-12-28   Sun              7677
 2008      12              29  2008-12-29   Mon             13951
 2008      12              30  2008-12-30   Tues            15645
 2008      12              31  2008-12-31   Wed             12906
 2009       1               1  2009-01-01   Thurs            8145
 2009       1               2  2009-01-02   Fri             10995
 2009       1               3  2009-01-03   Sat              8338
 2009       1               4  2009-01-04   Sun              7283
 2009       1               5  2009-01-05   Mon             12125
 2009       1               6  2009-01-06   Tues            13222
 2009       1               7  2009-01-07   Wed             13119
 2009       1               8  2009-01-08   Thurs           13019
 2009       1               9  2009-01-09   Fri             12647
 2009       1              10  2009-01-10   Sat              8233
 2009       1              11  2009-01-11   Sun              7122
 2009       1              12  2009-01-12   Mon             12178
 2009       1              13  2009-01-13   Tues            12597
 2009       1              14  2009-01-14   Wed             13013
 2009       1              15  2009-01-15   Thurs           12800
 2009       1              16  2009-01-16   Fri             12542
 2009       1              17  2009-01-17   Sat              8175
 2009       1              18  2009-01-18   Sun              7151
 2009       1              19  2009-01-19   Mon             11353
 2009       1              20  2009-01-20   Tues            12935
 2009       1              21  2009-01-21   Wed             12822
 2009       1              22  2009-01-22   Thurs           13125
 2009       1              23  2009-01-23   Fri             12995
 2009       1              24  2009-01-24   Sat              8357
 2009       1              25  2009-01-25   Sun              7261
 2009       1              26  2009-01-26   Mon             12156
 2009       1              27  2009-01-27   Tues            13107
 2009       1              28  2009-01-28   Wed             12703
 2009       1              29  2009-01-29   Thurs           12729
 2009       1              30  2009-01-30   Fri             12527
 2009       1              31  2009-01-31   Sat              8201
 2009       2               1  2009-02-01   Sun              7255
 2009       2               2  2009-02-02   Mon             12525
 2009       2               3  2009-02-03   Tues            13330
 2009       2               4  2009-02-04   Wed             12894
 2009       2               5  2009-02-05   Thurs           12817
 2009       2               6  2009-02-06   Fri             12517
 2009       2               7  2009-02-07   Sat              8451
 2009       2               8  2009-02-08   Sun              7462
 2009       2               9  2009-02-09   Mon             12484
 2009       2              10  2009-02-10   Tues            13612
 2009       2              11  2009-02-11   Wed             13219
 2009       2              12  2009-02-12   Thurs           13635
 2009       2              13  2009-02-13   Fri             11832
 2009       2              14  2009-02-14   Sat              8550
 2009       2              15  2009-02-15   Sun              7434
 2009       2              16  2009-02-16   Mon             11731
 2009       2              17  2009-02-17   Tues            13151
 2009       2              18  2009-02-18   Wed             13324
 2009       2              19  2009-02-19   Thurs           13171
 2009       2              20  2009-02-20   Fri             12995
 2009       2              21  2009-02-21   Sat              8628
 2009       2              22  2009-02-22   Sun              7286
 2009       2              23  2009-02-23   Mon             12363
 2009       2              24  2009-02-24   Tues            13110
 2009       2              25  2009-02-25   Wed             13084
 2009       2              26  2009-02-26   Thurs           13134
 2009       2              27  2009-02-27   Fri             12732
 2009       2              28  2009-02-28   Sat              8396
 2009       3               1  2009-03-01   Sun              7342
 2009       3               2  2009-03-02   Mon             12276
 2009       3               3  2009-03-03   Tues            13265
 2009       3               4  2009-03-04   Wed             12903
 2009       3               5  2009-03-05   Thurs           13176
 2009       3               6  2009-03-06   Fri             13081
 2009       3               7  2009-03-07   Sat              8556
 2009       3               8  2009-03-08   Sun              7314
 2009       3               9  2009-03-09   Mon             12400
 2009       3              10  2009-03-10   Tues            13568
 2009       3              11  2009-03-11   Wed             12999
 2009       3              12  2009-03-12   Thurs           13134
 2009       3              13  2009-03-13   Fri             12087
 2009       3              14  2009-03-14   Sat              8396
 2009       3              15  2009-03-15   Sun              7130
 2009       3              16  2009-03-16   Mon             12264
 2009       3              17  2009-03-17   Tues            13542
 2009       3              18  2009-03-18   Wed             12987
 2009       3              19  2009-03-19   Thurs           12706
 2009       3              20  2009-03-20   Fri             12927
 2009       3              21  2009-03-21   Sat              8286
 2009       3              22  2009-03-22   Sun              7168
 2009       3              23  2009-03-23   Mon             12056
 2009       3              24  2009-03-24   Tues            13309
 2009       3              25  2009-03-25   Wed             13027
 2009       3              26  2009-03-26   Thurs           12785
 2009       3              27  2009-03-27   Fri             12692
 2009       3              28  2009-03-28   Sat              8381
 2009       3              29  2009-03-29   Sun              7348
 2009       3              30  2009-03-30   Mon             12330
 2009       3              31  2009-03-31   Tues            13136
 2009       4               1  2009-04-01   Wed             12247
 2009       4               2  2009-04-02   Thurs           13233
 2009       4               3  2009-04-03   Fri             13078
 2009       4               4  2009-04-04   Sat              8389
 2009       4               5  2009-04-05   Sun              7238
 2009       4               6  2009-04-06   Mon             12200
 2009       4               7  2009-04-07   Tues            13589
 2009       4               8  2009-04-08   Wed             13177
 2009       4               9  2009-04-09   Thurs           13278
 2009       4              10  2009-04-10   Fri             12007
 2009       4              11  2009-04-11   Sat              7906
 2009       4              12  2009-04-12   Sun              6864
 2009       4              13  2009-04-13   Mon             11617
 2009       4              14  2009-04-14   Tues            13415
 2009       4              15  2009-04-15   Wed             12804
 2009       4              16  2009-04-16   Thurs           13095
 2009       4              17  2009-04-17   Fri             12481
 2009       4              18  2009-04-18   Sat              8364
 2009       4              19  2009-04-19   Sun              7309
 2009       4              20  2009-04-20   Mon             12252
 2009       4              21  2009-04-21   Tues            13273
 2009       4              22  2009-04-22   Wed             12958
 2009       4              23  2009-04-23   Thurs           12872
 2009       4              24  2009-04-24   Fri             12231
 2009       4              25  2009-04-25   Sat              8191
 2009       4              26  2009-04-26   Sun              7198
 2009       4              27  2009-04-27   Mon             12199
 2009       4              28  2009-04-28   Tues            13243
 2009       4              29  2009-04-29   Wed             12701
 2009       4              30  2009-04-30   Thurs           12413
 2009       5               1  2009-05-01   Fri             12930
 2009       5               2  2009-05-02   Sat              8169
 2009       5               3  2009-05-03   Sun              7220
 2009       5               4  2009-05-04   Mon             12126
 2009       5               5  2009-05-05   Tues            13358
 2009       5               6  2009-05-06   Wed             12686
 2009       5               7  2009-05-07   Thurs           13088
 2009       5               8  2009-05-08   Fri             12738
 2009       5               9  2009-05-09   Sat              8180
 2009       5              10  2009-05-10   Sun              7339
 2009       5              11  2009-05-11   Mon             12410
 2009       5              12  2009-05-12   Tues            13415
 2009       5              13  2009-05-13   Wed             12920
 2009       5              14  2009-05-14   Thurs           13033
 2009       5              15  2009-05-15   Fri             12874
 2009       5              16  2009-05-16   Sat              8327
 2009       5              17  2009-05-17   Sun              7256
 2009       5              18  2009-05-18   Mon             12467
 2009       5              19  2009-05-19   Tues            13543
 2009       5              20  2009-05-20   Wed             13694
 2009       5              21  2009-05-21   Thurs           13569
 2009       5              22  2009-05-22   Fri             13314
 2009       5              23  2009-05-23   Sat              8618
 2009       5              24  2009-05-24   Sun              7481
 2009       5              25  2009-05-25   Mon              8058
 2009       5              26  2009-05-26   Tues            13239
 2009       5              27  2009-05-27   Wed             14350
 2009       5              28  2009-05-28   Thurs           14057
 2009       5              29  2009-05-29   Fri             13290
 2009       5              30  2009-05-30   Sat              8602
 2009       5              31  2009-05-31   Sun              7480
 2009       6               1  2009-06-01   Mon             12541
 2009       6               2  2009-06-02   Tues            13408
 2009       6               3  2009-06-03   Wed             13080
 2009       6               4  2009-06-04   Thurs           13036
 2009       6               5  2009-06-05   Fri             12648
 2009       6               6  2009-06-06   Sat              8428
 2009       6               7  2009-06-07   Sun              7221
 2009       6               8  2009-06-08   Mon             12472
 2009       6               9  2009-06-09   Tues            13368
 2009       6              10  2009-06-10   Wed             13248
 2009       6              11  2009-06-11   Thurs           13079
 2009       6              12  2009-06-12   Fri             12780
 2009       6              13  2009-06-13   Sat              8376
 2009       6              14  2009-06-14   Sun              7380
 2009       6              15  2009-06-15   Mon             12465
 2009       6              16  2009-06-16   Tues            13542
 2009       6              17  2009-06-17   Wed             13440
 2009       6              18  2009-06-18   Thurs           13611
 2009       6              19  2009-06-19   Fri             12846
 2009       6              20  2009-06-20   Sat              8603
 2009       6              21  2009-06-21   Sun              7559
 2009       6              22  2009-06-22   Mon             12396
 2009       6              23  2009-06-23   Tues            13700
 2009       6              24  2009-06-24   Wed             13268
 2009       6              25  2009-06-25   Thurs           13362
 2009       6              26  2009-06-26   Fri             12981
 2009       6              27  2009-06-27   Sat              8474
 2009       6              28  2009-06-28   Sun              7471
 2009       6              29  2009-06-29   Mon             12776
 2009       6              30  2009-06-30   Tues            14061
 2009       7               1  2009-07-01   Wed             14311
 2009       7               2  2009-07-02   Thurs           13931
 2009       7               3  2009-07-03   Fri             10630
 2009       7               4  2009-07-04   Sat              7978
 2009       7               5  2009-07-05   Sun              7333
 2009       7               6  2009-07-06   Mon             12415
 2009       7               7  2009-07-07   Tues            14208
 2009       7               8  2009-07-08   Wed             14252
 2009       7               9  2009-07-09   Thurs           13566
 2009       7              10  2009-07-10   Fri             13276
 2009       7              11  2009-07-11   Sat              8769
 2009       7              12  2009-07-12   Sun              7627
 2009       7              13  2009-07-13   Mon             12570
 2009       7              14  2009-07-14   Tues            14086
 2009       7              15  2009-07-15   Wed             13939
 2009       7              16  2009-07-16   Thurs           14012
 2009       7              17  2009-07-17   Fri             13258
 2009       7              18  2009-07-18   Sat              8626
 2009       7              19  2009-07-19   Sun              7536
 2009       7              20  2009-07-20   Mon             12612
 2009       7              21  2009-07-21   Tues            13974
 2009       7              22  2009-07-22   Wed             13657
 2009       7              23  2009-07-23   Thurs           13880
 2009       7              24  2009-07-24   Fri             13132
 2009       7              25  2009-07-25   Sat              8887
 2009       7              26  2009-07-26   Sun              7716
 2009       7              27  2009-07-27   Mon             12684
 2009       7              28  2009-07-28   Tues            14163
 2009       7              29  2009-07-29   Wed             13619
 2009       7              30  2009-07-30   Thurs           13537
 2009       7              31  2009-07-31   Fri             13307
 2009       8               1  2009-08-01   Sat              8684
 2009       8               2  2009-08-02   Sun              7492
 2009       8               3  2009-08-03   Mon             12642
 2009       8               4  2009-08-04   Tues            13937
 2009       8               5  2009-08-05   Wed             13510
 2009       8               6  2009-08-06   Thurs           13377
 2009       8               7  2009-08-07   Fri             13122
 2009       8               8  2009-08-08   Sat              8830
 2009       8               9  2009-08-09   Sun              7683
 2009       8              10  2009-08-10   Mon             12759
 2009       8              11  2009-08-11   Tues            14021
 2009       8              12  2009-08-12   Wed             13764
 2009       8              13  2009-08-13   Thurs           13391
 2009       8              14  2009-08-14   Fri             13398
 2009       8              15  2009-08-15   Sat              8566
 2009       8              16  2009-08-16   Sun              7750
 2009       8              17  2009-08-17   Mon             13104
 2009       8              18  2009-08-18   Tues            14226
 2009       8              19  2009-08-19   Wed             13634
 2009       8              20  2009-08-20   Thurs           13994
 2009       8              21  2009-08-21   Fri             13291
 2009       8              22  2009-08-22   Sat              8952
 2009       8              23  2009-08-23   Sun              7650
 2009       8              24  2009-08-24   Mon             12664
 2009       8              25  2009-08-25   Tues            13928
 2009       8              26  2009-08-26   Wed             13770
 2009       8              27  2009-08-27   Thurs           13861
 2009       8              28  2009-08-28   Fri             13530
 2009       8              29  2009-08-29   Sat              8805
 2009       8              30  2009-08-30   Sun              7702
 2009       8              31  2009-08-31   Mon             12758
 2009       9               1  2009-09-01   Tues            14107
 2009       9               2  2009-09-02   Wed             13659
 2009       9               3  2009-09-03   Thurs           13900
 2009       9               4  2009-09-04   Fri             13622
 2009       9               5  2009-09-05   Sat              8959
 2009       9               6  2009-09-06   Sun              7587
 2009       9               7  2009-09-07   Mon              7947
 2009       9               8  2009-09-08   Tues            13555
 2009       9               9  2009-09-09   Wed             16081
 2009       9              10  2009-09-10   Thurs           14887
 2009       9              11  2009-09-11   Fri             13032
 2009       9              12  2009-09-12   Sat              9264
 2009       9              13  2009-09-13   Sun              7871
 2009       9              14  2009-09-14   Mon             13393
 2009       9              15  2009-09-15   Tues            14558
 2009       9              16  2009-09-16   Wed             14130
 2009       9              17  2009-09-17   Thurs           14095
 2009       9              18  2009-09-18   Fri             13951
 2009       9              19  2009-09-19   Sat              9032
 2009       9              20  2009-09-20   Sun              8014
 2009       9              21  2009-09-21   Mon             13415
 2009       9              22  2009-09-22   Tues            14318
 2009       9              23  2009-09-23   Wed             13973
 2009       9              24  2009-09-24   Thurs           14048
 2009       9              25  2009-09-25   Fri             13449
 2009       9              26  2009-09-26   Sat              9013
 2009       9              27  2009-09-27   Sun              7817
 2009       9              28  2009-09-28   Mon             12723
 2009       9              29  2009-09-29   Tues            13829
 2009       9              30  2009-09-30   Wed             13465
 2009      10               1  2009-10-01   Thurs           13628
 2009      10               2  2009-10-02   Fri             13264
 2009      10               3  2009-10-03   Sat              8548
 2009      10               4  2009-10-04   Sun              7443
 2009      10               5  2009-10-05   Mon             12559
 2009      10               6  2009-10-06   Tues            13674
 2009      10               7  2009-10-07   Wed             13078
 2009      10               8  2009-10-08   Thurs           13174
 2009      10               9  2009-10-09   Fri             12706
 2009      10              10  2009-10-10   Sat              8577
 2009      10              11  2009-10-11   Sun              7268
 2009      10              12  2009-10-12   Mon             12105
 2009      10              13  2009-10-13   Tues            12941
 2009      10              14  2009-10-14   Wed             12882
 2009      10              15  2009-10-15   Thurs           13115
 2009      10              16  2009-10-16   Fri             12605
 2009      10              17  2009-10-17   Sat              8155
 2009      10              18  2009-10-18   Sun              7356
 2009      10              19  2009-10-19   Mon             12056
 2009      10              20  2009-10-20   Tues            13142
 2009      10              21  2009-10-21   Wed             12924
 2009      10              22  2009-10-22   Thurs           12935
 2009      10              23  2009-10-23   Fri             12621
 2009      10              24  2009-10-24   Sat              8353
 2009      10              25  2009-10-25   Sun              7120
 2009      10              26  2009-10-26   Mon             12238
 2009      10              27  2009-10-27   Tues            13230
 2009      10              28  2009-10-28   Wed             13043
 2009      10              29  2009-10-29   Thurs           12683
 2009      10              30  2009-10-30   Fri             11978
 2009      10              31  2009-10-31   Sat              7658
 2009      11               1  2009-11-01   Sun              7519
 2009      11               2  2009-11-02   Mon             12212
 2009      11               3  2009-11-03   Tues            13205
 2009      11               4  2009-11-04   Wed             12743
 2009      11               5  2009-11-05   Thurs           12805
 2009      11               6  2009-11-06   Fri             12314
 2009      11               7  2009-11-07   Sat              8044
 2009      11               8  2009-11-08   Sun              7260
 2009      11               9  2009-11-09   Mon             11874
 2009      11              10  2009-11-10   Tues            13287
 2009      11              11  2009-11-11   Wed             12889
 2009      11              12  2009-11-12   Thurs           12751
 2009      11              13  2009-11-13   Fri             11739
 2009      11              14  2009-11-14   Sat              8281
 2009      11              15  2009-11-15   Sun              7232
 2009      11              16  2009-11-16   Mon             11940
 2009      11              17  2009-11-17   Tues            12950
 2009      11              18  2009-11-18   Wed             12866
 2009      11              19  2009-11-19   Thurs           12822
 2009      11              20  2009-11-20   Fri             13002
 2009      11              21  2009-11-21   Sat              8335
 2009      11              22  2009-11-22   Sun              7230
 2009      11              23  2009-11-23   Mon             13125
 2009      11              24  2009-11-24   Tues            13907
 2009      11              25  2009-11-25   Wed             11986
 2009      11              26  2009-11-26   Thurs            6864
 2009      11              27  2009-11-27   Fri              8750
 2009      11              28  2009-11-28   Sat              7604
 2009      11              29  2009-11-29   Sun              7169
 2009      11              30  2009-11-30   Mon             12542
 2009      12               1  2009-12-01   Tues            13900
 2009      12               2  2009-12-02   Wed             13267
 2009      12               3  2009-12-03   Thurs           12952
 2009      12               4  2009-12-04   Fri             12131
 2009      12               5  2009-12-05   Sat              7855
 2009      12               6  2009-12-06   Sun              7103
 2009      12               7  2009-12-07   Mon             11732
 2009      12               8  2009-12-08   Tues            12823
 2009      12               9  2009-12-09   Wed             12497
 2009      12              10  2009-12-10   Thurs           12299
 2009      12              11  2009-12-11   Fri             11834
 2009      12              12  2009-12-12   Sat              8082
 2009      12              13  2009-12-13   Sun              7027
 2009      12              14  2009-12-14   Mon             12254
 2009      12              15  2009-12-15   Tues            13347
 2009      12              16  2009-12-16   Wed             12961
 2009      12              17  2009-12-17   Thurs           13425
 2009      12              18  2009-12-18   Fri             13478
 2009      12              19  2009-12-19   Sat              8436
 2009      12              20  2009-12-20   Sun              7225
 2009      12              21  2009-12-21   Mon             13512
 2009      12              22  2009-12-22   Tues            14102
 2009      12              23  2009-12-23   Wed             11819
 2009      12              24  2009-12-24   Thurs            8441
 2009      12              25  2009-12-25   Fri              6160
 2009      12              26  2009-12-26   Sat              7172
 2009      12              27  2009-12-27   Sun              7480
 2009      12              28  2009-12-28   Mon             13354
 2009      12              29  2009-12-29   Tues            14600
 2009      12              30  2009-12-30   Wed             13829
 2009      12              31  2009-12-31   Thurs           11667
 2010       1               1  2010-01-01   Fri              7871
 2010       1               2  2010-01-02   Sat              6990
 2010       1               3  2010-01-03   Sun              6988
 2010       1               4  2010-01-04   Mon             11844
 2010       1               5  2010-01-05   Tues            12995
 2010       1               6  2010-01-06   Wed             12520
 2010       1               7  2010-01-07   Thurs           12541
 2010       1               8  2010-01-08   Fri             12183
 2010       1               9  2010-01-09   Sat              7809
 2010       1              10  2010-01-10   Sun              6963
 2010       1              11  2010-01-11   Mon             11892
 2010       1              12  2010-01-12   Tues            12921
 2010       1              13  2010-01-13   Wed             12307
 2010       1              14  2010-01-14   Thurs           12543
 2010       1              15  2010-01-15   Fri             12278
 2010       1              16  2010-01-16   Sat              8032
 2010       1              17  2010-01-17   Sun              7131
 2010       1              18  2010-01-18   Mon             11220
 2010       1              19  2010-01-19   Tues            12510
 2010       1              20  2010-01-20   Wed             12514
 2010       1              21  2010-01-21   Thurs           12762
 2010       1              22  2010-01-22   Fri             12364
 2010       1              23  2010-01-23   Sat              7996
 2010       1              24  2010-01-24   Sun              7014
 2010       1              25  2010-01-25   Mon             11623
 2010       1              26  2010-01-26   Tues            12821
 2010       1              27  2010-01-27   Wed             12441
 2010       1              28  2010-01-28   Thurs           12342
 2010       1              29  2010-01-29   Fri             11838
 2010       1              30  2010-01-30   Sat              8035
 2010       1              31  2010-01-31   Sun              6832
 2010       2               1  2010-02-01   Mon             11445
 2010       2               2  2010-02-02   Tues            12831
 2010       2               3  2010-02-03   Wed             12453
 2010       2               4  2010-02-04   Thurs           12369
 2010       2               5  2010-02-05   Fri             12362
 2010       2               6  2010-02-06   Sat              7948
 2010       2               7  2010-02-07   Sun              6893
 2010       2               8  2010-02-08   Mon             11912
 2010       2               9  2010-02-09   Tues            12747
 2010       2              10  2010-02-10   Wed             12535
 2010       2              11  2010-02-11   Thurs           12389
 2010       2              12  2010-02-12   Fri             12281
 2010       2              13  2010-02-13   Sat              7947
 2010       2              14  2010-02-14   Sun              7167
 2010       2              15  2010-02-15   Mon             11156
 2010       2              16  2010-02-16   Tues            12363
 2010       2              17  2010-02-17   Wed             12734
 2010       2              18  2010-02-18   Thurs           12764
 2010       2              19  2010-02-19   Fri             12401
 2010       2              20  2010-02-20   Sat              8201
 2010       2              21  2010-02-21   Sun              7211
 2010       2              22  2010-02-22   Mon             11996
 2010       2              23  2010-02-23   Tues            12628
 2010       2              24  2010-02-24   Wed             12438
 2010       2              25  2010-02-25   Thurs           12449
 2010       2              26  2010-02-26   Fri             12046
 2010       2              27  2010-02-27   Sat              7832
 2010       2              28  2010-02-28   Sun              6895
 2010       3               1  2010-03-01   Mon             11984
 2010       3               2  2010-03-02   Tues            12868
 2010       3               3  2010-03-03   Wed             12525
 2010       3               4  2010-03-04   Thurs           12549
 2010       3               5  2010-03-05   Fri             12272
 2010       3               6  2010-03-06   Sat              7832
 2010       3               7  2010-03-07   Sun              6887
 2010       3               8  2010-03-08   Mon             11514
 2010       3               9  2010-03-09   Tues            12839
 2010       3              10  2010-03-10   Wed             12740
 2010       3              11  2010-03-11   Thurs           12481
 2010       3              12  2010-03-12   Fri             12347
 2010       3              13  2010-03-13   Sat              7893
 2010       3              14  2010-03-14   Sun              6808
 2010       3              15  2010-03-15   Mon             11548
 2010       3              16  2010-03-16   Tues            12700
 2010       3              17  2010-03-17   Wed             12781
 2010       3              18  2010-03-18   Thurs           12054
 2010       3              19  2010-03-19   Fri             12119
 2010       3              20  2010-03-20   Sat              8005
 2010       3              21  2010-03-21   Sun              6992
 2010       3              22  2010-03-22   Mon             11657
 2010       3              23  2010-03-23   Tues            12752
 2010       3              24  2010-03-24   Wed             12473
 2010       3              25  2010-03-25   Thurs           12591
 2010       3              26  2010-03-26   Fri             12088
 2010       3              27  2010-03-27   Sat              7995
 2010       3              28  2010-03-28   Sun              6922
 2010       3              29  2010-03-29   Mon             11745
 2010       3              30  2010-03-30   Tues            12868
 2010       3              31  2010-03-31   Wed             12619
 2010       4               1  2010-04-01   Thurs           11994
 2010       4               2  2010-04-02   Fri             11666
 2010       4               3  2010-04-03   Sat              7854
 2010       4               4  2010-04-04   Sun              6721
 2010       4               5  2010-04-05   Mon             11571
 2010       4               6  2010-04-06   Tues            12888
 2010       4               7  2010-04-07   Wed             12228
 2010       4               8  2010-04-08   Thurs           12312
 2010       4               9  2010-04-09   Fri             11988
 2010       4              10  2010-04-10   Sat              7844
 2010       4              11  2010-04-11   Sun              6907
 2010       4              12  2010-04-12   Mon             11964
 2010       4              13  2010-04-13   Tues            12549
 2010       4              14  2010-04-14   Wed             12708
 2010       4              15  2010-04-15   Thurs           12614
 2010       4              16  2010-04-16   Fri             12136
 2010       4              17  2010-04-17   Sat              7878
 2010       4              18  2010-04-18   Sun              6978
 2010       4              19  2010-04-19   Mon             11845
 2010       4              20  2010-04-20   Tues            13010
 2010       4              21  2010-04-21   Wed             12594
 2010       4              22  2010-04-22   Thurs           12485
 2010       4              23  2010-04-23   Fri             12095
 2010       4              24  2010-04-24   Sat              7964
 2010       4              25  2010-04-25   Sun              6965
 2010       4              26  2010-04-26   Mon             12034
 2010       4              27  2010-04-27   Tues            12619
 2010       4              28  2010-04-28   Wed             12500
 2010       4              29  2010-04-29   Thurs           12374
 2010       4              30  2010-04-30   Fri             11852
 2010       5               1  2010-05-01   Sat              7911
 2010       5               2  2010-05-02   Sun              6922
 2010       5               3  2010-05-03   Mon             11995
 2010       5               4  2010-05-04   Tues            12770
 2010       5               5  2010-05-05   Wed             12801
 2010       5               6  2010-05-06   Thurs           12410
 2010       5               7  2010-05-07   Fri             11914
 2010       5               8  2010-05-08   Sat              7877
 2010       5               9  2010-05-09   Sun              6823
 2010       5              10  2010-05-10   Mon             12286
 2010       5              11  2010-05-11   Tues            12845
 2010       5              12  2010-05-12   Wed             12637
 2010       5              13  2010-05-13   Thurs           12246
 2010       5              14  2010-05-14   Fri             12337
 2010       5              15  2010-05-15   Sat              7963
 2010       5              16  2010-05-16   Sun              7022
 2010       5              17  2010-05-17   Mon             11953
 2010       5              18  2010-05-18   Tues            12854
 2010       5              19  2010-05-19   Wed             12411
 2010       5              20  2010-05-20   Thurs           12559
 2010       5              21  2010-05-21   Fri             12302
 2010       5              22  2010-05-22   Sat              8093
 2010       5              23  2010-05-23   Sun              7094
 2010       5              24  2010-05-24   Mon             11893
 2010       5              25  2010-05-25   Tues            13421
 2010       5              26  2010-05-26   Wed             12972
 2010       5              27  2010-05-27   Thurs           13115
 2010       5              28  2010-05-28   Fri             12519
 2010       5              29  2010-05-29   Sat              8159
 2010       5              30  2010-05-30   Sun              7111
 2010       5              31  2010-05-31   Mon              7436
 2010       6               1  2010-06-01   Tues            12591
 2010       6               2  2010-06-02   Wed             13812
 2010       6               3  2010-06-03   Thurs           13150
 2010       6               4  2010-06-04   Fri             12640
 2010       6               5  2010-06-05   Sat              8260
 2010       6               6  2010-06-06   Sun              7374
 2010       6               7  2010-06-07   Mon             11924
 2010       6               8  2010-06-08   Tues            12874
 2010       6               9  2010-06-09   Wed             12419
 2010       6              10  2010-06-10   Thurs           12824
 2010       6              11  2010-06-11   Fri             11965
 2010       6              12  2010-06-12   Sat              8011
 2010       6              13  2010-06-13   Sun              6963
 2010       6              14  2010-06-14   Mon             11929
 2010       6              15  2010-06-15   Tues            12805
 2010       6              16  2010-06-16   Wed             12654
 2010       6              17  2010-06-17   Thurs           12836
 2010       6              18  2010-06-18   Fri             12331
 2010       6              19  2010-06-19   Sat              8085
 2010       6              20  2010-06-20   Sun              7164
 2010       6              21  2010-06-21   Mon             11922
 2010       6              22  2010-06-22   Tues            12838
 2010       6              23  2010-06-23   Wed             12878
 2010       6              24  2010-06-24   Thurs           12671
 2010       6              25  2010-06-25   Fri             12552
 2010       6              26  2010-06-26   Sat              8294
 2010       6              27  2010-06-27   Sun              7234
 2010       6              28  2010-06-28   Mon             12157
 2010       6              29  2010-06-29   Tues            13042
 2010       6              30  2010-06-30   Wed             12767
 2010       7               1  2010-07-01   Thurs           13181
 2010       7               2  2010-07-02   Fri             12486
 2010       7               3  2010-07-03   Sat              7932
 2010       7               4  2010-07-04   Sun              7279
 2010       7               5  2010-07-05   Mon              8444
 2010       7               6  2010-07-06   Tues            12772
 2010       7               7  2010-07-07   Wed             13940
 2010       7               8  2010-07-08   Thurs           13421
 2010       7               9  2010-07-09   Fri             12843
 2010       7              10  2010-07-10   Sat              8485
 2010       7              11  2010-07-11   Sun              7382
 2010       7              12  2010-07-12   Mon             12408
 2010       7              13  2010-07-13   Tues            12697
 2010       7              14  2010-07-14   Wed             13031
 2010       7              15  2010-07-15   Thurs           13118
 2010       7              16  2010-07-16   Fri             12888
 2010       7              17  2010-07-17   Sat              8370
 2010       7              18  2010-07-18   Sun              7352
 2010       7              19  2010-07-19   Mon             11865
 2010       7              20  2010-07-20   Tues            13291
 2010       7              21  2010-07-21   Wed             13158
 2010       7              22  2010-07-22   Thurs           12939
 2010       7              23  2010-07-23   Fri             12542
 2010       7              24  2010-07-24   Sat              8396
 2010       7              25  2010-07-25   Sun              7392
 2010       7              26  2010-07-26   Mon             12262
 2010       7              27  2010-07-27   Tues            13264
 2010       7              28  2010-07-28   Wed             12877
 2010       7              29  2010-07-29   Thurs           12952
 2010       7              30  2010-07-30   Fri             12320
 2010       7              31  2010-07-31   Sat              8361
 2010       8               1  2010-08-01   Sun              7370
 2010       8               2  2010-08-02   Mon             12092
 2010       8               3  2010-08-03   Tues            13136
 2010       8               4  2010-08-04   Wed             12911
 2010       8               5  2010-08-05   Thurs           12929
 2010       8               6  2010-08-06   Fri             12556
 2010       8               7  2010-08-07   Sat              8516
 2010       8               8  2010-08-08   Sun              7361
 2010       8               9  2010-08-09   Mon             12923
 2010       8              10  2010-08-10   Tues            13514
 2010       8              11  2010-08-11   Wed             13084
 2010       8              12  2010-08-12   Thurs           13365
 2010       8              13  2010-08-13   Fri             12092
 2010       8              14  2010-08-14   Sat              8445
 2010       8              15  2010-08-15   Sun              7352
 2010       8              16  2010-08-16   Mon             12409
 2010       8              17  2010-08-17   Tues            13286
 2010       8              18  2010-08-18   Wed             13102
 2010       8              19  2010-08-19   Thurs           12964
 2010       8              20  2010-08-20   Fri             12910
 2010       8              21  2010-08-21   Sat              8404
 2010       8              22  2010-08-22   Sun              7461
 2010       8              23  2010-08-23   Mon             12195
 2010       8              24  2010-08-24   Tues            13226
 2010       8              25  2010-08-25   Wed             13328
 2010       8              26  2010-08-26   Thurs           13008
 2010       8              27  2010-08-27   Fri             12966
 2010       8              28  2010-08-28   Sat              8553
 2010       8              29  2010-08-29   Sun              7496
 2010       8              30  2010-08-30   Mon             12246
 2010       8              31  2010-08-31   Tues            13527
 2010       9               1  2010-09-01   Wed             13409
 2010       9               2  2010-09-02   Thurs           13420
 2010       9               3  2010-09-03   Fri             13047
 2010       9               4  2010-09-04   Sat              8414
 2010       9               5  2010-09-05   Sun              7586
 2010       9               6  2010-09-06   Mon              7815
 2010       9               7  2010-09-07   Tues            13033
 2010       9               8  2010-09-08   Wed             14239
 2010       9               9  2010-09-09   Thurs           14135
 2010       9              10  2010-09-10   Fri             13641
 2010       9              11  2010-09-11   Sat              8775
 2010       9              12  2010-09-12   Sun              7749
 2010       9              13  2010-09-13   Mon             12559
 2010       9              14  2010-09-14   Tues            13949
 2010       9              15  2010-09-15   Wed             13893
 2010       9              16  2010-09-16   Thurs           13964
 2010       9              17  2010-09-17   Fri             13605
 2010       9              18  2010-09-18   Sat              8979
 2010       9              19  2010-09-19   Sun              7899
 2010       9              20  2010-09-20   Mon             12992
 2010       9              21  2010-09-21   Tues            13919
 2010       9              22  2010-09-22   Wed             13640
 2010       9              23  2010-09-23   Thurs           13717
 2010       9              24  2010-09-24   Fri             13280
 2010       9              25  2010-09-25   Sat              8780
 2010       9              26  2010-09-26   Sun              7543
 2010       9              27  2010-09-27   Mon             12652
 2010       9              28  2010-09-28   Tues            13208
 2010       9              29  2010-09-29   Wed             13080
 2010       9              30  2010-09-30   Thurs           12965
 2010      10               1  2010-10-01   Fri             13141
 2010      10               2  2010-10-02   Sat              8412
 2010      10               3  2010-10-03   Sun              7380
 2010      10               4  2010-10-04   Mon             12326
 2010      10               5  2010-10-05   Tues            13146
 2010      10               6  2010-10-06   Wed             12691
 2010      10               7  2010-10-07   Thurs           12889
 2010      10               8  2010-10-08   Fri             12536
 2010      10               9  2010-10-09   Sat              8194
 2010      10              10  2010-10-10   Sun              8490
 2010      10              11  2010-10-11   Mon             12134
 2010      10              12  2010-10-12   Tues            12913
 2010      10              13  2010-10-13   Wed             12358
 2010      10              14  2010-10-14   Thurs           12668
 2010      10              15  2010-10-15   Fri             12507
 2010      10              16  2010-10-16   Sat              8081
 2010      10              17  2010-10-17   Sun              7181
 2010      10              18  2010-10-18   Mon             11888
 2010      10              19  2010-10-19   Tues            12693
 2010      10              20  2010-10-20   Wed             12838
 2010      10              21  2010-10-21   Thurs           12747
 2010      10              22  2010-10-22   Fri             12235
 2010      10              23  2010-10-23   Sat              8033
 2010      10              24  2010-10-24   Sun              7242
 2010      10              25  2010-10-25   Mon             12190
 2010      10              26  2010-10-26   Tues            13176
 2010      10              27  2010-10-27   Wed             12700
 2010      10              28  2010-10-28   Thurs           12408
 2010      10              29  2010-10-29   Fri             11679
 2010      10              30  2010-10-30   Sat              7996
 2010      10              31  2010-10-31   Sun              6895
 2010      11               1  2010-11-01   Mon             12044
 2010      11               2  2010-11-02   Tues            13035
 2010      11               3  2010-11-03   Wed             12608
 2010      11               4  2010-11-04   Thurs           12821
 2010      11               5  2010-11-05   Fri             12495
 2010      11               6  2010-11-06   Sat              8126
 2010      11               7  2010-11-07   Sun              7251
 2010      11               8  2010-11-08   Mon             12023
 2010      11               9  2010-11-09   Tues            12889
 2010      11              10  2010-11-10   Wed             12671
 2010      11              11  2010-11-11   Thurs           12773
 2010      11              12  2010-11-12   Fri             12090
 2010      11              13  2010-11-13   Sat              8115
 2010      11              14  2010-11-14   Sun              7120
 2010      11              15  2010-11-15   Mon             12163
 2010      11              16  2010-11-16   Tues            13205
 2010      11              17  2010-11-17   Wed             12710
 2010      11              18  2010-11-18   Thurs           13025
 2010      11              19  2010-11-19   Fri             12634
 2010      11              20  2010-11-20   Sat              8511
 2010      11              21  2010-11-21   Sun              7285
 2010      11              22  2010-11-22   Mon             13195
 2010      11              23  2010-11-23   Tues            13762
 2010      11              24  2010-11-24   Wed             11964
 2010      11              25  2010-11-25   Thurs            7162
 2010      11              26  2010-11-26   Fri              8689
 2010      11              27  2010-11-27   Sat              7526
 2010      11              28  2010-11-28   Sun              7217
 2010      11              29  2010-11-29   Mon             12430
 2010      11              30  2010-11-30   Tues            13445
 2010      12               1  2010-12-01   Wed             13107
 2010      12               2  2010-12-02   Thurs           12982
 2010      12               3  2010-12-03   Fri             12288
 2010      12               4  2010-12-04   Sat              7881
 2010      12               5  2010-12-05   Sun              7122
 2010      12               6  2010-12-06   Mon             11749
 2010      12               7  2010-12-07   Tues            12833
 2010      12               8  2010-12-08   Wed             12462
 2010      12               9  2010-12-09   Thurs           12364
 2010      12              10  2010-12-10   Fri             12351
 2010      12              11  2010-12-11   Sat              8142
 2010      12              12  2010-12-12   Sun              7134
 2010      12              13  2010-12-13   Mon             11721
 2010      12              14  2010-12-14   Tues            12981
 2010      12              15  2010-12-15   Wed             12962
 2010      12              16  2010-12-16   Thurs           12975
 2010      12              17  2010-12-17   Fri             12829
 2010      12              18  2010-12-18   Sat              8470
 2010      12              19  2010-12-19   Sun              7257
 2010      12              20  2010-12-20   Mon             13280
 2010      12              21  2010-12-21   Tues            14255
 2010      12              22  2010-12-22   Wed             13029
 2010      12              23  2010-12-23   Thurs           11237
 2010      12              24  2010-12-24   Fri              7532
 2010      12              25  2010-12-25   Sat              6159
 2010      12              26  2010-12-26   Sun              6796
 2010      12              27  2010-12-27   Mon             12231
 2010      12              28  2010-12-28   Tues            13654
 2010      12              29  2010-12-29   Wed             13441
 2010      12              30  2010-12-30   Thurs           13272
 2010      12              31  2010-12-31   Fri              9751
 2011       1               1  2011-01-01   Sat              7254
 2011       1               2  2011-01-02   Sun              6540
 2011       1               3  2011-01-03   Mon             11143
 2011       1               4  2011-01-04   Tues            12599
 2011       1               5  2011-01-05   Wed             11933
 2011       1               6  2011-01-06   Thurs           12143
 2011       1               7  2011-01-07   Fri             12044
 2011       1               8  2011-01-08   Sat              7840
 2011       1               9  2011-01-09   Sun              6933
 2011       1              10  2011-01-10   Mon             11093
 2011       1              11  2011-01-11   Tues            13222
 2011       1              12  2011-01-12   Wed             11950
 2011       1              13  2011-01-13   Thurs           11813
 2011       1              14  2011-01-14   Fri             12114
 2011       1              15  2011-01-15   Sat              7810
 2011       1              16  2011-01-16   Sun              7046
 2011       1              17  2011-01-17   Mon             10969
 2011       1              18  2011-01-18   Tues            12298
 2011       1              19  2011-01-19   Wed             12271
 2011       1              20  2011-01-20   Thurs           12382
 2011       1              21  2011-01-21   Fri             12035
 2011       1              22  2011-01-22   Sat              7895
 2011       1              23  2011-01-23   Sun              7005
 2011       1              24  2011-01-24   Mon             11616
 2011       1              25  2011-01-25   Tues            12692
 2011       1              26  2011-01-26   Wed             12174
 2011       1              27  2011-01-27   Thurs           12026
 2011       1              28  2011-01-28   Fri             11814
 2011       1              29  2011-01-29   Sat              7808
 2011       1              30  2011-01-30   Sun              6888
 2011       1              31  2011-01-31   Mon             11495
 2011       2               1  2011-02-01   Tues            12498
 2011       2               2  2011-02-02   Wed             11954
 2011       2               3  2011-02-03   Thurs           11917
 2011       2               4  2011-02-04   Fri             11962
 2011       2               5  2011-02-05   Sat              8070
 2011       2               6  2011-02-06   Sun              7109
 2011       2               7  2011-02-07   Mon             11873
 2011       2               8  2011-02-08   Tues            12764
 2011       2               9  2011-02-09   Wed             11880
 2011       2              10  2011-02-10   Thurs           12078
 2011       2              11  2011-02-11   Fri             12029
 2011       2              12  2011-02-12   Sat              8086
 2011       2              13  2011-02-13   Sun              6853
 2011       2              14  2011-02-14   Mon             12111
 2011       2              15  2011-02-15   Tues            12863
 2011       2              16  2011-02-16   Wed             12396
 2011       2              17  2011-02-17   Thurs           12399
 2011       2              18  2011-02-18   Fri             12328
 2011       2              19  2011-02-19   Sat              7969
 2011       2              20  2011-02-20   Sun              7056
 2011       2              21  2011-02-21   Mon             10757
 2011       2              22  2011-02-22   Tues            12601
 2011       2              23  2011-02-23   Wed             12232
 2011       2              24  2011-02-24   Thurs           12129
 2011       2              25  2011-02-25   Fri             11945
 2011       2              26  2011-02-26   Sat              7919
 2011       2              27  2011-02-27   Sun              6989
 2011       2              28  2011-02-28   Mon             11160
 2011       3               1  2011-03-01   Tues            12530
 2011       3               2  2011-03-02   Wed             12149
 2011       3               3  2011-03-03   Thurs           12172
 2011       3               4  2011-03-04   Fri             11842
 2011       3               5  2011-03-05   Sat              7825
 2011       3               6  2011-03-06   Sun              6950
 2011       3               7  2011-03-07   Mon             11490
 2011       3               8  2011-03-08   Tues            12254
 2011       3               9  2011-03-09   Wed             12119
 2011       3              10  2011-03-10   Thurs           11921
 2011       3              11  2011-03-11   Fri             11989
 2011       3              12  2011-03-12   Sat              7897
 2011       3              13  2011-03-13   Sun              6557
 2011       3              14  2011-03-14   Mon             11275
 2011       3              15  2011-03-15   Tues            12191
 2011       3              16  2011-03-16   Wed             11880
 2011       3              17  2011-03-17   Thurs           12192
 2011       3              18  2011-03-18   Fri             11682
 2011       3              19  2011-03-19   Sat              7786
 2011       3              20  2011-03-20   Sun              7024
 2011       3              21  2011-03-21   Mon             11794
 2011       3              22  2011-03-22   Tues            12462
 2011       3              23  2011-03-23   Wed             12050
 2011       3              24  2011-03-24   Thurs           12062
 2011       3              25  2011-03-25   Fri             11854
 2011       3              26  2011-03-26   Sat              7658
 2011       3              27  2011-03-27   Sun              6871
 2011       3              28  2011-03-28   Mon             11489
 2011       3              29  2011-03-29   Tues            12279
 2011       3              30  2011-03-30   Wed             12022
 2011       3              31  2011-03-31   Thurs           12173
 2011       4               1  2011-04-01   Fri             11264
 2011       4               2  2011-04-02   Sat              8102
 2011       4               3  2011-04-03   Sun              7028
 2011       4               4  2011-04-04   Mon             11772
 2011       4               5  2011-04-05   Tues            12387
 2011       4               6  2011-04-06   Wed             11858
 2011       4               7  2011-04-07   Thurs           12330
 2011       4               8  2011-04-08   Fri             11904
 2011       4               9  2011-04-09   Sat              7840
 2011       4              10  2011-04-10   Sun              6861
 2011       4              11  2011-04-11   Mon             11711
 2011       4              12  2011-04-12   Tues            12320
 2011       4              13  2011-04-13   Wed             11671
 2011       4              14  2011-04-14   Thurs           12349
 2011       4              15  2011-04-15   Fri             11964
 2011       4              16  2011-04-16   Sat              7683
 2011       4              17  2011-04-17   Sun              6939
 2011       4              18  2011-04-18   Mon             11681
 2011       4              19  2011-04-19   Tues            12564
 2011       4              20  2011-04-20   Wed             12216
 2011       4              21  2011-04-21   Thurs           12276
 2011       4              22  2011-04-22   Fri             11113
 2011       4              23  2011-04-23   Sat              7524
 2011       4              24  2011-04-24   Sun              6570
 2011       4              25  2011-04-25   Mon             11427
 2011       4              26  2011-04-26   Tues            12563
 2011       4              27  2011-04-27   Wed             12007
 2011       4              28  2011-04-28   Thurs           12180
 2011       4              29  2011-04-29   Fri             11456
 2011       4              30  2011-04-30   Sat              7665
 2011       5               1  2011-05-01   Sun              6926
 2011       5               2  2011-05-02   Mon             11595
 2011       5               3  2011-05-03   Tues            12299
 2011       5               4  2011-05-04   Wed             11984
 2011       5               5  2011-05-05   Thurs           12055
 2011       5               6  2011-05-06   Fri             11824
 2011       5               7  2011-05-07   Sat              7919
 2011       5               8  2011-05-08   Sun              6972
 2011       5               9  2011-05-09   Mon             11511
 2011       5              10  2011-05-10   Tues            12578
 2011       5              11  2011-05-11   Wed             12464
 2011       5              12  2011-05-12   Thurs           12203
 2011       5              13  2011-05-13   Fri             11125
 2011       5              14  2011-05-14   Sat              7854
 2011       5              15  2011-05-15   Sun              7061
 2011       5              16  2011-05-16   Mon             11899
 2011       5              17  2011-05-17   Tues            12819
 2011       5              18  2011-05-18   Wed             12387
 2011       5              19  2011-05-19   Thurs           12222
 2011       5              20  2011-05-20   Fri             12011
 2011       5              21  2011-05-21   Sat              7934
 2011       5              22  2011-05-22   Sun              7257
 2011       5              23  2011-05-23   Mon             11896
 2011       5              24  2011-05-24   Tues            12851
 2011       5              25  2011-05-25   Wed             12715
 2011       5              26  2011-05-26   Thurs           12822
 2011       5              27  2011-05-27   Fri             12379
 2011       5              28  2011-05-28   Sat              8276
 2011       5              29  2011-05-29   Sun              7145
 2011       5              30  2011-05-30   Mon              7492
 2011       5              31  2011-05-31   Tues            12192
 2011       6               1  2011-06-01   Wed             13446
 2011       6               2  2011-06-02   Thurs           13258
 2011       6               3  2011-06-03   Fri             12680
 2011       6               4  2011-06-04   Sat              8398
 2011       6               5  2011-06-05   Sun              7261
 2011       6               6  2011-06-06   Mon             11934
 2011       6               7  2011-06-07   Tues            12629
 2011       6               8  2011-06-08   Wed             12660
 2011       6               9  2011-06-09   Thurs           12471
 2011       6              10  2011-06-10   Fri             12279
 2011       6              11  2011-06-11   Sat              8091
 2011       6              12  2011-06-12   Sun              7314
 2011       6              13  2011-06-13   Mon             11744
 2011       6              14  2011-06-14   Tues            12841
 2011       6              15  2011-06-15   Wed             12681
 2011       6              16  2011-06-16   Thurs           12990
 2011       6              17  2011-06-17   Fri             12463
 2011       6              18  2011-06-18   Sat              8498
 2011       6              19  2011-06-19   Sun              7344
 2011       6              20  2011-06-20   Mon             12045
 2011       6              21  2011-06-21   Tues            13143
 2011       6              22  2011-06-22   Wed             13017
 2011       6              23  2011-06-23   Thurs           12681
 2011       6              24  2011-06-24   Fri             12504
 2011       6              25  2011-06-25   Sat              8351
 2011       6              26  2011-06-26   Sun              7140
 2011       6              27  2011-06-27   Mon             12344
 2011       6              28  2011-06-28   Tues            13234
 2011       6              29  2011-06-29   Wed             13002
 2011       6              30  2011-06-30   Thurs           13194
 2011       7               1  2011-07-01   Fri             13392
 2011       7               2  2011-07-02   Sat              8510
 2011       7               3  2011-07-03   Sun              7489
 2011       7               4  2011-07-04   Mon              7541
 2011       7               5  2011-07-05   Tues            12751
 2011       7               6  2011-07-06   Wed             13950
 2011       7               7  2011-07-07   Thurs           14200
 2011       7               8  2011-07-08   Fri             13363
 2011       7               9  2011-07-09   Sat              8845
 2011       7              10  2011-07-10   Sun              7635
 2011       7              11  2011-07-11   Mon             12617
 2011       7              12  2011-07-12   Tues            13392
 2011       7              13  2011-07-13   Wed             12900
 2011       7              14  2011-07-14   Thurs           13278
 2011       7              15  2011-07-15   Fri             13097
 2011       7              16  2011-07-16   Sat              8534
 2011       7              17  2011-07-17   Sun              7637
 2011       7              18  2011-07-18   Mon             12414
 2011       7              19  2011-07-19   Tues            13156
 2011       7              20  2011-07-20   Wed             13219
 2011       7              21  2011-07-21   Thurs           13262
 2011       7              22  2011-07-22   Fri             12777
 2011       7              23  2011-07-23   Sat              8671
 2011       7              24  2011-07-24   Sun              7351
 2011       7              25  2011-07-25   Mon             12126
 2011       7              26  2011-07-26   Tues            13270
 2011       7              27  2011-07-27   Wed             13023
 2011       7              28  2011-07-28   Thurs           13152
 2011       7              29  2011-07-29   Fri             12501
 2011       7              30  2011-07-30   Sat              8338
 2011       7              31  2011-07-31   Sun              7450
 2011       8               1  2011-08-01   Mon             12546
 2011       8               2  2011-08-02   Tues            13491
 2011       8               3  2011-08-03   Wed             13164
 2011       8               4  2011-08-04   Thurs           13031
 2011       8               5  2011-08-05   Fri             12848
 2011       8               6  2011-08-06   Sat              8567
 2011       8               7  2011-08-07   Sun              7605
 2011       8               8  2011-08-08   Mon             12505
 2011       8               9  2011-08-09   Tues            13360
 2011       8              10  2011-08-10   Wed             13160
 2011       8              11  2011-08-11   Thurs           13092
 2011       8              12  2011-08-12   Fri             12978
 2011       8              13  2011-08-13   Sat              8448
 2011       8              14  2011-08-14   Sun              7470
 2011       8              15  2011-08-15   Mon             12756
 2011       8              16  2011-08-16   Tues            13576
 2011       8              17  2011-08-17   Wed             13267
 2011       8              18  2011-08-18   Thurs           13150
 2011       8              19  2011-08-19   Fri             12900
 2011       8              20  2011-08-20   Sat              8572
 2011       8              21  2011-08-21   Sun              7493
 2011       8              22  2011-08-22   Mon             12286
 2011       8              23  2011-08-23   Tues            13422
 2011       8              24  2011-08-24   Wed             12986
 2011       8              25  2011-08-25   Thurs           13046
 2011       8              26  2011-08-26   Fri             12910
 2011       8              27  2011-08-27   Sat              8700
 2011       8              28  2011-08-28   Sun              7633
 2011       8              29  2011-08-29   Mon             12281
 2011       8              30  2011-08-30   Tues            13561
 2011       8              31  2011-08-31   Wed             13390
 2011       9               1  2011-09-01   Thurs           13723
 2011       9               2  2011-09-02   Fri             13224
 2011       9               3  2011-09-03   Sat              8588
 2011       9               4  2011-09-04   Sun              7399
 2011       9               5  2011-09-05   Mon              7770
 2011       9               6  2011-09-06   Tues            12892
 2011       9               7  2011-09-07   Wed             14234
 2011       9               8  2011-09-08   Thurs           13544
 2011       9               9  2011-09-09   Fri             13537
 2011       9              10  2011-09-10   Sat              9115
 2011       9              11  2011-09-11   Sun              7501
 2011       9              12  2011-09-12   Mon             12770
 2011       9              13  2011-09-13   Tues            13205
 2011       9              14  2011-09-14   Wed             13590
 2011       9              15  2011-09-15   Thurs           13583
 2011       9              16  2011-09-16   Fri             13322
 2011       9              17  2011-09-17   Sat              8792
 2011       9              18  2011-09-18   Sun              7724
 2011       9              19  2011-09-19   Mon             12818
 2011       9              20  2011-09-20   Tues            13648
 2011       9              21  2011-09-21   Wed             13138
 2011       9              22  2011-09-22   Thurs           13157
 2011       9              23  2011-09-23   Fri             13062
 2011       9              24  2011-09-24   Sat              8496
 2011       9              25  2011-09-25   Sun              7609
 2011       9              26  2011-09-26   Mon             12719
 2011       9              27  2011-09-27   Tues            13455
 2011       9              28  2011-09-28   Wed             12815
 2011       9              29  2011-09-29   Thurs           12813
 2011       9              30  2011-09-30   Fri             12419
 2011      10               1  2011-10-01   Sat              8506
 2011      10               2  2011-10-02   Sun              7419
 2011      10               3  2011-10-03   Mon             12310
 2011      10               4  2011-10-04   Tues            12924
 2011      10               5  2011-10-05   Wed             12748
 2011      10               6  2011-10-06   Thurs           12744
 2011      10               7  2011-10-07   Fri             12195
 2011      10               8  2011-10-08   Sat              8206
 2011      10               9  2011-10-09   Sun              7160
 2011      10              10  2011-10-10   Mon             11839
 2011      10              11  2011-10-11   Tues            12865
 2011      10              12  2011-10-12   Wed             12581
 2011      10              13  2011-10-13   Thurs           12201
 2011      10              14  2011-10-14   Fri             12065
 2011      10              15  2011-10-15   Sat              8043
 2011      10              16  2011-10-16   Sun              7145
 2011      10              17  2011-10-17   Mon             11803
 2011      10              18  2011-10-18   Tues            12819
 2011      10              19  2011-10-19   Wed             12605
 2011      10              20  2011-10-20   Thurs           12536
 2011      10              21  2011-10-21   Fri             11936
 2011      10              22  2011-10-22   Sat              7899
 2011      10              23  2011-10-23   Sun              7104
 2011      10              24  2011-10-24   Mon             11773
 2011      10              25  2011-10-25   Tues            12672
 2011      10              26  2011-10-26   Wed             12085
 2011      10              27  2011-10-27   Thurs           12390
 2011      10              28  2011-10-28   Fri             12049
 2011      10              29  2011-10-29   Sat              7812
 2011      10              30  2011-10-30   Sun              6870
 2011      10              31  2011-10-31   Mon              9828
 2011      11               1  2011-11-01   Tues            13632
 2011      11               2  2011-11-02   Wed             12657
 2011      11               3  2011-11-03   Thurs           12310
 2011      11               4  2011-11-04   Fri             11965
 2011      11               5  2011-11-05   Sat              8045
 2011      11               6  2011-11-06   Sun              7236
 2011      11               7  2011-11-07   Mon             11574
 2011      11               8  2011-11-08   Tues            12300
 2011      11               9  2011-11-09   Wed             11990
 2011      11              10  2011-11-10   Thurs           11978
 2011      11              11  2011-11-11   Fri             14392
 2011      11              12  2011-11-12   Sat              8087
 2011      11              13  2011-11-13   Sun              6877
 2011      11              14  2011-11-14   Mon             11590
 2011      11              15  2011-11-15   Tues            12676
 2011      11              16  2011-11-16   Wed             12433
 2011      11              17  2011-11-17   Thurs           12461
 2011      11              18  2011-11-18   Fri             12424
 2011      11              19  2011-11-19   Sat              8042
 2011      11              20  2011-11-20   Sun              7218
 2011      11              21  2011-11-21   Mon             12929
 2011      11              22  2011-11-22   Tues            13415
 2011      11              23  2011-11-23   Wed             11775
 2011      11              24  2011-11-24   Thurs            6894
 2011      11              25  2011-11-25   Fri              8618
 2011      11              26  2011-11-26   Sat              7512
 2011      11              27  2011-11-27   Sun              6879
 2011      11              28  2011-11-28   Mon             12410
 2011      11              29  2011-11-29   Tues            13204
 2011      11              30  2011-11-30   Wed             12584
 2011      12               1  2011-12-01   Thurs           12716
 2011      12               2  2011-12-02   Fri             11853
 2011      12               3  2011-12-03   Sat              7895
 2011      12               4  2011-12-04   Sun              6957
 2011      12               5  2011-12-05   Mon             11622
 2011      12               6  2011-12-06   Tues            12477
 2011      12               7  2011-12-07   Wed             12119
 2011      12               8  2011-12-08   Thurs           12024
 2011      12               9  2011-12-09   Fri             11565
 2011      12              10  2011-12-10   Sat              7658
 2011      12              11  2011-12-11   Sun              6832
 2011      12              12  2011-12-12   Mon             12087
 2011      12              13  2011-12-13   Tues            12592
 2011      12              14  2011-12-14   Wed             12632
 2011      12              15  2011-12-15   Thurs           12506
 2011      12              16  2011-12-16   Fri             12211
 2011      12              17  2011-12-17   Sat              7941
 2011      12              18  2011-12-18   Sun              6876
 2011      12              19  2011-12-19   Mon             12708
 2011      12              20  2011-12-20   Tues            13640
 2011      12              21  2011-12-21   Wed             13227
 2011      12              22  2011-12-22   Thurs           12215
 2011      12              23  2011-12-23   Fri             10017
 2011      12              24  2011-12-24   Sat              6688
 2011      12              25  2011-12-25   Sun              5728
 2011      12              26  2011-12-26   Mon              8039
 2011      12              27  2011-12-27   Tues            12475
 2011      12              28  2011-12-28   Wed             13478
 2011      12              29  2011-12-29   Thurs           12985
 2011      12              30  2011-12-30   Fri             12434
 2011      12              31  2011-12-31   Sat              8035
 2012       1               1  2012-01-01   Sun              6629
 2012       1               2  2012-01-02   Mon              7821
 2012       1               3  2012-01-03   Tues            11324
 2012       1               4  2012-01-04   Wed             12075
 2012       1               5  2012-01-05   Thurs           12171
 2012       1               6  2012-01-06   Fri             11920
 2012       1               7  2012-01-07   Sat              7783
 2012       1               8  2012-01-08   Sun              6887
 2012       1               9  2012-01-09   Mon             11248
 2012       1              10  2012-01-10   Tues            11939
 2012       1              11  2012-01-11   Wed             11860
 2012       1              12  2012-01-12   Thurs           12391
 2012       1              13  2012-01-13   Fri             11380
 2012       1              14  2012-01-14   Sat              7901
 2012       1              15  2012-01-15   Sun              6899
 2012       1              16  2012-01-16   Mon             10707
 2012       1              17  2012-01-17   Tues            12175
 2012       1              18  2012-01-18   Wed             11981
 2012       1              19  2012-01-19   Thurs           11997
 2012       1              20  2012-01-20   Fri             11914
 2012       1              21  2012-01-21   Sat              7948
 2012       1              22  2012-01-22   Sun              6816
 2012       1              23  2012-01-23   Mon             11464
 2012       1              24  2012-01-24   Tues            12356
 2012       1              25  2012-01-25   Wed             11692
 2012       1              26  2012-01-26   Thurs           12003
 2012       1              27  2012-01-27   Fri             11648
 2012       1              28  2012-01-28   Sat              7827
 2012       1              29  2012-01-29   Sun              6733
 2012       1              30  2012-01-30   Mon             11253
 2012       1              31  2012-01-31   Tues            11919
 2012       2               1  2012-02-01   Wed             11916
 2012       2               2  2012-02-02   Thurs           12135
 2012       2               3  2012-02-03   Fri             11826
 2012       2               4  2012-02-04   Sat              7833
 2012       2               5  2012-02-05   Sun              6733
 2012       2               6  2012-02-06   Mon             11229
 2012       2               7  2012-02-07   Tues            12310
 2012       2               8  2012-02-08   Wed             11946
 2012       2               9  2012-02-09   Thurs           11862
 2012       2              10  2012-02-10   Fri             11981
 2012       2              11  2012-02-11   Sat              7895
 2012       2              12  2012-02-12   Sun              7012
 2012       2              13  2012-02-13   Mon             11023
 2012       2              14  2012-02-14   Tues            12708
 2012       2              15  2012-02-15   Wed             12250
 2012       2              16  2012-02-16   Thurs           12376
 2012       2              17  2012-02-17   Fri             11985
 2012       2              18  2012-02-18   Sat              7818
 2012       2              19  2012-02-19   Sun              6905
 2012       2              20  2012-02-20   Mon             10837
 2012       2              21  2012-02-21   Tues            12125
 2012       2              22  2012-02-22   Wed             12436
 2012       2              23  2012-02-23   Thurs           12045
 2012       2              24  2012-02-24   Fri             11802
 2012       2              25  2012-02-25   Sat              7842
 2012       2              26  2012-02-26   Sun              6707
 2012       2              27  2012-02-27   Mon             11475
 2012       2              28  2012-02-28   Tues            12208
 2012       2              29  2012-02-29   Wed             11042
 2012       3               1  2012-03-01   Thurs           12519
 2012       3               2  2012-03-02   Fri             11789
 2012       3               3  2012-03-03   Sat              8010
 2012       3               4  2012-03-04   Sun              7021
 2012       3               5  2012-03-05   Mon             11391
 2012       3               6  2012-03-06   Tues            12076
 2012       3               7  2012-03-07   Wed             11972
 2012       3               8  2012-03-08   Thurs           11985
 2012       3               9  2012-03-09   Fri             11817
 2012       3              10  2012-03-10   Sat              7691
 2012       3              11  2012-03-11   Sun              6497
 2012       3              12  2012-03-12   Mon             11571
 2012       3              13  2012-03-13   Tues            11779
 2012       3              14  2012-03-14   Wed             11797
 2012       3              15  2012-03-15   Thurs           11783
 2012       3              16  2012-03-16   Fri             11608
 2012       3              17  2012-03-17   Sat              8066
 2012       3              18  2012-03-18   Sun              6918
 2012       3              19  2012-03-19   Mon             11578
 2012       3              20  2012-03-20   Tues            12338
 2012       3              21  2012-03-21   Wed             12056
 2012       3              22  2012-03-22   Thurs           11925
 2012       3              23  2012-03-23   Fri             11816
 2012       3              24  2012-03-24   Sat              7893
 2012       3              25  2012-03-25   Sun              6915
 2012       3              26  2012-03-26   Mon             11474
 2012       3              27  2012-03-27   Tues            12245
 2012       3              28  2012-03-28   Wed             12035
 2012       3              29  2012-03-29   Thurs           11864
 2012       3              30  2012-03-30   Fri             11834
 2012       3              31  2012-03-31   Sat              7860
 2012       4               1  2012-04-01   Sun              6909
 2012       4               2  2012-04-02   Mon             11647
 2012       4               3  2012-04-03   Tues            12273
 2012       4               4  2012-04-04   Wed             12307
 2012       4               5  2012-04-05   Thurs           11986
 2012       4               6  2012-04-06   Fri             10955
 2012       4               7  2012-04-07   Sat              7384
 2012       4               8  2012-04-08   Sun              6545
 2012       4               9  2012-04-09   Mon             11237
 2012       4              10  2012-04-10   Tues            12179
 2012       4              11  2012-04-11   Wed             11635
 2012       4              12  2012-04-12   Thurs           12050
 2012       4              13  2012-04-13   Fri             10910
 2012       4              14  2012-04-14   Sat              7699
 2012       4              15  2012-04-15   Sun              6951
 2012       4              16  2012-04-16   Mon             11536
 2012       4              17  2012-04-17   Tues            12240
 2012       4              18  2012-04-18   Wed             11850
 2012       4              19  2012-04-19   Thurs           11583
 2012       4              20  2012-04-20   Fri             11608
 2012       4              21  2012-04-21   Sat              7757
 2012       4              22  2012-04-22   Sun              6843
 2012       4              23  2012-04-23   Mon             11297
 2012       4              24  2012-04-24   Tues            12191
 2012       4              25  2012-04-25   Wed             11765
 2012       4              26  2012-04-26   Thurs           11871
 2012       4              27  2012-04-27   Fri             11226
 2012       4              28  2012-04-28   Sat              7590
 2012       4              29  2012-04-29   Sun              6713
 2012       4              30  2012-04-30   Mon             11381
 2012       5               1  2012-05-01   Tues            12470
 2012       5               2  2012-05-02   Wed             12095
 2012       5               3  2012-05-03   Thurs           11804
 2012       5               4  2012-05-04   Fri             11488
 2012       5               5  2012-05-05   Sat              7634
 2012       5               6  2012-05-06   Sun              6868
 2012       5               7  2012-05-07   Mon             11424
 2012       5               8  2012-05-08   Tues            12158
 2012       5               9  2012-05-09   Wed             11749
 2012       5              10  2012-05-10   Thurs           11825
 2012       5              11  2012-05-11   Fri             11683
 2012       5              12  2012-05-12   Sat              7751
 2012       5              13  2012-05-13   Sun              6909
 2012       5              14  2012-05-14   Mon             11763
 2012       5              15  2012-05-15   Tues            12565
 2012       5              16  2012-05-16   Wed             12199
 2012       5              17  2012-05-17   Thurs           12048
 2012       5              18  2012-05-18   Fri             11771
 2012       5              19  2012-05-19   Sat              7914
 2012       5              20  2012-05-20   Sun              7202
 2012       5              21  2012-05-21   Mon             11919
 2012       5              22  2012-05-22   Tues            12601
 2012       5              23  2012-05-23   Wed             12649
 2012       5              24  2012-05-24   Thurs           12414
 2012       5              25  2012-05-25   Fri             12350
 2012       5              26  2012-05-26   Sat              7921
 2012       5              27  2012-05-27   Sun              7015
 2012       5              28  2012-05-28   Mon              7532
 2012       5              29  2012-05-29   Tues            12307
 2012       5              30  2012-05-30   Wed             13194
 2012       5              31  2012-05-31   Thurs           12686
 2012       6               1  2012-06-01   Fri             12623
 2012       6               2  2012-06-02   Sat              8040
 2012       6               3  2012-06-03   Sun              7075
 2012       6               4  2012-06-04   Mon             12011
 2012       6               5  2012-06-05   Tues            12424
 2012       6               6  2012-06-06   Wed             12410
 2012       6               7  2012-06-07   Thurs           12305
 2012       6               8  2012-06-08   Fri             12145
 2012       6               9  2012-06-09   Sat              8293
 2012       6              10  2012-06-10   Sun              7131
 2012       6              11  2012-06-11   Mon             11700
 2012       6              12  2012-06-12   Tues            12892
 2012       6              13  2012-06-13   Wed             11999
 2012       6              14  2012-06-14   Thurs           12626
 2012       6              15  2012-06-15   Fri             12278
 2012       6              16  2012-06-16   Sat              8213
 2012       6              17  2012-06-17   Sun              7316
 2012       6              18  2012-06-18   Mon             12028
 2012       6              19  2012-06-19   Tues            12767
 2012       6              20  2012-06-20   Wed             12674
 2012       6              21  2012-06-21   Thurs           12713
 2012       6              22  2012-06-22   Fri             12370
 2012       6              23  2012-06-23   Sat              8141
 2012       6              24  2012-06-24   Sun              7246
 2012       6              25  2012-06-25   Mon             12091
 2012       6              26  2012-06-26   Tues            12950
 2012       6              27  2012-06-27   Wed             12545
 2012       6              28  2012-06-28   Thurs           12994
 2012       6              29  2012-06-29   Fri             12462
 2012       6              30  2012-06-30   Sat              8323
 2012       7               1  2012-07-01   Sun              7550
 2012       7               2  2012-07-02   Mon             12837
 2012       7               3  2012-07-03   Tues            13752
 2012       7               4  2012-07-04   Wed              9296
 2012       7               5  2012-07-05   Thurs           12618
 2012       7               6  2012-07-06   Fri             12804
 2012       7               7  2012-07-07   Sat              8952
 2012       7               8  2012-07-08   Sun              7541
 2012       7               9  2012-07-09   Mon             12333
 2012       7              10  2012-07-10   Tues            13527
 2012       7              11  2012-07-11   Wed             13024
 2012       7              12  2012-07-12   Thurs           12787
 2012       7              13  2012-07-13   Fri             12109
 2012       7              14  2012-07-14   Sat              8657
 2012       7              15  2012-07-15   Sun              7559
 2012       7              16  2012-07-16   Mon             12380
 2012       7              17  2012-07-17   Tues            13318
 2012       7              18  2012-07-18   Wed             12865
 2012       7              19  2012-07-19   Thurs           12798
 2012       7              20  2012-07-20   Fri             12503
 2012       7              21  2012-07-21   Sat              8611
 2012       7              22  2012-07-22   Sun              7531
 2012       7              23  2012-07-23   Mon             12553
 2012       7              24  2012-07-24   Tues            13390
 2012       7              25  2012-07-25   Wed             13045
 2012       7              26  2012-07-26   Thurs           13056
 2012       7              27  2012-07-27   Fri             12785
 2012       7              28  2012-07-28   Sat              8493
 2012       7              29  2012-07-29   Sun              7550
 2012       7              30  2012-07-30   Mon             12061
 2012       7              31  2012-07-31   Tues            13187
 2012       8               1  2012-08-01   Wed             12976
 2012       8               2  2012-08-02   Thurs           13006
 2012       8               3  2012-08-03   Fri             12743
 2012       8               4  2012-08-04   Sat              8786
 2012       8               5  2012-08-05   Sun              7693
 2012       8               6  2012-08-06   Mon             12671
 2012       8               7  2012-08-07   Tues            13316
 2012       8               8  2012-08-08   Wed             13204
 2012       8               9  2012-08-09   Thurs           13179
 2012       8              10  2012-08-10   Fri             12898
 2012       8              11  2012-08-11   Sat              8602
 2012       8              12  2012-08-12   Sun              7630
 2012       8              13  2012-08-13   Mon             12126
 2012       8              14  2012-08-14   Tues            13788
 2012       8              15  2012-08-15   Wed             13391
 2012       8              16  2012-08-16   Thurs           13361
 2012       8              17  2012-08-17   Fri             12913
 2012       8              18  2012-08-18   Sat              8678
 2012       8              19  2012-08-19   Sun              7678
 2012       8              20  2012-08-20   Mon             12580
 2012       8              21  2012-08-21   Tues            13239
 2012       8              22  2012-08-22   Wed             12973
 2012       8              23  2012-08-23   Thurs           12889
 2012       8              24  2012-08-24   Fri             13114
 2012       8              25  2012-08-25   Sat              8653
 2012       8              26  2012-08-26   Sun              7629
 2012       8              27  2012-08-27   Mon             12533
 2012       8              28  2012-08-28   Tues            13674
 2012       8              29  2012-08-29   Wed             12968
 2012       8              30  2012-08-30   Thurs           13323
 2012       8              31  2012-08-31   Fri             13287
 2012       9               1  2012-09-01   Sat              8967
 2012       9               2  2012-09-02   Sun              7817
 2012       9               3  2012-09-03   Mon              8030
 2012       9               4  2012-09-04   Tues            12941
 2012       9               5  2012-09-05   Wed             13991
 2012       9               6  2012-09-06   Thurs           13709
 2012       9               7  2012-09-07   Fri             13841
 2012       9               8  2012-09-08   Sat              8987
 2012       9               9  2012-09-09   Sun              7930
 2012       9              10  2012-09-10   Mon             12853
 2012       9              11  2012-09-11   Tues            12543
 2012       9              12  2012-09-12   Wed             13653
 2012       9              13  2012-09-13   Thurs           13396
 2012       9              14  2012-09-14   Fri             13529
 2012       9              15  2012-09-15   Sat              9094
 2012       9              16  2012-09-16   Sun              7867
 2012       9              17  2012-09-17   Mon             12960
 2012       9              18  2012-09-18   Tues            13628
 2012       9              19  2012-09-19   Wed             13490
 2012       9              20  2012-09-20   Thurs           13524
 2012       9              21  2012-09-21   Fri             13174
 2012       9              22  2012-09-22   Sat              8899
 2012       9              23  2012-09-23   Sun              8007
 2012       9              24  2012-09-24   Mon             12748
 2012       9              25  2012-09-25   Tues            13533
 2012       9              26  2012-09-26   Wed             13100
 2012       9              27  2012-09-27   Thurs           13159
 2012       9              28  2012-09-28   Fri             12661
 2012       9              29  2012-09-29   Sat              8695
 2012       9              30  2012-09-30   Sun              7607
 2012      10               1  2012-10-01   Mon             12537
 2012      10               2  2012-10-02   Tues            13293
 2012      10               3  2012-10-03   Wed             12900
 2012      10               4  2012-10-04   Thurs           12785
 2012      10               5  2012-10-05   Fri             12521
 2012      10               6  2012-10-06   Sat              8333
 2012      10               7  2012-10-07   Sun              7367
 2012      10               8  2012-10-08   Mon             11711
 2012      10               9  2012-10-09   Tues            12692
 2012      10              10  2012-10-10   Wed             12597
 2012      10              11  2012-10-11   Thurs           13705
 2012      10              12  2012-10-12   Fri             12349
 2012      10              13  2012-10-13   Sat              8153
 2012      10              14  2012-10-14   Sun              7408
 2012      10              15  2012-10-15   Mon             12347
 2012      10              16  2012-10-16   Tues            12888
 2012      10              17  2012-10-17   Wed             12752
 2012      10              18  2012-10-18   Thurs           12604
 2012      10              19  2012-10-19   Fri             12367
 2012      10              20  2012-10-20   Sat              8365
 2012      10              21  2012-10-21   Sun              7279
 2012      10              22  2012-10-22   Mon             12260
 2012      10              23  2012-10-23   Tues            12923
 2012      10              24  2012-10-24   Wed             12610
 2012      10              25  2012-10-25   Thurs           12769
 2012      10              26  2012-10-26   Fri             11989
 2012      10              27  2012-10-27   Sat              8127
 2012      10              28  2012-10-28   Sun              7362
 2012      10              29  2012-10-29   Mon             11957
 2012      10              30  2012-10-30   Tues            12011
 2012      10              31  2012-10-31   Wed             11012
 2012      11               1  2012-11-01   Thurs           13042
 2012      11               2  2012-11-02   Fri             12692
 2012      11               3  2012-11-03   Sat              8224
 2012      11               4  2012-11-04   Sun              7436
 2012      11               5  2012-11-05   Mon             11885
 2012      11               6  2012-11-06   Tues            12690
 2012      11               7  2012-11-07   Wed             12536
 2012      11               8  2012-11-08   Thurs           12386
 2012      11               9  2012-11-09   Fri             12374
 2012      11              10  2012-11-10   Sat              8172
 2012      11              11  2012-11-11   Sun              7219
 2012      11              12  2012-11-12   Mon             12036
 2012      11              13  2012-11-13   Tues            12364
 2012      11              14  2012-11-14   Wed             12728
 2012      11              15  2012-11-15   Thurs           12812
 2012      11              16  2012-11-16   Fri             12555
 2012      11              17  2012-11-17   Sat              8503
 2012      11              18  2012-11-18   Sun              7390
 2012      11              19  2012-11-19   Mon             12916
 2012      11              20  2012-11-20   Tues            13427
 2012      11              21  2012-11-21   Wed             12083
 2012      11              22  2012-11-22   Thurs            7267
 2012      11              23  2012-11-23   Fri              9171
 2012      11              24  2012-11-24   Sat              7651
 2012      11              25  2012-11-25   Sun              7191
 2012      11              26  2012-11-26   Mon             12403
 2012      11              27  2012-11-27   Tues            13296
 2012      11              28  2012-11-28   Wed             12614
 2012      11              29  2012-11-29   Thurs           12503
 2012      11              30  2012-11-30   Fri             11740
 2012      12               1  2012-12-01   Sat              8248
 2012      12               2  2012-12-02   Sun              7204
 2012      12               3  2012-12-03   Mon             11833
 2012      12               4  2012-12-04   Tues            12566
 2012      12               5  2012-12-05   Wed             12313
 2012      12               6  2012-12-06   Thurs           12084
 2012      12               7  2012-12-07   Fri             11733
 2012      12               8  2012-12-08   Sat              7995
 2012      12               9  2012-12-09   Sun              7003
 2012      12              10  2012-12-10   Mon             11529
 2012      12              11  2012-12-11   Tues            12234
 2012      12              12  2012-12-12   Wed             14667
 2012      12              13  2012-12-13   Thurs           11893
 2012      12              14  2012-12-14   Fri             11872
 2012      12              15  2012-12-15   Sat              7913
 2012      12              16  2012-12-16   Sun              7146
 2012      12              17  2012-12-17   Mon             11979
 2012      12              18  2012-12-18   Tues            13305
 2012      12              19  2012-12-19   Wed             12849
 2012      12              20  2012-12-20   Thurs           13109
 2012      12              21  2012-12-21   Fri             13186
 2012      12              22  2012-12-22   Sat              8396
 2012      12              23  2012-12-23   Sun              6845
 2012      12              24  2012-12-24   Mon              7614
 2012      12              25  2012-12-25   Tues             6325
 2012      12              26  2012-12-26   Wed             11362
 2012      12              27  2012-12-27   Thurs           14126
 2012      12              28  2012-12-28   Fri             13888
 2012      12              29  2012-12-29   Sat              9030
 2012      12              30  2012-12-30   Sun              7545
 2012      12              31  2012-12-31   Mon             10634
 2013       1               1  2013-01-01   Tues             7537
 2013       1               2  2013-01-02   Wed             10887
 2013       1               3  2013-01-03   Thurs           12616
 2013       1               4  2013-01-04   Fri             12431
 2013       1               5  2013-01-05   Sat              8332
 2013       1               6  2013-01-06   Sun              7271
 2013       1               7  2013-01-07   Mon             11463
 2013       1               8  2013-01-08   Tues            12040
 2013       1               9  2013-01-09   Wed             11598
 2013       1              10  2013-01-10   Thurs           11887
 2013       1              11  2013-01-11   Fri             12082
 2013       1              12  2013-01-12   Sat              8140
 2013       1              13  2013-01-13   Sun              7092
 2013       1              14  2013-01-14   Mon             11401
 2013       1              15  2013-01-15   Tues            11953
 2013       1              16  2013-01-16   Wed             11678
 2013       1              17  2013-01-17   Thurs           12113
 2013       1              18  2013-01-18   Fri             11846
 2013       1              19  2013-01-19   Sat              7708
 2013       1              20  2013-01-20   Sun              7001
 2013       1              21  2013-01-21   Mon             10777
 2013       1              22  2013-01-22   Tues            11835
 2013       1              23  2013-01-23   Wed             11917
 2013       1              24  2013-01-24   Thurs           12016
 2013       1              25  2013-01-25   Fri             11638
 2013       1              26  2013-01-26   Sat              8047
 2013       1              27  2013-01-27   Sun              6916
 2013       1              28  2013-01-28   Mon             11520
 2013       1              29  2013-01-29   Tues            12168
 2013       1              30  2013-01-30   Wed             11752
 2013       1              31  2013-01-31   Thurs           11690
 2013       2               1  2013-02-01   Fri             11995
 2013       2               2  2013-02-02   Sat              7881
 2013       2               3  2013-02-03   Sun              6876
 2013       2               4  2013-02-04   Mon             11237
 2013       2               5  2013-02-05   Tues            12114
 2013       2               6  2013-02-06   Wed             11617
 2013       2               7  2013-02-07   Thurs           12025
 2013       2               8  2013-02-08   Fri             11959
 2013       2               9  2013-02-09   Sat              7776
 2013       2              10  2013-02-10   Sun              6735
 2013       2              11  2013-02-11   Mon             11460
 2013       2              12  2013-02-12   Tues            12243
 2013       2              13  2013-02-13   Wed             11648
 2013       2              14  2013-02-14   Thurs           12422
 2013       2              15  2013-02-15   Fri             11914
 2013       2              16  2013-02-16   Sat              7902
 2013       2              17  2013-02-17   Sun              7044
 2013       2              18  2013-02-18   Mon             10863
 2013       2              19  2013-02-19   Tues            12137
 2013       2              20  2013-02-20   Wed             11941
 2013       2              21  2013-02-21   Thurs           11899
 2013       2              22  2013-02-22   Fri             11778
 2013       2              23  2013-02-23   Sat              7866
 2013       2              24  2013-02-24   Sun              6914
 2013       2              25  2013-02-25   Mon             11358
 2013       2              26  2013-02-26   Tues            11982
 2013       2              27  2013-02-27   Wed             11695
 2013       2              28  2013-02-28   Thurs           11601
 2013       3               1  2013-03-01   Fri             12075
 2013       3               2  2013-03-02   Sat              7836
 2013       3               3  2013-03-03   Sun              7098
 2013       3               4  2013-03-04   Mon             11667
 2013       3               5  2013-03-05   Tues            12172
 2013       3               6  2013-03-06   Wed             11800
 2013       3               7  2013-03-07   Thurs           11918
 2013       3               8  2013-03-08   Fri             11787
 2013       3               9  2013-03-09   Sat              7946
 2013       3              10  2013-03-10   Sun              6610
 2013       3              11  2013-03-11   Mon             11591
 2013       3              12  2013-03-12   Tues            12102
 2013       3              13  2013-03-13   Wed             11937
 2013       3              14  2013-03-14   Thurs           11831
 2013       3              15  2013-03-15   Fri             11811
 2013       3              16  2013-03-16   Sat              7906
 2013       3              17  2013-03-17   Sun              7134
 2013       3              18  2013-03-18   Mon             11825
 2013       3              19  2013-03-19   Tues            12070
 2013       3              20  2013-03-20   Wed             12024
 2013       3              21  2013-03-21   Thurs           12096
 2013       3              22  2013-03-22   Fri             11949
 2013       3              23  2013-03-23   Sat              7876
 2013       3              24  2013-03-24   Sun              6956
 2013       3              25  2013-03-25   Mon             11619
 2013       3              26  2013-03-26   Tues            12199
 2013       3              27  2013-03-27   Wed             12204
 2013       3              28  2013-03-28   Thurs           12006
 2013       3              29  2013-03-29   Fri             10986
 2013       3              30  2013-03-30   Sat              7863
 2013       3              31  2013-03-31   Sun              6735
 2013       4               1  2013-04-01   Mon             10440
 2013       4               2  2013-04-02   Tues            12389
 2013       4               3  2013-04-03   Wed             12081
 2013       4               4  2013-04-04   Thurs           12019
 2013       4               5  2013-04-05   Fri             11858
 2013       4               6  2013-04-06   Sat              7789
 2013       4               7  2013-04-07   Sun              6796
 2013       4               8  2013-04-08   Mon             11423
 2013       4               9  2013-04-09   Tues            12074
 2013       4              10  2013-04-10   Wed             11759
 2013       4              11  2013-04-11   Thurs           11765
 2013       4              12  2013-04-12   Fri             11494
 2013       4              13  2013-04-13   Sat              7643
 2013       4              14  2013-04-14   Sun              6898
 2013       4              15  2013-04-15   Mon             11318
 2013       4              16  2013-04-16   Tues            12168
 2013       4              17  2013-04-17   Wed             11765
 2013       4              18  2013-04-18   Thurs           11665
 2013       4              19  2013-04-19   Fri             11511
 2013       4              20  2013-04-20   Sat              7718
 2013       4              21  2013-04-21   Sun              6722
 2013       4              22  2013-04-22   Mon             11410
 2013       4              23  2013-04-23   Tues            11956
 2013       4              24  2013-04-24   Wed             11537
 2013       4              25  2013-04-25   Thurs           11620
 2013       4              26  2013-04-26   Fri             11442
 2013       4              27  2013-04-27   Sat              7651
 2013       4              28  2013-04-28   Sun              6852
 2013       4              29  2013-04-29   Mon             11259
 2013       4              30  2013-04-30   Tues            11825
 2013       5               1  2013-05-01   Wed             11948
 2013       5               2  2013-05-02   Thurs           11787
 2013       5               3  2013-05-03   Fri             11805
 2013       5               4  2013-05-04   Sat              7714
 2013       5               5  2013-05-05   Sun              6609
 2013       5               6  2013-05-06   Mon             11316
 2013       5               7  2013-05-07   Tues            12275
 2013       5               8  2013-05-08   Wed             11867
 2013       5               9  2013-05-09   Thurs           11628
 2013       5              10  2013-05-10   Fri             11813
 2013       5              11  2013-05-11   Sat              7727
 2013       5              12  2013-05-12   Sun              7060
 2013       5              13  2013-05-13   Mon             11289
 2013       5              14  2013-05-14   Tues            12345
 2013       5              15  2013-05-15   Wed             12184
 2013       5              16  2013-05-16   Thurs           12145
 2013       5              17  2013-05-17   Fri             11945
 2013       5              18  2013-05-18   Sat              7764
 2013       5              19  2013-05-19   Sun              7049
 2013       5              20  2013-05-20   Mon             11968
 2013       5              21  2013-05-21   Tues            12685
 2013       5              22  2013-05-22   Wed             12366
 2013       5              23  2013-05-23   Thurs           12523
 2013       5              24  2013-05-24   Fri             12265
 2013       5              25  2013-05-25   Sat              8156
 2013       5              26  2013-05-26   Sun              6880
 2013       5              27  2013-05-27   Mon              7351
 2013       5              28  2013-05-28   Tues            12462
 2013       5              29  2013-05-29   Wed             13062
 2013       5              30  2013-05-30   Thurs           12798
 2013       5              31  2013-05-31   Fri             12082
 2013       6               1  2013-06-01   Sat              8320
 2013       6               2  2013-06-02   Sun              7015
 2013       6               3  2013-06-03   Mon             11718
 2013       6               4  2013-06-04   Tues            12315
 2013       6               5  2013-06-05   Wed             12343
 2013       6               6  2013-06-06   Thurs           11935
 2013       6               7  2013-06-07   Fri             12203
 2013       6               8  2013-06-08   Sat              8184
 2013       6               9  2013-06-09   Sun              7306
 2013       6              10  2013-06-10   Mon             11852
 2013       6              11  2013-06-11   Tues            12304
 2013       6              12  2013-06-12   Wed             11924
 2013       6              13  2013-06-13   Thurs           12096
 2013       6              14  2013-06-14   Fri             12046
 2013       6              15  2013-06-15   Sat              8235
 2013       6              16  2013-06-16   Sun              7267
 2013       6              17  2013-06-17   Mon             12166
 2013       6              18  2013-06-18   Tues            12754
 2013       6              19  2013-06-19   Wed             12217
 2013       6              20  2013-06-20   Thurs           12417
 2013       6              21  2013-06-21   Fri             12175
 2013       6              22  2013-06-22   Sat              8301
 2013       6              23  2013-06-23   Sun              7435
 2013       6              24  2013-06-24   Mon             12033
 2013       6              25  2013-06-25   Tues            12819
 2013       6              26  2013-06-26   Wed             12526
 2013       6              27  2013-06-27   Thurs           12733
 2013       6              28  2013-06-28   Fri             12585
 2013       6              29  2013-06-29   Sat              8325
 2013       6              30  2013-06-30   Sun              7319
 2013       7               1  2013-07-01   Mon             12558
 2013       7               2  2013-07-02   Tues            13437
 2013       7               3  2013-07-03   Wed             13247
 2013       7               4  2013-07-04   Thurs            8883
 2013       7               5  2013-07-05   Fri             11318
 2013       7               6  2013-07-06   Sat              8420
 2013       7               7  2013-07-07   Sun              7454
 2013       7               8  2013-07-08   Mon             12493
 2013       7               9  2013-07-09   Tues            13408
 2013       7              10  2013-07-10   Wed             12915
 2013       7              11  2013-07-11   Thurs           12806
 2013       7              12  2013-07-12   Fri             12535
 2013       7              13  2013-07-13   Sat              8485
 2013       7              14  2013-07-14   Sun              7536
 2013       7              15  2013-07-15   Mon             12506
 2013       7              16  2013-07-16   Tues            13083
 2013       7              17  2013-07-17   Wed             12912
 2013       7              18  2013-07-18   Thurs           12824
 2013       7              19  2013-07-19   Fri             12528
 2013       7              20  2013-07-20   Sat              8389
 2013       7              21  2013-07-21   Sun              7564
 2013       7              22  2013-07-22   Mon             12544
 2013       7              23  2013-07-23   Tues            13316
 2013       7              24  2013-07-24   Wed             12804
 2013       7              25  2013-07-25   Thurs           12860
 2013       7              26  2013-07-26   Fri             12249
 2013       7              27  2013-07-27   Sat              8328
 2013       7              28  2013-07-28   Sun              7492
 2013       7              29  2013-07-29   Mon             12096
 2013       7              30  2013-07-30   Tues            12880
 2013       7              31  2013-07-31   Wed             12625
 2013       8               1  2013-08-01   Thurs           12971
 2013       8               2  2013-08-02   Fri             12561
 2013       8               3  2013-08-03   Sat              8539
 2013       8               4  2013-08-04   Sun              7600
 2013       8               5  2013-08-05   Mon             12434
 2013       8               6  2013-08-06   Tues            13055
 2013       8               7  2013-08-07   Wed             13109
 2013       8               8  2013-08-08   Thurs           13207
 2013       8               9  2013-08-09   Fri             12756
 2013       8              10  2013-08-10   Sat              8777
 2013       8              11  2013-08-11   Sun              7797
 2013       8              12  2013-08-12   Mon             12391
 2013       8              13  2013-08-13   Tues            12975
 2013       8              14  2013-08-14   Wed             13049
 2013       8              15  2013-08-15   Thurs           13101
 2013       8              16  2013-08-16   Fri             12702
 2013       8              17  2013-08-17   Sat              8747
 2013       8              18  2013-08-18   Sun              7612
 2013       8              19  2013-08-19   Mon             12426
 2013       8              20  2013-08-20   Tues            13051
 2013       8              21  2013-08-21   Wed             12903
 2013       8              22  2013-08-22   Thurs           12873
 2013       8              23  2013-08-23   Fri             12805
 2013       8              24  2013-08-24   Sat              8801
 2013       8              25  2013-08-25   Sun              7638
 2013       8              26  2013-08-26   Mon             12293
 2013       8              27  2013-08-27   Tues            13131
 2013       8              28  2013-08-28   Wed             13129
 2013       8              29  2013-08-29   Thurs           12873
 2013       8              30  2013-08-30   Fri             12814
 2013       8              31  2013-08-31   Sat              8759
 2013       9               1  2013-09-01   Sun              7620
 2013       9               2  2013-09-02   Mon              7896
 2013       9               3  2013-09-03   Tues            12910
 2013       9               4  2013-09-04   Wed             13680
 2013       9               5  2013-09-05   Thurs           13337
 2013       9               6  2013-09-06   Fri             12876
 2013       9               7  2013-09-07   Sat              8800
 2013       9               8  2013-09-08   Sun              7737
 2013       9               9  2013-09-09   Mon             12653
 2013       9              10  2013-09-10   Tues            13440
 2013       9              11  2013-09-11   Wed             12074
 2013       9              12  2013-09-12   Thurs           13460
 2013       9              13  2013-09-13   Fri             12669
 2013       9              14  2013-09-14   Sat              8795
 2013       9              15  2013-09-15   Sun              7865
 2013       9              16  2013-09-16   Mon             12842
 2013       9              17  2013-09-17   Tues            13542
 2013       9              18  2013-09-18   Wed             13242
 2013       9              19  2013-09-19   Thurs           13333
 2013       9              20  2013-09-20   Fri             13040
 2013       9              21  2013-09-21   Sat              8863
 2013       9              22  2013-09-22   Sun              7817
 2013       9              23  2013-09-23   Mon             12715
 2013       9              24  2013-09-24   Tues            13173
 2013       9              25  2013-09-25   Wed             13042
 2013       9              26  2013-09-26   Thurs           13044
 2013       9              27  2013-09-27   Fri             12774
 2013       9              28  2013-09-28   Sat              8704
 2013       9              29  2013-09-29   Sun              7618
 2013       9              30  2013-09-30   Mon             12115
 2013      10               1  2013-10-01   Tues            13195
 2013      10               2  2013-10-02   Wed             12614
 2013      10               3  2013-10-03   Thurs           12880
 2013      10               4  2013-10-04   Fri             12493
 2013      10               5  2013-10-05   Sat              8593
 2013      10               6  2013-10-06   Sun              7471
 2013      10               7  2013-10-07   Mon             11877
 2013      10               8  2013-10-08   Tues            12765
 2013      10               9  2013-10-09   Wed             12393
 2013      10              10  2013-10-10   Thurs           12804
 2013      10              11  2013-10-11   Fri             12192
 2013      10              12  2013-10-12   Sat              8223
 2013      10              13  2013-10-13   Sun              7172
 2013      10              14  2013-10-14   Mon             11736
 2013      10              15  2013-10-15   Tues            12582
 2013      10              16  2013-10-16   Wed             12227
 2013      10              17  2013-10-17   Thurs           12220
 2013      10              18  2013-10-18   Fri             12169
 2013      10              19  2013-10-19   Sat              7995
 2013      10              20  2013-10-20   Sun              7121
 2013      10              21  2013-10-21   Mon             11687
 2013      10              22  2013-10-22   Tues            12462
 2013      10              23  2013-10-23   Wed             12223
 2013      10              24  2013-10-24   Thurs           12320
 2013      10              25  2013-10-25   Fri             12210
 2013      10              26  2013-10-26   Sat              8077
 2013      10              27  2013-10-27   Sun              7139
 2013      10              28  2013-10-28   Mon             12199
 2013      10              29  2013-10-29   Tues            12519
 2013      10              30  2013-10-30   Wed             11752
 2013      10              31  2013-10-31   Thurs           10975
 2013      11               1  2013-11-01   Fri             12653
 2013      11               2  2013-11-02   Sat              8407
 2013      11               3  2013-11-03   Sun              7368
 2013      11               4  2013-11-04   Mon             12164
 2013      11               5  2013-11-05   Tues            12785
 2013      11               6  2013-11-06   Wed             12113
 2013      11               7  2013-11-07   Thurs           12566
 2013      11               8  2013-11-08   Fri             12026
 2013      11               9  2013-11-09   Sat              8092
 2013      11              10  2013-11-10   Sun              7258
 2013      11              11  2013-11-11   Mon             11418
 2013      11              12  2013-11-12   Tues            13669
 2013      11              13  2013-11-13   Wed             12130
 2013      11              14  2013-11-14   Thurs           12206
 2013      11              15  2013-11-15   Fri             12339
 2013      11              16  2013-11-16   Sat              8305
 2013      11              17  2013-11-17   Sun              7348
 2013      11              18  2013-11-18   Mon             12154
 2013      11              19  2013-11-19   Tues            12413
 2013      11              20  2013-11-20   Wed             12503
 2013      11              21  2013-11-21   Thurs           12499
 2013      11              22  2013-11-22   Fri             12459
 2013      11              23  2013-11-23   Sat              8239
 2013      11              24  2013-11-24   Sun              7362
 2013      11              25  2013-11-25   Mon             12658
 2013      11              26  2013-11-26   Tues            13211
 2013      11              27  2013-11-27   Wed             11782
 2013      11              28  2013-11-28   Thurs            7175
 2013      11              29  2013-11-29   Fri              9077
 2013      11              30  2013-11-30   Sat              7778
 2013      12               1  2013-12-01   Sun              7449
 2013      12               2  2013-12-02   Mon             12512
 2013      12               3  2013-12-03   Tues            13352
 2013      12               4  2013-12-04   Wed             12947
 2013      12               5  2013-12-05   Thurs           12437
 2013      12               6  2013-12-06   Fri             11861
 2013      12               7  2013-12-07   Sat              8068
 2013      12               8  2013-12-08   Sun              7226
 2013      12               9  2013-12-09   Mon             11824
 2013      12              10  2013-12-10   Tues            12597
 2013      12              11  2013-12-11   Wed             12413
 2013      12              12  2013-12-12   Thurs           12485
 2013      12              13  2013-12-13   Fri             11484
 2013      12              14  2013-12-14   Sat              8163
 2013      12              15  2013-12-15   Sun              7305
 2013      12              16  2013-12-16   Mon             12316
 2013      12              17  2013-12-17   Tues            13252
 2013      12              18  2013-12-18   Wed             13132
 2013      12              19  2013-12-19   Thurs           13320
 2013      12              20  2013-12-20   Fri             13248
 2013      12              21  2013-12-21   Sat              8836
 2013      12              22  2013-12-22   Sun              7535
 2013      12              23  2013-12-23   Mon             12140
 2013      12              24  2013-12-24   Tues             9194
 2013      12              25  2013-12-25   Wed              6620
 2013      12              26  2013-12-26   Thurs           11375
 2013      12              27  2013-12-27   Fri             13588
 2013      12              28  2013-12-28   Sat              9203
 2013      12              29  2013-12-29   Sun              7896
 2013      12              30  2013-12-30   Mon             13096
 2013      12              31  2013-12-31   Tues            12525
 2014       1               1  2014-01-01   Wed              8018
 2014       1               2  2014-01-02   Thurs           11171
 2014       1               3  2014-01-03   Fri             12317
 2014       1               4  2014-01-04   Sat              8199
 2014       1               5  2014-01-05   Sun              7174
 2014       1               6  2014-01-06   Mon             11400
 2014       1               7  2014-01-07   Tues            12310
 2014       1               8  2014-01-08   Wed             11829
 2014       1               9  2014-01-09   Thurs           11827
 2014       1              10  2014-01-10   Fri             11989
 2014       1              11  2014-01-11   Sat              8292
 2014       1              12  2014-01-12   Sun              7298
 2014       1              13  2014-01-13   Mon             11714
 2014       1              14  2014-01-14   Tues            12598
 2014       1              15  2014-01-15   Wed             11785
 2014       1              16  2014-01-16   Thurs           11822
 2014       1              17  2014-01-17   Fri             11932
 2014       1              18  2014-01-18   Sat              8143
 2014       1              19  2014-01-19   Sun              6924
 2014       1              20  2014-01-20   Mon             11024
 2014       1              21  2014-01-21   Tues            12177
 2014       1              22  2014-01-22   Wed             11936
 2014       1              23  2014-01-23   Thurs           12162
 2014       1              24  2014-01-24   Fri             11840
 2014       1              25  2014-01-25   Sat              8190
 2014       1              26  2014-01-26   Sun              7424
 2014       1              27  2014-01-27   Mon             11561
 2014       1              28  2014-01-28   Tues            12031
 2014       1              29  2014-01-29   Wed             11381
 2014       1              30  2014-01-30   Thurs           11651
 2014       1              31  2014-01-31   Fri             11843
 2014       2               1  2014-02-01   Sat              8206
 2014       2               2  2014-02-02   Sun              7265
 2014       2               3  2014-02-03   Mon             11825
 2014       2               4  2014-02-04   Tues            12519
 2014       2               5  2014-02-05   Wed             11914
 2014       2               6  2014-02-06   Thurs           11807
 2014       2               7  2014-02-07   Fri             12246
 2014       2               8  2014-02-08   Sat              8129
 2014       2               9  2014-02-09   Sun              7060
 2014       2              10  2014-02-10   Mon             11886
 2014       2              11  2014-02-11   Tues            12311
 2014       2              12  2014-02-12   Wed             12154
 2014       2              13  2014-02-13   Thurs           11384
 2014       2              14  2014-02-14   Fri             12494
 2014       2              15  2014-02-15   Sat              8391
 2014       2              16  2014-02-16   Sun              7259
 2014       2              17  2014-02-17   Mon             11144
 2014       2              18  2014-02-18   Tues            12331
 2014       2              19  2014-02-19   Wed             11932
 2014       2              20  2014-02-20   Thurs           12142
 2014       2              21  2014-02-21   Fri             11988
 2014       2              22  2014-02-22   Sat              8049
 2014       2              23  2014-02-23   Sun              7092
 2014       2              24  2014-02-24   Mon             11621
 2014       2              25  2014-02-25   Tues            12291
 2014       2              26  2014-02-26   Wed             11932
 2014       2              27  2014-02-27   Thurs           11856
 2014       2              28  2014-02-28   Fri             11671
 2014       3               1  2014-03-01   Sat              8186
 2014       3               2  2014-03-02   Sun              7267
 2014       3               3  2014-03-03   Mon             11793
 2014       3               4  2014-03-04   Tues            12065
 2014       3               5  2014-03-05   Wed             12129
 2014       3               6  2014-03-06   Thurs           12069
 2014       3               7  2014-03-07   Fri             12035
 2014       3               8  2014-03-08   Sat              8140
 2014       3               9  2014-03-09   Sun              6789
 2014       3              10  2014-03-10   Mon             11620
 2014       3              11  2014-03-11   Tues            12084
 2014       3              12  2014-03-12   Wed             11819
 2014       3              13  2014-03-13   Thurs           11623
 2014       3              14  2014-03-14   Fri             11841
 2014       3              15  2014-03-15   Sat              8080
 2014       3              16  2014-03-16   Sun              6973
 2014       3              17  2014-03-17   Mon             11936
 2014       3              18  2014-03-18   Tues            12231
 2014       3              19  2014-03-19   Wed             11953
 2014       3              20  2014-03-20   Thurs           12266
 2014       3              21  2014-03-21   Fri             11987
 2014       3              22  2014-03-22   Sat              8109
 2014       3              23  2014-03-23   Sun              7147
 2014       3              24  2014-03-24   Mon             11542
 2014       3              25  2014-03-25   Tues            12342
 2014       3              26  2014-03-26   Wed             11809
 2014       3              27  2014-03-27   Thurs           11823
 2014       3              28  2014-03-28   Fri             11730
 2014       3              29  2014-03-29   Sat              8153
 2014       3              30  2014-03-30   Sun              7215
 2014       3              31  2014-03-31   Mon             11511
 2014       4               1  2014-04-01   Tues            11710
 2014       4               2  2014-04-02   Wed             12003
 2014       4               3  2014-04-03   Thurs           11984
 2014       4               4  2014-04-04   Fri             12319
 2014       4               5  2014-04-05   Sat              7926
 2014       4               6  2014-04-06   Sun              7127
 2014       4               7  2014-04-07   Mon             11508
 2014       4               8  2014-04-08   Tues            12187
 2014       4               9  2014-04-09   Wed             11875
 2014       4              10  2014-04-10   Thurs           12026
 2014       4              11  2014-04-11   Fri             12018
 2014       4              12  2014-04-12   Sat              7980
 2014       4              13  2014-04-13   Sun              7181
 2014       4              14  2014-04-14   Mon             11912
 2014       4              15  2014-04-15   Tues            12274
 2014       4              16  2014-04-16   Wed             11858
 2014       4              17  2014-04-17   Thurs           12070
 2014       4              18  2014-04-18   Fri             11132
 2014       4              19  2014-04-19   Sat              7641
 2014       4              20  2014-04-20   Sun              6877
 2014       4              21  2014-04-21   Mon             11664
 2014       4              22  2014-04-22   Tues            12528
 2014       4              23  2014-04-23   Wed             12014
 2014       4              24  2014-04-24   Thurs           12178
 2014       4              25  2014-04-25   Fri             11811
 2014       4              26  2014-04-26   Sat              7949
 2014       4              27  2014-04-27   Sun              7184
 2014       4              28  2014-04-28   Mon             11681
 2014       4              29  2014-04-29   Tues            12121
 2014       4              30  2014-04-30   Wed             11591
 2014       5               1  2014-05-01   Thurs           12412
 2014       5               2  2014-05-02   Fri             12011
 2014       5               3  2014-05-03   Sat              8015
 2014       5               4  2014-05-04   Sun              7171
 2014       5               5  2014-05-05   Mon             11788
 2014       5               6  2014-05-06   Tues            12487
 2014       5               7  2014-05-07   Wed             12127
 2014       5               8  2014-05-08   Thurs           12166
 2014       5               9  2014-05-09   Fri             11949
 2014       5              10  2014-05-10   Sat              8100
 2014       5              11  2014-05-11   Sun              7145
 2014       5              12  2014-05-12   Mon             11671
 2014       5              13  2014-05-13   Tues            12057
 2014       5              14  2014-05-14   Wed             12234
 2014       5              15  2014-05-15   Thurs           12387
 2014       5              16  2014-05-16   Fri             12065
 2014       5              17  2014-05-17   Sat              8051
 2014       5              18  2014-05-18   Sun              7200
 2014       5              19  2014-05-19   Mon             11925
 2014       5              20  2014-05-20   Tues            12854
 2014       5              21  2014-05-21   Wed             12545
 2014       5              22  2014-05-22   Thurs           12634
 2014       5              23  2014-05-23   Fri             12631
 2014       5              24  2014-05-24   Sat              8456
 2014       5              25  2014-05-25   Sun              7393
 2014       5              26  2014-05-26   Mon              7657
 2014       5              27  2014-05-27   Tues            12490
 2014       5              28  2014-05-28   Wed             13411
 2014       5              29  2014-05-29   Thurs           12753
 2014       5              30  2014-05-30   Fri             12257
 2014       5              31  2014-05-31   Sat              8462
 2014       6               1  2014-06-01   Sun              7474
 2014       6               2  2014-06-02   Mon             11885
 2014       6               3  2014-06-03   Tues            12246
 2014       6               4  2014-06-04   Wed             12320
 2014       6               5  2014-06-05   Thurs           12256
 2014       6               6  2014-06-06   Fri             11965
 2014       6               7  2014-06-07   Sat              8164
 2014       6               8  2014-06-08   Sun              7359
 2014       6               9  2014-06-09   Mon             11886
 2014       6              10  2014-06-10   Tues            12513
 2014       6              11  2014-06-11   Wed             12090
 2014       6              12  2014-06-12   Thurs           12442
 2014       6              13  2014-06-13   Fri             11651
 2014       6              14  2014-06-14   Sat              8199
 2014       6              15  2014-06-15   Sun              7375
 2014       6              16  2014-06-16   Mon             12068
 2014       6              17  2014-06-17   Tues            12555
 2014       6              18  2014-06-18   Wed             12524
 2014       6              19  2014-06-19   Thurs           12217
 2014       6              20  2014-06-20   Fri             12532
 2014       6              21  2014-06-21   Sat              8299
 2014       6              22  2014-06-22   Sun              7414
 2014       6              23  2014-06-23   Mon             11939
 2014       6              24  2014-06-24   Tues            12704
 2014       6              25  2014-06-25   Wed             12499
 2014       6              26  2014-06-26   Thurs           12621
 2014       6              27  2014-06-27   Fri             12236
 2014       6              28  2014-06-28   Sat              8441
 2014       6              29  2014-06-29   Sun              7563
 2014       6              30  2014-06-30   Mon             12243
 2014       7               1  2014-07-01   Tues            13575
 2014       7               2  2014-07-02   Wed             13183
 2014       7               3  2014-07-03   Thurs           13043
 2014       7               4  2014-07-04   Fri              9278
 2014       7               5  2014-07-05   Sat              7778
 2014       7               6  2014-07-06   Sun              7568
 2014       7               7  2014-07-07   Mon             13038
 2014       7               8  2014-07-08   Tues            13500
 2014       7               9  2014-07-09   Wed             12577
 2014       7              10  2014-07-10   Thurs           13146
 2014       7              11  2014-07-11   Fri             12699
 2014       7              12  2014-07-12   Sat              8650
 2014       7              13  2014-07-13   Sun              7626
 2014       7              14  2014-07-14   Mon             12394
 2014       7              15  2014-07-15   Tues            13207
 2014       7              16  2014-07-16   Wed             12881
 2014       7              17  2014-07-17   Thurs           12817
 2014       7              18  2014-07-18   Fri             12439
 2014       7              19  2014-07-19   Sat              8720
 2014       7              20  2014-07-20   Sun              7567
 2014       7              21  2014-07-21   Mon             12497
 2014       7              22  2014-07-22   Tues            13239
 2014       7              23  2014-07-23   Wed             12692
 2014       7              24  2014-07-24   Thurs           12929
 2014       7              25  2014-07-25   Fri             12662
 2014       7              26  2014-07-26   Sat              8740
 2014       7              27  2014-07-27   Sun              7822
 2014       7              28  2014-07-28   Mon             12532
 2014       7              29  2014-07-29   Tues            13252
 2014       7              30  2014-07-30   Wed             12752
 2014       7              31  2014-07-31   Thurs           12673
 2014       8               1  2014-08-01   Fri             12782
 2014       8               2  2014-08-02   Sat              8814
 2014       8               3  2014-08-03   Sun              7679
 2014       8               4  2014-08-04   Mon             12511
 2014       8               5  2014-08-05   Tues            13415
 2014       8               6  2014-08-06   Wed             12900
 2014       8               7  2014-08-07   Thurs           13152
 2014       8               8  2014-08-08   Fri             12887
 2014       8               9  2014-08-09   Sat              8958
 2014       8              10  2014-08-10   Sun              7832
 2014       8              11  2014-08-11   Mon             12589
 2014       8              12  2014-08-12   Tues            13413
 2014       8              13  2014-08-13   Wed             12817
 2014       8              14  2014-08-14   Thurs           13031
 2014       8              15  2014-08-15   Fri             13048
 2014       8              16  2014-08-16   Sat              8885
 2014       8              17  2014-08-17   Sun              7783
 2014       8              18  2014-08-18   Mon             12582
 2014       8              19  2014-08-19   Tues            13198
 2014       8              20  2014-08-20   Wed             13167
 2014       8              21  2014-08-21   Thurs           13153
 2014       8              22  2014-08-22   Fri             12891
 2014       8              23  2014-08-23   Sat              8912
 2014       8              24  2014-08-24   Sun              7630
 2014       8              25  2014-08-25   Mon             12346
 2014       8              26  2014-08-26   Tues            13278
 2014       8              27  2014-08-27   Wed             13113
 2014       8              28  2014-08-28   Thurs           13418
 2014       8              29  2014-08-29   Fri             13099
 2014       8              30  2014-08-30   Sat              8899
 2014       8              31  2014-08-31   Sun              7884
 2014       9               1  2014-09-01   Mon              8043
 2014       9               2  2014-09-02   Tues            13071
 2014       9               3  2014-09-03   Wed             13863
 2014       9               4  2014-09-04   Thurs           13556
 2014       9               5  2014-09-05   Fri             13457
 2014       9               6  2014-09-06   Sat              8806
 2014       9               7  2014-09-07   Sun              7770
 2014       9               8  2014-09-08   Mon             12743
 2014       9               9  2014-09-09   Tues            13629
 2014       9              10  2014-09-10   Wed             13230
 2014       9              11  2014-09-11   Thurs           12104
 2014       9              12  2014-09-12   Fri             13415
 2014       9              13  2014-09-13   Sat              8903
 2014       9              14  2014-09-14   Sun              8109
 2014       9              15  2014-09-15   Mon             13018
 2014       9              16  2014-09-16   Tues            13661
 2014       9              17  2014-09-17   Wed             13341
 2014       9              18  2014-09-18   Thurs           13451
 2014       9              19  2014-09-19   Fri             13129
 2014       9              20  2014-09-20   Sat              9202
 2014       9              21  2014-09-21   Sun              8002
 2014       9              22  2014-09-22   Mon             12713
 2014       9              23  2014-09-23   Tues            13149
 2014       9              24  2014-09-24   Wed             13033
 2014       9              25  2014-09-25   Thurs           12908
 2014       9              26  2014-09-26   Fri             12478
 2014       9              27  2014-09-27   Sat              8797
 2014       9              28  2014-09-28   Sun              7639
 2014       9              29  2014-09-29   Mon             12318
 2014       9              30  2014-09-30   Tues            12959
 2014      10               1  2014-10-01   Wed             13082
 2014      10               2  2014-10-02   Thurs           12841
 2014      10               3  2014-10-03   Fri             12539
 2014      10               4  2014-10-04   Sat              8425
 2014      10               5  2014-10-05   Sun              7484
 2014      10               6  2014-10-06   Mon             11893
 2014      10               7  2014-10-07   Tues            12860
 2014      10               8  2014-10-08   Wed             12363
 2014      10               9  2014-10-09   Thurs           12130
 2014      10              10  2014-10-10   Fri             12155
 2014      10              11  2014-10-11   Sat              8262
 2014      10              12  2014-10-12   Sun              7283
 2014      10              13  2014-10-13   Mon             11241
 2014      10              14  2014-10-14   Tues            12658
 2014      10              15  2014-10-15   Wed             12405
 2014      10              16  2014-10-16   Thurs           12506
 2014      10              17  2014-10-17   Fri             12087
 2014      10              18  2014-10-18   Sat              8305
 2014      10              19  2014-10-19   Sun              7279
 2014      10              20  2014-10-20   Mon             11744
 2014      10              21  2014-10-21   Tues            12565
 2014      10              22  2014-10-22   Wed             12282
 2014      10              23  2014-10-23   Thurs           12162
 2014      10              24  2014-10-24   Fri             12119
 2014      10              25  2014-10-25   Sat              8256
 2014      10              26  2014-10-26   Sun              7576
 2014      10              27  2014-10-27   Mon             12007
 2014      10              28  2014-10-28   Tues            12831
 2014      10              29  2014-10-29   Wed             12102
 2014      10              30  2014-10-30   Thurs           12192
 2014      10              31  2014-10-31   Fri             10837
 2014      11               1  2014-11-01   Sat              8367
 2014      11               2  2014-11-02   Sun              7736
 2014      11               3  2014-11-03   Mon             12309
 2014      11               4  2014-11-04   Tues            12748
 2014      11               5  2014-11-05   Wed             12461
 2014      11               6  2014-11-06   Thurs           12489
 2014      11               7  2014-11-07   Fri             12422
 2014      11               8  2014-11-08   Sat              8268
 2014      11               9  2014-11-09   Sun              7479
 2014      11              10  2014-11-10   Mon             11898
 2014      11              11  2014-11-11   Tues            12794
 2014      11              12  2014-11-12   Wed             12244
 2014      11              13  2014-11-13   Thurs           12103
 2014      11              14  2014-11-14   Fri             12234
 2014      11              15  2014-11-15   Sat              8305
 2014      11              16  2014-11-16   Sun              7219
 2014      11              17  2014-11-17   Mon             11784
 2014      11              18  2014-11-18   Tues            12822
 2014      11              19  2014-11-19   Wed             12100
 2014      11              20  2014-11-20   Thurs           12541
 2014      11              21  2014-11-21   Fri             12638
 2014      11              22  2014-11-22   Sat              8647
 2014      11              23  2014-11-23   Sun              7497
 2014      11              24  2014-11-24   Mon             12791
 2014      11              25  2014-11-25   Tues            13349
 2014      11              26  2014-11-26   Wed             11747
 2014      11              27  2014-11-27   Thurs            7351
 2014      11              28  2014-11-28   Fri              9049
 2014      11              29  2014-11-29   Sat              8035
 2014      11              30  2014-11-30   Sun              7228
 2014      12               1  2014-12-01   Mon             12584
 2014      12               2  2014-12-02   Tues            13083
 2014      12               3  2014-12-03   Wed             12427
 2014      12               4  2014-12-04   Thurs           12384
 2014      12               5  2014-12-05   Fri             11964
 2014      12               6  2014-12-06   Sat              8280
 2014      12               7  2014-12-07   Sun              7196
 2014      12               8  2014-12-08   Mon             11773
 2014      12               9  2014-12-09   Tues            12419
 2014      12              10  2014-12-10   Wed             12203
 2014      12              11  2014-12-11   Thurs           12042
 2014      12              12  2014-12-12   Fri             12001
 2014      12              13  2014-12-13   Sat              8596
 2014      12              14  2014-12-14   Sun              7291
 2014      12              15  2014-12-15   Mon             12013
 2014      12              16  2014-12-16   Tues            12748
 2014      12              17  2014-12-17   Wed             12684
 2014      12              18  2014-12-18   Thurs           12816
 2014      12              19  2014-12-19   Fri             12714
 2014      12              20  2014-12-20   Sat              8465
 2014      12              21  2014-12-21   Sun              7382
 2014      12              22  2014-12-22   Mon             12799
 2014      12              23  2014-12-23   Tues            12604
 2014      12              24  2014-12-24   Wed              9308
 2014      12              25  2014-12-25   Thurs            6749
 2014      12              26  2014-12-26   Fri             10386
 2014      12              27  2014-12-27   Sat              8656
 2014      12              28  2014-12-28   Sun              7724
 2014      12              29  2014-12-29   Mon             12811
 2014      12              30  2014-12-30   Tues            13634
 2014      12              31  2014-12-31   Wed             11990

</div>

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package
- do births change over the week?
- does the weekly pattern of births change over the years?

**source.** `help(US_births_2000_2014)`

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package
- do births change over the week?

**source.** `help(US_births_2000_2014)`

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package


```r
ggplot(data = US_births_2000_2014, mapping = aes(x = day_of_week, y = births)) +
  geom_point()
```

![](visualize_files/figure-html/unnamed-chunk-22-1.png)<!-- -->

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package
- do births change over the week?
- does the weekly pattern of births change over the years?

**source.** `help(US_births_2000_2014)`

# exercise: play with the `US_births_2000_2014` dataset that comes with the `fivethirtyeight` package


```r
ggplot(data = US_births_2000_2014, mapping = aes(x = day_of_week, y = births)) +
  geom_point() +
  facet_wrap(facets = ~ year)
```

![](visualize_files/figure-html/unnamed-chunk-23-1.png)<!-- -->

# resources
- [**R for Data Science: Import, Tidy, Transform, Visualize, and Model Data**](http://r4ds.had.co.nz/). This guide is extremely useful in general, but see [**Chapter 3**](http://r4ds.had.co.nz/data-visualisation.html) for an introduction to data visualization.
- [**tidyverse: ggplot2.**](http://ggplot2.tidyverse.org/index.html) ggplot2 bible (also check out the rest of the tidyverse website)
- [**R Base Graphics: An Idiot's Guide.**](http://rpubs.com/SusanEJohnston/7953) if you want to plot with Base graphics like an R hipster (a hipstR ...) here's a jumping off point

