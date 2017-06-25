# source custom function
source(file = "custom_functions/install_needed_pkgs.R")

# install needed packages
needed_packages <- c("tidyverse", "readxl", "stringr")
install_needed_pkgs(needed_packages = needed_packages)

# read and save data from supplementary xlsx
(tybur_et_al_sO1 <- "example_tidy_data/tybur_et_al_data/pnas.1607398113.sd01.xlsx" %>%
    read_xlsx() %>%
    mutate(sex = factor(sex,
                        levels = c(1, 2),
                        labels = c("Man", "Woman"))) %>%
    set_names(colnames(.) %>%
                str_to_lower(.)))

# nation codes from Tybur email
(tybur_et_al_nation_codes <- "example_tidy_data/tybur_et_al_data/pnas.1607398113.sd01_nation_codes.xlsx" %>%
    read_xlsx() %>%
    mutate(country = factor(country,
                            levels = unique(country),
                            labels = unique(country))))

# join
(tybur_et_al_sO1 <- tybur_et_al_sO1 %>%
    full_join(tybur_et_al_nation_codes, by = "nation"))

# remember contrasts
contrasts(tybur_et_al_sO1$country) <- contr.sum(30)
contrasts(tybur_et_al_sO1$country)
contrasts(tybur_et_al_sO1$sex) <- contr.sum(2)
contrasts(tybur_et_al_sO1$sex)

# regress traditionalim onto country, controlling for age and sex
# extract adjusted country means
# join with original dataset
# rescale historical pathogen prevalence so 0 is smallest value
(tybur_et_al_fig1 <- tybur_et_al_sO1 %>%
    lm(traditionalim ~ country + age + sex, data = .) %>%
    lsmeans::lsmeans(specs = "country") %>%
    summary(.) %>%
    full_join(tybur_et_al_sO1 %>%
                select(country, histpath), by = "country") %>%
    group_by(country, histpath) %>%
    summarise(traditionalism = mean(lsmean)) %>%
    mutate(hist_path_rscld = histpath + 1.31))
