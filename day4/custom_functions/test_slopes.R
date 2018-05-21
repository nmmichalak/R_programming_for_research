# simple slopes function
test_slopes <- function(y, x, z, sd_values = seq(-3, 3, 0.5), mean_center = TRUE, alpha = .05) {
  
  # Computes confidence intervals and test statistics at given moderator values (defaults to -3 SD to 3 SD)
  # Arguments: 
  #   y:           continuous outcome variable
  #   x:           continuous predictor variable
  #   z:           moderator variable (can be continuous or categorical but MUST be numeric or integer)
  #   sd_values:   standard deviation multipliers of z for testing slopes
  #   mean_center: center x and y around the their means (default set to TRUE)
  #   alpha:       alpha level for 1-alpha confidence
  # Returns:
  #   some data descriptives and table of values for each of three tests: sd values for z, estimates, standard errors, t-statistics, p-values, and lower and upper confidence intervals
  
  if(mean_center == TRUE) {
    x <- x - mean(x, na.rm = TRUE)
    z <- z - mean(z, na.rm = TRUE)
  }
  
  # matrix of descriptives
  descriptives <- sapply(list(y = y, x = x, z = z), function(v) {
    round(c(N = sum(is.na(v) == FALSE),
            Mean = mean(v, na.rm = TRUE),
            SD = sd(v, na.rm = TRUE),
            Median = median(v, na.rm = TRUE),
            Min = min(v, na.rm = TRUE),
            Max = max(v, na.rm = TRUE)), digits = 3)
  })
  
  # fit model
  model <- lm(y ~ x * z)
  
  # mean of z
  z_mean <- mean(z, na.rm = TRUE)
  
  # sd of z
  z_sd <- sd(z, na.rm = TRUE)
  
  # model covariance matrix
  model_vcov <- vcov(model)
  
  est <- list()
  se <- list()
  for(i in 1:length(sd_values)) {
    
    est[[i]] <- coefficients(model)["x"] + coefficients(model)["x:z"] * (z_mean + sd_values[i] * z_sd)
    se[[i]] <- sqrt(model_vcov["x", "x"] + 2 * (z_mean + sd_values[i] * z_sd) * model_vcov["x", "x:z"] + (z_mean + sd_values[i] * z_sd) * (z_mean + sd_values[i] * z_sd) * model_vcov["x:z", "x:z"])
    
  }
  
  # result table: estimates and standard errors
  result <- data.frame(z_sd = sd_values * descriptives[3, 3],
                       est = unlist(est),
                       se = unlist(se))
  
  # t-statistics
  result$t_val <- with(data = result, est / se)
  
  # p-values
  result$p_val <- with(data = result, 2 * pt(q = -abs(t_val), df = model$df.residual))
  
  # t-critical
  t_crit <- qt(p = 1 - alpha / 2, df = model$df.residual)
  
  # lower confidence intervals
  result$lwr_ci <- with(data = result, est - t_crit * se)
  
  # upper confidence intervals
  result$upr_ci <- with(data = result, est + t_crit * se)
  
  # round all values to 3 digits (except p-values, which should be exact)
  result[, !colnames(result) %in% "p_val"] <- data.frame(apply(result[, !colnames(result) %in% "p_val"], 2, function(i) round(i, 3)))
  
  print(paste0("Descriptives"))
  print(descriptives)
  return(result)
}