# **R programming for research workshop**
## Nick Michalak and Iris Wang
## University of Michigan LSA Department of Psychology

## **required texts**

> - Wickham, H., &amp; Grolemund, G. (2017). [_R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_](http://r4ds.had.co.nz/). Sebastopol, CA: O&#39;Reilly Media, Inc.
> - [The tidyverse style guide](http://style.tidyverse.org/) by Hadley Wickham

## **philosophy**

> - ReadCollegePDX (2015, October 19). _Hadley Wickham &quot;Data Science with R&quot;_. Retrieved from [https://youtu.be/K-ss\_ag2k9E?list=PLNtpLD4WiWbw9Cgcg6IU75u-44TrrN3A4](https://youtu.be/K-ss_ag2k9E?list=PLNtpLD4WiWbw9Cgcg6IU75u-44TrrN3A4)
> - Robinson, D. (2017, July 05). Teach the tidyverse to beginners. _Variance Explained._ Retreived from http://varianceexplained.org/r/teach-tidyverse/
> - Wickham, H. (2014). [Tidy data](http://vita.had.co.nz/papers/tidy-data.html). _Journal of Statistical Software, 59(10)_, 1-23.

## **day 1. installation and introduction**

### before workshop

> - skim [introduction](http://r4ds.had.co.nz/introduction.html) (Wickham &amp; Grolemund)
> - browse [tidyverse.org](http://tidyverse.org/)
> - skim [Hadley Wickham &quot;Data Science with R&quot;](https://youtu.be/K-ss_ag2k9E?list=PLNtpLD4WiWbw9Cgcg6IU75u-44TrrN3A4) (ReedCollegePDX, 2016)
> - find one or two datasets you know well and are OK with others seeing.
>     1. preferably, find the raw (hasn&#39;t been &quot;cleaned&quot;) data
>     2. make a new folder. give it a good name. repeat with subfolders. (hint: skim some data management best practices from the [Stanford Library](https://library.stanford.edu/research/data-management-services/data-best-practices) or the [Michigan Library](http://guides.lib.umich.edu/c.php?g=538509&amp;p=3686046) guide)
>     3. put your raw data in there, somewhere

### during workshop

> - introduction / philosophy
> - installing (and uninstalling) R and R Studio
>     + installing R ([Macintosh](https://stats.idre.ucla.edu/r/icu/installing-r-for-macintosh/) / [Windows](https://stats.idre.ucla.edu/r/icu/installing-r-for-windows/))
>     + uninstalling R ([Macintosh](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Uninstalling-under-macOS) / [Windows](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Uninstallation))
>     + [installing R Studio](https://www.rstudio.com/products/rstudio/download/)
>     + [uninstalling R Studio](https://support.rstudio.com/hc/en-us/articles/200554736-How-To-Uninstall-RStudio-Desktop)
> - R environment
> - running R code
> - demonstrations
> - tidyverse
> - exercises
> - resources
> - cheat sheets
>     + [Base R cheat sheet](http://github.com/rstudio/cheatsheets/raw/master/source/pdfs/base-r.pdf)

## **day 2. visualization**

### before workshop

> - skim [Data visualization](http://r4ds.had.co.nz/data-visualisation.html) and [Data import](http://r4ds.had.co.nz/data-import.html) (Wickham &amp; Grolemund)
> - skim [magrittr](http://magrittr.tidyverse.org/) and [ggplot2](http://ggplot2.tidyverse.org/)
> - skim [Anscombe&#39;s quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet)
> - skim Matejka, J., &amp; Fitzmaurice, G. (2017, May). [Same stats, different graphs: Generating datasets with varied appearance and identical statistics through simulated annealing](https://www.autodeskresearch.com/publications/samestats). In _Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems_ (pp. 1290-1294). ACM.
> - skim Weissgerber, T. L., Milic, N. M., Winham, S. J., &amp; Garovic, V. D. (2015). [Beyond bar and line graphs: time for a new data presentation paradigm](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002128). _PLoS biology, 13(4)_, e1002128.
> - skim McCabe, C. J., Kim, D. S., & King, K. M. (2018). [Improving Present Practices in the Visual Display of Interactions](http://journals.sagepub.com/doi/full/10.1177/2515245917746792). *Advances in Methods and Practices in Psychological Science, 2515245917746792*.
>     + play with their R Shiny web application that accompanies the paper: [interActive: A tool for the visual display of interactions](https://connorjmccabe.shinyapps.io/interactive/) 

### during workshop

> - introduction and demonstration
>     + [Anscombe&#39;s quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet)
>     + Matejka, J., &amp; Fitzmaurice, G. (2017, May). [Same stats, different graphs: Generating datasets with varied appearance and identical statistics through simulated annealing](https://www.autodeskresearch.com/publications/samestats). In _Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems_ (pp. 1290-1294). ACM.
>     + Weissgerber, T. L., Milic, N. M., Winham, S. J., &amp; Garovic, V. D. (2015). [Beyond bar and line graphs: time for a new data presentation paradigm](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002128). _PLoS biology, 13(4)_, e1002128.
> - ggplot2 and the grammar of graphics
> - demonstrations
> - exercises
> - cheat sheets
>     + [Data visualization cheat sheet](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf)
>     + [Data import cheat sheet](https://github.com/rstudio/cheatsheets/raw/master/source/pdfs/data-import-cheatsheet.pdf)

## **day 3. workflow and data transformation**

### before workshop

> - skim [Workflow: basics](http://r4ds.had.co.nz/workflow-basics.html), [Data transformation](http://r4ds.had.co.nz/transform.html), and [Tidy data](http://r4ds.had.co.nz/tidy-data.html) (Wickham &amp; Grolemund)
> - skim [Files](http://style.tidyverse.org/files.html) and [Syntax](http://style.tidyverse.org/syntax.html) from the tidyverse style guide (Wickham)

### during workshop

> - coding basics
> - naming
> - calling functions
> - `rep()`
> - `filter()`
> - `arrange()`
> - `select()`
> - `mutate()`
> - `summarise()`
> - `gather()`
> - `spread()`
> - `full_join()`, `left_join()`, `right_join()`, `inner_join()`
> - `ifelse()`
> - exercises in [wrangling](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf) your own data
> - cheat sheets
>     + [Data transformation cheat sheet](https://github.com/rstudio/cheatsheets/raw/master/source/pdfs/data-transformation-cheatsheet.pdf)

## **day 4. summarizing and modeling**

### Before workshop

> - your favorite regression or ANOVA text, or any tutorials at [https://designingexperiments.com/supplements/](https://designingexperiments.com/supplements/)
> - skim `help("lm")`, `help("car")`, and `help("afex")`
> - skim [An introduction to the psych package: Part I: data entry and data description](https://cran.r-project.org/web/packages/psych/vignettes/intro.pdf)
> - skim [An introduction to the psych package: Part II Scale construction and psychometrics](https://cran.r-project.org/web/packages/psych/vignettes/overview.pdf)
> - skim [lavaan: tutorial](http://lavaan.ugent.be/tutorial/index.html)
> - Judd, C. M., Westfall, J., & Kenny, D. A. (2017). [Experiments with more than one random factor: Designs, analytic models, and statistical power](http://jakewestfall.org/publications/JWK_AnnRev.pdf). *Annual Review of Psychology, 68*, 601-625.

### during workshop

> - `describe()` and `describeBy()`
> - `t.test()`
> - `lm()` and `Anova()`
>     + [contrasts](https://people.ucsc.edu/~dgbonett/psyc204.html)
> - `cor.plot()` and `pairs.panels()`
> - `corr.test()`
> - `lmer()`
> - `sem()`
> - `fa.parallel()` and `fa()`

## **day 5. your data**

### during the workshop

> - R Projects
> - R Markdown
> - importing data
> - writing code you and others can read 

## **R resources**

### **websites**

> - [Quick-R](http://www.statmethods.net/) a roadmap to the language and the code necessary to get started quickly (i.e. tutorials)

> - [R Studio Cheat Sheets](https://www.rstudio.com/resources/cheatsheets/) just like it reads, these are cheat sheets for &quot;favorite&quot; R packages and more (e.g. dplyr, ggplot2, base, R Markdown, regular expressions)
> - [UCLA Institute for Digital Research and Education: R](http://stats.idre.ucla.edu/r/) statistics and programming tutorials for R, among other helpful related resources
> - [The Personality Project: Using R for psychological research](https://www.personality-project.org/r/r.guide.html) seemingly endless tutorials and explainers about R programming for (personality-themed) psychology research; also, some tutorials cover the psych package, which is written by Michigan Psychology alumni, William Revelle (1973)
> - [Richard Gonzalez Advanced Statistical Methods Course Notes](http://www-personal.umich.edu/~gonzo/coursenotes/) My regression bible, complete with SPSS and R code for common procedures + detailed notes
> - [tidyverse: ggplot2](http://ggplot2.tidyverse.org/index.html) ggplot2 bible (also check out the rest of the tidyverse website)
> - [lavaan: latent variable analysis](http://lavaan.ugent.be/) overview and tutorials for the best sem package (IMO) in R (disclaimer: no support for discrete latent variables, aka mixture modeling, latent class analysis)
> - [RExRepos: R code examples for a number of common data analysis tasks](http://www.uni-kiel.de/psychologie/rexrepos/index.html) just like it reads, how-to guide for common procedures
> - [R Base Graphics: An Idiot&#39;s Guide](http://rpubs.com/SusanEJohnston/7953) if you want to plot with Base graphics like an R hipster?a hipstR, if you will?here&#39;s a jumping off point
> - [{ swirl }: Learn R, in R](http://swirlstats.com/) _&quot;swirl teaches you R programming and data science interactively, at your own pace, and right in the R console!&quot;_
> - [A language, not a letter: Learning statistics in R](http://ademos.people.uic.edu/index.html) _&quot;This online collection of tutorials was created by graduate students in psychology as a resource for other experimental psychologists interested in using R for statistical analyses and graphics. Each chapter was created to provide an overview of how to code a particular topic in the R language.&quot;_
> - [STAT 545 @ UBC: Data wrangling, exploration, and analysis with R](http://stat545.com/index.html) _&quot;Learn how to explore, groom, visualize, and analyze data and make all of that reproducible, reusable, and shareable using R&quot;_

### **texts**

> - Beaujean, A. A. (2014). [_Latent variable modeling using R: A step-by-step guide_](https://blogs.baylor.edu/rlatentvariable/). New York, NY: Routledge.
> - Field, A., Miles., J., &amp; Field, Z. (2012). [_Discovering statistics using R_](https://us.sagepub.com/en-us/nam/discovering-statistics-using-r/book236067%20#resources). London: SAGE Publications.
> - Gelman, A., &amp; Hill, J. (2007). [_Data analysis using regression and multilevel/hierarchical models_](http://www.stat.columbia.edu/~gelman/arm/). New York, NY: Cambridge University Press.
> - Ismay, C. & Kim, A.Y. (2017). [ ModernDive: An Introduction to Statistical and Data Sciences via R. ](https://ismayc.github.io/moderndiver-book/)
> - Navarro, D. (2015). [_Learning Statistics with R_](https://health.adelaide.edu.au/psychology/ccs/teaching/lsr/). Raleigh, North Carolina: Lulu Press, Inc.
> - Wickham, H. (2015). [_Advanced R_](http://adv-r.had.co.nz/). Boca Raton, FL: CRC Press.
> - Wickham, H. (2016). [_ggplot2: Elegant graphics for data analysis_](http://ggplot2.org/book/). New York, NY: Springer.
> - Zuur, A. F., Ieno, E. N., Walker, N. J., Saveliev, A. A., &amp; Smith, G. M. (2009). [_Mixed effects models and extensions in ecology with R_](https://www.amazon.com/Effects-Extensions-Ecology-Statistics-Biology/dp/0387874577). New York, NY: Springer.

### **packages (Google these)**

> - psych
> - lavaan
> - tidyverse
>     + ggplot2
>     + tibble
>     + tidyr
>     + readr
>     + purrr
>     + dplyr
> - stringr
> - knitr
> - haven
> - table
> - broom
> - lme4
> - nlme
> - gmodels
> - gtools
> - googlesheets
> - multcomp
> - car
> - Hmisc
> - afex
> - data.table
> - officer

## acknowledgements

Iris and I couldn't have done this alone. We thank all of these thoughtful and helpful people:

Josh Wondra (he started this workshop in the Psychology Department last summer and helped us take it over this summer); Brian Wallace and everyone at Psychology Student Academic Affairs (they approved us!); Rich Gonzalez (especially his Psychology 613 / 614 course); Adrienne Beltz and Pam Davis-Kean and everyone who's a part of the Psychology Methods Hour; Instructional Support Services and Blue Corps at the University of Michigan; and, of course, the R community, especially Hadley Wickham and Garrett Grolemund (they wrote the book!).
