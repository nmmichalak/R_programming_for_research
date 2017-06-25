# source custom function
source(file = "custom_functions/install_needed_pkgs.R")

# install needed packages
needed_packages <- c("tidyverse")
install_needed_pkgs(needed_packages = needed_packages)

# enter data
snakes_therapy <- tibble(id = 1:48,
                         therapy = rep(c("Desensitization","Implosion","Insight"), each = 16),
                         severity = rep(c("Mild","Severe"), each = 8, times = 3),
                         phobia = c(16, 13, 12, 15, 11, 12, 14, 13,
                                    16, 10, 11, 12, 6, 8, 14, 12,
                                    14, 16, 17, 15, 13, 17, 15, 16,
                                    13, 7, 3, 10, 4, 2, 4, 9,
                                    15, 15, 12, 14, 13, 11, 11, 12,
                                    15, 10, 11, 7, 5, 12, 6, 8))

# summary descriptives "tibble" dataframe (for easy plotting)
(snk_thrpy_desc <- snakes_therapy %>%
  group_by(therapy, severity) %>%
  summarise(n_cell = n(),
            mean_phobia = mean(phobia, na.rm = TRUE),
            sd_phobia = sd(phobia, na.rm = TRUE),
            se_phobia = sd_phobia / sqrt(n_cell),
            t_crit = qt(p = 1 - .05 / 2, df = n_cell - 1),
            moe_phobia = se_phobia * t_crit))
