CImeanBS <- function(alpha, m, sd, n, c) {
  # Computes confidence interval and test statistic for a linear contrast
  # of population means in a between-subjects design
  # Arguments: 
  #   alpha: alpha level for 1-alpha confidence
  #   m:     vector of sample means
  #   sd:    vector of sample standard deviations
  #   n:     vector of sample sizes
  #   c:     vector of contrast coefficients
  # Returns:
  #   estimate, SE, df, t-value, p-value, lower limit, upper limit
  #   for both equal variance and unequal variance methods
  est <- t(c)%*%m 
  k <- length(m)
  df1 <- sum(n) - k
  v1 <- sum((n - 1)*sd^2)/df1
  se1 <- sqrt(v1*t(c)%*%solve(diag(n))%*%c)
  t1 <- est/se1
  p1 <- 2*(1 - pt(abs(t1),df1))
  tcrit1 <- qt(1 - alpha/2, df1)
  ll1 <- est - tcrit1*se1
  ul1 <- est + tcrit1*se1
  v2 <- diag(sd^2)%*%(solve(diag(n)))
  se2 <- sqrt(t(c)%*%v2%*%c)
  t2 <- est/se2
  df2 = (se2^4)/sum(((c^4)*(sd^4)/(n^2*(n - 1))))
  p2 <- 2*(1 - pt(abs(t2),df2))
  tcrit2 <- qt(1 - alpha/2, df2)
  ll2 <- est - tcrit2*se2
  ul2 <- est + tcrit2*se2
  out1 <- t(c(est, se1, t1, df1, p1, ll1, ul1))
  out2 <- t(c(est, se2, t2, df2, p2, ll2, ul2))
  out <- rbind(out1, out2)
  colnames(out) <- c("Estimate", "SE", "t", "df", "p-value", "LL", "UL")
  rownames(out) <- c("Equal Variances Assumed:", "Equal Variances Not Assumed:")
  return(out)
}
