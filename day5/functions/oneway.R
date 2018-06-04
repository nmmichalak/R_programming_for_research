oneway <- function(dv, group, contrast, alpha = .05) {
  # -- arguments --
  # dv: vector of measurements (i.e., dependent variable)
  # group: vector that identifies which group the dv measurement came from
  # contrast: list of named contrasts
  # alpha: alpha level for 1 - alpha confidence level
  # -- output --
  # computes confidence interval and test statistic for a linear contrast of population means in a between-subjects design
  # returns a data.frame object
  # estimate (est), standard error (se), t-statistic (z), degrees of freedom (df), two-tailed p-value (p), and lower (lwr) and upper (upr) confidence limits at requested 1 - alpha confidence level
  # first line reports test statistics that assume variances are equal
  # second line reports test statistics that do not assume variances are equal
  
  # means, standard deviations, and sample sizes
  ms <- by(dv, group, mean, na.rm = TRUE)
  vars <- by(dv, group, var, na.rm = TRUE)
  ns <- by(dv, group, function(x) sum(!is.na(x)))
  
  # convert list of contrasts to a matrix of named contrasts by row
  contrast <- matrix(unlist(contrast), nrow = length(contrast), byrow = TRUE, dimnames = list(names(contrast), NULL))
  
  # contrast estimate
  est <- contrast %*% ms
  
  # welch test statistic
  se_welch <- sqrt(contrast^2 %*% (vars / ns))
  t_welch <- est / se_welch
  
  # classic test statistic
  mse <- anova(lm(dv ~ factor(group)))$"Mean Sq"[2]
  se_classic <- sqrt(mse * (contrast^2 %*% (1 / ns)))
  t_classic <- est / se_classic
  
  # if dimensions of contrast are NULL, nummer of contrasts = 1, if not, nummer of contrasts = dimensions of contrast
  num_contrast <- ifelse(is.null(dim(contrast)), 1, dim(contrast)[1])
  df_welch <- rep(0, num_contrast)
  df_classic <- rep(0, num_contrast)
  
  # makes rows of contrasts if contrast dimensions aren't NULL
  if(is.null(dim(contrast))) contrast <- t(as.matrix(contrast))
  
  # calculating degrees of freedom for welch and classic
  for(i in 1:num_contrast) {
    df_classic[i] <- sum(ns) - length(ns)
    df_welch[i] <- sum(contrast[i, ]^2 * vars / ns)^2 / sum((contrast[i, ]^2 * vars / ns)^2 / (ns - 1))
  }
  
  # p-values
  p_welch <- 2 * (1 - pt(abs(t_welch), df_welch))
  p_classic <- 2 * (1 - pt(abs(t_classic), df_classic))
  
  # 95% confidence intervals
  lwr_welch <- est - se_welch * qt(p = 1 - (alpha / 2), df = df_welch)
  upr_welch <- est + se_welch * qt(p = 1 - (alpha / 2), df = df_welch)
  lwr_classic <- est - se_classic * qt(p = 1 - (alpha / 2), df = df_classic)
  upr_classic <- est + se_classic * qt(p = 1 - (alpha / 2), df = df_classic)
  
  # output
  data.frame(contrast = rep(rownames(contrast), times = 2),
             equal_var = rep(c("Assumed", "Not Assumed"), each = num_contrast),
             est = rep(est, times = 2),
             se = c(se_classic, se_welch),
             t = c(t_classic, t_welch),
             df = c(df_classic, df_welch),
             p = c(p_classic, p_welch),
             lwr = c(lwr_classic, lwr_welch),
             upr = c(upr_classic, upr_welch))
}