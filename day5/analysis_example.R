# analysis template

# packages
library(tidyverse)
library(haven)
library(psych)
library(car)
library(heplots)

# custom functions for ANOVA
source("~/Desktop/analyses_template/functions/oneway.R")

# psych and dplyr have the same function called recode
recode <- dplyr::recode

# read data
mydata <- "~/Desktop/analyses_template/data/hsb2.sav" %>% read_sav()

# add value labels
mydata <- mydata %>%
  mutate(gender = FEMALE %>% parse_number() %>% recode(`0` = "Male", `1` = "Female"),
         race = RACE %>% parse_number() %>% recode(`1` = "Hispanic", `2` = "Asian", `3` = "African-American", `4` = "White"),
         ses = SES %>% parse_number() %>% recode_factor(`1` = "Low", `2` = "Middle", `3` = "High"),
         schooltype = SCHTYP %>% parse_number() %>% recode(`1` = "Public", `2` = "Private"),
         program = PROG %>% parse_number() %>% recode(`1` = "General", `2` = "Academic", `3` = "Vocation"))

# boxplots by gender
mydata %>% 
  select(gender, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  gather(key = measure, value = score, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  ggplot(mapping = aes(x = gender, y = score)) +
  geom_boxplot() +
  facet_wrap(facets = ~ measure)

# descriptives by gender
mydata %>% 
  select(READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  describeBy(group = mydata$gender)

# boxplots by race
mydata %>% 
  select(race, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  gather(key = measure, value = score, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  ggplot(mapping = aes(x = race, y = score)) +
  geom_boxplot() +
  facet_wrap(facets = ~ measure)

# descriptives by race
mydata %>% 
  select(READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  describeBy(group = mydata$race)

# boxplots by ses
mydata %>% 
  select(ses, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  gather(key = measure, value = score, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  ggplot(mapping = aes(x = ses, y = score)) +
  geom_boxplot() +
  facet_wrap(facets = ~ measure)

# descriptives by ses
mydata %>% 
  select(READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  describeBy(group = mydata$ses)

# boxplots by school type
mydata %>% 
  select(schooltype, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  gather(key = measure, value = score, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  ggplot(mapping = aes(x = schooltype, y = score)) +
  geom_boxplot() +
  facet_wrap(facets = ~ measure)

# descriptives by school type
mydata %>% 
  select(READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  describeBy(group = mydata$schooltype)

# boxplots by program
mydata %>% 
  select(program, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  gather(key = measure, value = score, READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  ggplot(mapping = aes(x = program, y = score)) +
  geom_boxplot() +
  facet_wrap(facets = ~ measure)

# descriptives by program
mydata %>% 
  select(READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  describeBy(group = mydata$program)

# scatterplots, correlations, and histograms
mydata %>% 
  select(READ, WRITE, MATH, SCIENCE, SOCST) %>% 
  pairs.panels()

# t-test
t.test(MATH ~ gender, data = mydata)

# correlation tests
mydata %>% select(READ, WRITE, MATH, SCIENCE, SOCST) %>% corr.test() %>% print(short = FALSE)

# single correlation test
cor.test(~ READ + MATH, data = mydata)

# ANOVA contrast: Academic versus General
with(mydata, oneway(dv = READ, group = program, contrast = c(-1, 1, 0), alpha = 0.05))

# ANOVA contrast: Academic versus Vocation
with(mydata, oneway(dv = READ, group = program, contrast = c(-1, 0, 1), alpha = 0.05))

# ANOVA contrast: General versus Vocation
with(mydata, oneway(dv = READ, group = program, contrast = c(0, -1, 1), alpha = 0.05))

# 3 x 3 boxplots
mydata %>% 
  ggplot(mapping = aes(x = ses, y = SOCST, fill = program)) +
  geom_boxplot()

# plot 3 x 3 means and 95% confidence intervals
mydata %>% 
  ggplot(mapping = aes(x = ses, y = SOCST, fill = program)) +
  stat_summary(geom = "bar", fun.data = mean_cl_normal, position = position_dodge(0.9)) +
  stat_summary(geom = "errorbar", fun.data = mean_cl_normal, position = position_dodge(0.9), width = 0.1)

# 2 x 3 ANOVA
# create contrasts first
mydata <- mydata %>% mutate(lowhigh = ses %>% recode("Low" = -0.5, "Middle" = 0, "High" = 0.5),
                            lomidVhi = ses %>% recode("Low" = -0.5, "Middle" = -0.5, "High" = 1),
                            acadgenrl = program %>% recode("Academic" = -0.5, "General" = 0.5, "Vocation" = 0),
                            vocVacgen = program %>% recode("Academic" = -0.5, "General" = -0.5, "Vocation" = 1))

# look at them; make sure you can interpret comparisons
mydata %>% count(ses, lowhigh, lomidVhi)
mydata %>% count(program, acadgenrl, vocVacgen)

# fit regression (same results as ANOVA)
lm01 <- lm(SOCST ~ (lowhigh + lomidVhi) * (acadgenrl + vocVacgen), data = mydata)

# print results (specific contrasts)
summary(lm01)

# print ANOVA
Anova(lm01, type = "3")

# eta-squared and partial eta-squared
etasq(lm01, partial = FALSE)
etasq(lm01, partial = TRUE)

# create grouping code
mydata <- mydata %>% mutate(ses_prog = interaction(ses, program, sep = " x "))

# check out the order of the groups
mydata %>% count(ses_prog)

# ANOVA contrast: SES linear effect
with(mydata, oneway(dv = SOCST, group = ses_prog, contrast = c(-1, 0, 1, -1, 0, 1, -1, 0, 1), alpha = 0.05))

# ANOVA contrast: SES quadratic effect
with(mydata, oneway(dv = SOCST, group = ses_prog, contrast = c(1, -2, 1, 1, -2, 1, 1, -2, 1), alpha = 0.05))

# ANOVA contrast: Academic vs. General
with(mydata, oneway(dv = SOCST, group = ses_prog, contrast = c(-1, -1, -1, 1, 1, 1, 0, 0, 0), alpha = 0.05))

# ANOVA contrast: Vocation vs. Academic + General
with(mydata, oneway(dv = SOCST, group = ses_prog, contrast = c(-1, -1, -1, -1, -1, -1, 2, 2, 2), alpha = 0.05))

# ANOVA contrast: Academic vs. Vocation within Low SES (i.e., simple effect)
with(mydata, oneway(dv = SOCST, group = ses_prog, contrast = c(-1, 0, 0, 0, 0, 0, 1, 0, 0), alpha = 0.05))
