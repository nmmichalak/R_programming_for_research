# source: https://people.ucsc.edu/~dgbonett/docs/psyc204/204RFunctions.docx

CIstdmeanBS <- function(alpha, m, sd, n, c) {
  # Computes confidence interval for a population standardized linear 
  # contrast of means in a between-subjects design
  # Arguments: 
  #   alpha: alpha level for 1-alpha confidence
  #   m:     vector of sample means
  #   sd:    vector of sample standard deviation
  #   n:     vector of sample sizes
  #   c:     vector of contrast coefficients
  # Returns:
  #   estimate, SE, lower limit, and upper limit for equal variance and
  #   unequal variance methods plus single group standardizer
  z <- qnorm(1 - alpha/2)
  v <- sd^2
  a <- length(m)
  s <- sqrt(sum(v)/a)
  df <- sum(n) - a
  sp <- sqrt(sum((n-1)*v)/df)
  est1 <- (t(c)%*%m)/s
  est2 <- (t(c)%*%m)/sp
  a1 <- est1^2/(a^2*s^4)
  a2 <- a1*sum((v^2/(2*(n - 1))))
  a3 <- sum((c^2*v/(n - 1)))/s^2
  se1 <- sqrt(a2 + a3)
  ll1 <- est1 - z*se1
  ul1 <- est1 + z*se1
  a1 <- est2^2/a^2
  a2 <- a1*sum(1/(2*(n - 1)))
  a3 <- sum(c^2/n)
  se2 <- sqrt(a2 + a3)
  ll2 <- est2 - z*se2
  ul2 <- est2 + z*se2
  out1 <- t(c(est1, se1, ll1, ul1))
  out2 <- t(c(est2, se2, ll2, ul2))
  out <- rbind(out1, out2)
  colnames(out) <- c("Estimate", "SE", "LL", "UL")
  rownames(out) <- c("Equal Variances Not Assumed", "Equal Variances Assumed:")
  return(out)
}