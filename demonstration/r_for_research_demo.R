# packages I want to use in this analysis
want_packages <- c("tidyverse", "psych", "haven", "lavaan", "lme4", "lmerTest", "afex", "compute.es")

# packages I have
have_packages <- want_packages %in% rownames(installed.packages())

# install those I don"t have
if(any(!have_packages))
  install.packages(want_packages[!have_packages])

lapply(want_packages, library, character.only = TRUE)

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

# descriptives
my_data %>%
  psych::describe(.)

# correlation matrix
my_data %>%
  select(-id) %>%
  pairs.panels(pch = ".")

# histograms
my_data %>%
  gather(variable, value, -id) %>%
  ggplot() +
  geom_histogram(aes(x = value)) +
  facet_wrap(~ variable, nrow = 3)

# boxplots
my_data %>%
  gather(variable, value, -id) %>%
  ggplot(aes(x = variable, y = value)) +
  geom_boxplot()

# scatterplots
my_data %>%
  ggplot(aes(x = x, y = z)) +
  geom_point() +
  geom_smooth(method = "lm")

my_data %>%
  ggplot(aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm")

my_data %>%
  ggplot(aes(x = z, y = y)) +
  geom_point() +
  geom_smooth(method = "lm")

# correlation tests
my_data %>%
  select(-id) %>%
  corr.test() %>%
  print(short = FALSE)

# t-tests
t.test(x, y)
t.test(x, z)
t.test(z, y)

# classic anova
my_data %>%
  gather(variable, value, -id) %>%
  mutate(id = 1:300) %>%
  aov_car(formula = value ~ variable + Error(id), data = .) %>%
  summary(.)

# folow up contrasts
my_data %>%
  gather(variable, value, -id) %>%
  mutate(id = 1:300) %>%
  aov_car(formula = value ~ variable + Error(id), data = .) %>%
  lsmeans::lsmeans(specs = "variable") %>%
  contrast(list(xy = c(-1, 1, 0),
                xz = c(-1, 0, 1),
                yz = c(0, -1, 1))) %>%
  confint(.)

# effect sizes
mes(m.1 = mean(x),
    m.2 = mean(y),
    sd.1 = sd(x),
    sd.2 = sd(y),
    n.1 = length(x),
    n.2 = length(y),
    level = .95,
    verbose = TRUE)

# repeated measures anova
my_data %>%
  gather(variable, value, -id) %>%
  aov_car(formula = value ~ variable + Error(id/variable), data = .) %>%
  summary(.)

# follow-up contrasts
my_data %>%
  gather(variable, value, -id) %>%
  aov_car(formula = value ~ variable + Error(id/variable), data = .) %>%
  lsmeans::lsmeans(specs = "variable") %>%
  contrast(list(xy = c(-1, 1, 0),
                xz = c(-1, 0, 1),
                yz = c(0, -1, 1))) %>%
  confint(.)
  

# mediation
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

# parameter estimates with boostraped CIs
my_mediaition %>%
  sem(data = my_data,
      se = "bootstrap",
      bootstrap = 1000) %>%
  parameterEstimates(boot.ci.type = "bca.simple")

# linear mixed effects model
my_data %>%
  gather(variable, value, -id) %>%
  lmer(formula = value ~ variable + (1 | variable), data = .) %>%
  summary(.)

