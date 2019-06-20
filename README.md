# **R Programming for Research Workshop**
## Nick Michalak and Iris Wang
## University of Michigan LSA Department of Psychology

## **Required Texts**

> - Wickham, H., & Grolemund, G. (2017). [**R for Data Science: Import, Tidy, Transform, Visualize, and Model Data**](http://r4ds.had.co.nz/). Sebastopol, CA: O'Reilly Media, Inc.
> - [The tidyverse style guide](http://style.tidyverse.org/) by Hadley Wickham

## **Philosophy**

> - ReadCollegePDX (2015, October 19). **Hadley Wickham "Data Science with R"**. Retrieved from [https://youtu.be/K-ss\_ag2k9E?list=PLNtpLD4WiWbw9Cgcg6IU75u-44TrrN3A4](https://youtu.be/K-ss_ag2k9E?list=PLNtpLD4WiWbw9Cgcg6IU75u-44TrrN3A4)
> - Robinson, D. (2017, July 05). Teach the tidyverse to beginners. **Variance Explained.** Retreived from http://varianceexplained.org/r/teach-tidyverse/
> - Wickham, H. (2014). [Tidy data](http://vita.had.co.nz/papers/tidy-data.html). **Journal of Statistical Software, 59(10)**, 1-23.

## **Day 1. Installation and Introduction**

### Before Workshop

> - Skim [introduction](http://r4ds.had.co.nz/introduction.html) (Wickham & Grolemund)
> - Browse [tidyverse.org](http://tidyverse.org/)
> - Skim [Hadley Wickham "Data Science with R"](https://youtu.be/K-ss_ag2k9E?list=PLNtpLD4WiWbw9Cgcg6IU75u-44TrrN3A4) (ReedCollegePDX, 2016)
> - Find one or two datasets you know well and are OK with others seeing.
>     1. Preferably, find the raw (hasn't been "cleaned") data.
>     2. Make a new folder. give it a good name. repeat with subfolders. (Hint: Skim some data management best practices from the [Stanford Library](https://library.stanford.edu/research/data-management-services/data-best-practices) or the [Michigan Library](http://guides.lib.umich.edu/c.php?g=538509&amp;p=3686046) guide)
>     3. Put your raw data in there, somewhere.

### During Workshop

> - Introduction / philosophy
> - Installing (and uninstalling) R and R Studio
>     + Installing R ([Macintosh](https://stats.idre.ucla.edu/r/icu/installing-r-for-macintosh/) / [Windows](https://stats.idre.ucla.edu/r/icu/installing-r-for-windows/))
>     + Uninstalling R ([Macintosh](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Uninstalling-under-macOS) / [Windows](https://cran.r-project.org/doc/manuals/r-release/R-admin.html#Uninstallation))
>     + [Installing R Studio](https://www.rstudio.com/products/rstudio/download/)
>     + [Uninstalling R Studio](https://support.rstudio.com/hc/en-us/articles/200554736-How-To-Uninstall-RStudio-Desktop)
> - R environment
> - Running R code
> - Demonstrations
> - tidyverse
> - Exercises
> - Resources
> - Cheat Sheets
>     + [Base R Cheat Sheet](http://github.com/rstudio/cheatsheets/raw/master/source/pdfs/base-r.pdf)

## **Day 2. Visualization**

### Before Workshop

> - Skim [Data visualization](http://r4ds.had.co.nz/data-visualisation.html) and [Data import](http://r4ds.had.co.nz/data-import.html) (Wickham & Grolemund)
> - Skim [magrittr](http://magrittr.tidyverse.org/) and [ggplot2](http://ggplot2.tidyverse.org/)
> - Skim [Anscombe's quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet)
> - Skim Matejka, J., & Fitzmaurice, G. (2017, May). [Same stats, different graphs: Generating datasets with varied appearance and identical statistics through simulated annealing](https://www.autodeskresearch.com/publications/samestats). In **Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems** (pp. 1290-1294). ACM.
> - Skim Weissgerber, T. L., Milic, N. M., Winham, S. J., & Garovic, V. D. (2015). [Beyond bar and line graphs: time for a new data presentation paradigm](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002128). **PLoS biology, 13(4)**, e1002128.
> - Skim McCabe, C. J., Kim, D. S., & King, K. M. (2018). [Improving Present Practices in the Visual Display of Interactions](http://journals.sagepub.com/doi/full/10.1177/2515245917746792). *Advances in Methods and Practices in Psychological Science, 2515245917746792*.
>     + Play with their R Shiny web application that accompanies the paper: [interActive: A tool for the visual display of interactions](https://connorjmccabe.shinyapps.io/interactive/) 

### During Workshop

> - Introduction and Demonstration
>     + [Anscombe's quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet)
>     + Matejka, J., & Fitzmaurice, G. (2017, May). [Same stats, different graphs: Generating datasets with varied appearance and identical statistics through simulated annealing](https://www.autodeskresearch.com/publications/samestats). In **Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems** (pp. 1290-1294). ACM.
>     + Weissgerber, T. L., Milic, N. M., Winham, S. J., & Garovic, V. D. (2015). [Beyond bar and line graphs: time for a new data presentation paradigm](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002128). **PLoS biology, 13(4)**, e1002128.
> - ggplot2 and the grammar of graphics
> - Demonstrations
> - Exercises
> - Cheat Sheets
>     + [Data Visualization Cheat Sheet](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf)
>     + [Data Import Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/source/pdfs/data-import-cheatsheet.pdf)

## **Day 3. Workflow and Data Transformation**

### Before Workshop

> - Skim [Workflow: basics](http://r4ds.had.co.nz/workflow-basics.html), [Data transformation](http://r4ds.had.co.nz/transform.html), and [Tidy data](http://r4ds.had.co.nz/tidy-data.html) (Wickham & Grolemund)
> - Skim [Files](http://style.tidyverse.org/files.html) and [Syntax](http://style.tidyverse.org/syntax.html) from the tidyverse style guide (Wickham)

### During Workshop

> - Coding Basics
> - Naming
> - Calling Functions
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
> - Exercises in [wrangling](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf) your own data
> - Cheat Sheets
>     + [Data Transformation Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/source/pdfs/data-transformation-cheatsheet.pdf)

## **Day 4. Summarizing and Modeling**

### Before Workshop

> - your favorite regression or ANOVA text, or any tutorials at [https://designingexperiments.com/supplements/](https://designingexperiments.com/supplements/)
> - Skim `help("lm")`, `help("car")`, and `help("afex")`
> - Skim [An introduction to the psych package: Part I: data entry and data description](https://cran.r-project.org/web/packages/psych/vignettes/intro.pdf)
> - Skim [An introduction to the psych package: Part II Scale construction and psychometrics](https://cran.r-project.org/web/packages/psych/vignettes/overview.pdf)
> - Skim [lavaan: tutorial](http://lavaan.ugent.be/tutorial/index.html)
> - Judd, C. M., Westfall, J., & Kenny, D. A. (2017). [Experiments with more than one random factor: Designs, analytic models, and statistical power](http://jakewestfall.org/publications/JWK_AnnRev.pdf). *Annual Review of Psychology, 68*, 601-625.

### During Workshop

> - `describe()` and `describeBy()`
> - `t.test()`
> - `lm()` and `Anova()`
>     + [contrasts](https://people.ucsc.edu/~dgbonett/psyc204.html)
> - `corr.test()`
> - `pairs.panels()` and `cor.plot()`
> - `lmer()`
> - `sem()`
> - `fa.parallel()` and `fa()`

## **Day 5. Your Data**

### Before the Workshop

> Browse [RMarkdown from R Studio](https://rmarkdown.rstudio.com/lesson-1.html)
> Skim [Workflow: projects](http://r4ds.had.co.nz/workflow-projects.html)
> - find one or two datasets you know well and are OK with others seeing.
>     1. Preferably, find the raw (hasn't been "cleaned") data
>     2. Make a new folder. give it a good name. repeat with subfolders. (Hint: Skim some data management best practices from the [Stanford Library](https://library.stanford.edu/research/data-management-services/data-best-practices) or the [Michigan Library](http://guides.lib.umich.edu/c.php?g=538509&amp;p=3686046) guide)
>     3. Put your raw data in there, somewhere
> - Skim [The tidyverse style guide](http://style.tidyverse.org/) by Hadley Wickham

### During the Workshop

> - R Projects
> - R Markdown
> - Importing data
>     + `read_csv()`, `read_spss()`, and `read_stata()`
> - Writing code you and others can read 

## **R Resources**

### **Websites**

> - [**Quick-R**](http://www.statmethods.net/) a roadmap to the language and the code necessary to get started quickly (i.e. tutorials)
> - [**R Studio Cheat Sheets**](https://www.rstudio.com/resources/cheatsheets/) just like it reads, these are cheat sheets for "favorite" R packages and more (e.g. dplyr, ggplot2, base, R Markdown, regular expressions)
> - [**UCLA Institute for Digital Research and Education: R**](http://stats.idre.ucla.edu/r/) statistics and programming tutorials for R, among other helpful related resources
> - [**The Personality Project: Using R for psychological research**](https://www.personality-project.org/r/r.guide.html) seemingly endless tutorials and explainers about R programming for (personality-themed) psychology research; also, some tutorials cover the psych package, which is written by Michigan Psychology alumni, William Revelle (1973)
> - [**Richard Gonzalez's Advanced Statistical Methods Course Notes**](http://www-personal.umich.edu/~gonzo/coursenotes/) Nick's regression bible, complete with SPSS and R code for common procedures + detailed notes
> - [**Doug Bonett's Quantitative Data Analysis Course R Functions**](https://people.ucsc.edu/~dgbonett/docs/psyc204/204RFunctions.docx) includes functions for testing linear contrasts (standardized and unstandardized) that don't assume equal variances
> - [**tidyverse: ggplot2**](http://ggplot2.tidyverse.org/index.html) ggplot2 bible (also check out the rest of the tidyverse website)
> - [**lavaan: latent variable analysis**](http://lavaan.ugent.be/) overview and tutorials for the best sem package (IMO) in R (disclaimer: no support for discrete latent variables, aka mixture modeling, latent class analysis)
> - [**RExRepos: R code examples for a number of common data analysis tasks**](http://www.uni-kiel.de/psychologie/rexrepos/index.html) just like it reads, how-to guide for common procedures
> - [**R Base Graphics: An Idiot's Guide**](http://rpubs.com/SusanEJohnston/7953) if you want to plot with Base graphics like an R hipster?a hipstR, if you will?here's a jumping off point
> - [**{ swirl }: Learn R, in R**](http://swirlstats.com/) _"swirl teaches you R programming and data science interactively, at your own pace, and right in the R console!"_
> - [**A language, not a letter: Learning statistics in R**](http://ademos.people.uic.edu/index.html) _"This online collection of tutorials was created by graduate students in psychology as a resource for other experimental psychologists interested in using R for statistical analyses and graphics. Each chapter was created to provide an overview of how to code a particular topic in the R language."_
> - [**STAT 545 @ UBC: Data wrangling, exploration, and analysis with R**](http://stat545.com/index.html) _"Learn how to explore, groom, visualize, and analyze data and make all of that reproducible, reusable, and shareable using R"_
> - [**designingexperiments.com**](https://designingexperiments.com/) site accompanies Designing Experiments and Analyzing Data: A Model Comparison Perspective (3rd edition; Maxwell, Delaney, & Kelley, 2018). It's full of modeling examples for R, but it also includes some extremely useful website applications for power analyses for all sorts of common designs

### **Texts**

> - Beaujean, A. A. (2014). [**Latent variable modeling using R: A step-by-step guide**](https://blogs.baylor.edu/rlatentvariable/). New York, NY: Routledge.
> - Field, A., Miles., J., & Field, Z. (2012). [**Discovering statistics using R**](https://us.sagepub.com/en-us/nam/discovering-statistics-using-r/book236067%20#resources). London: SAGE Publications.
> - Gelman, A., & Hill, J. (2007). [**Data analysis using regression and multilevel/hierarchical models**](http://www.stat.columbia.edu/~gelman/arm/). New York, NY: Cambridge University Press.
> - Ismay, C. & Kim, A.Y. (2017). [**ModernDive: An Introduction to Statistical and Data Sciences via R.**](https://ismayc.github.io/moderndiver-book/)
> - Navarro, D. (2015). [**Learning Statistics with R**](https://health.adelaide.edu.au/psychology/ccs/teaching/lsr/). Raleigh, North Carolina: Lulu Press, Inc.
> - Maxwell, Delaney, & Kelley, (2018). [**Designing experiments and analyzing data: A model comparison perspective. (3rd ed.)**](https://www.routledge.com/Designing-Experiments-and-Analyzing-Data-A-Model-Comparison-Perspective/Maxwell-Delaney-Kelley/p/book/9781138892286). Routledge.
> - Wickham, H. (2015). [**Advanced R**](http://adv-r.had.co.nz/). Boca Raton, FL: CRC Press.
> - Wickham, H. (2016). [**ggplot2: Elegant graphics for data analysis**](http://ggplot2.org/book/). New York, NY: Springer.
> - Zuur, A. F., Ieno, E. N., Walker, N. J., Saveliev, A. A., & Smith, G. M. (2009). [**Mixed effects models and extensions in ecology with R**](https://www.amazon.com/Effects-Extensions-Ecology-Statistics-Biology/dp/0387874577). New York, NY: Springer.

## Acknowledgements

> - Iris and I couldn't have done this alone. We thank all of these thoughtful and helpful people:  
> Josh Wondra (he started this workshop in the Psychology Department last summer and helped us take it over this summer); Brian Wallace and everyone at Psychology Student Academic Affairs (they approved us!); Rich Gonzalez (especially his Psychology 613/614 course); Adrienne Beltz and Pam Davis-Kean and everyone who's a part of the Psychology Methods Hour; Instructional Support Services and Blue Corps at the University of Michigan; and, of course, the R community, especially Hadley Wickham and Garrett Grolemund (they wrote the book!).
