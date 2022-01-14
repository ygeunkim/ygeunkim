if (requireNamespace("multiwave", quietly = TRUE)) {
  library(multiwave)
}
# Generate function - n * p LRD data
generate_lrd <- function(n = 200, p = 20, cov_matrix = S1, burn = 2000) {
  # LRD parameters-----------------------------------
  d <- runif(p, .1, .45)
  d <- floor(100 * d) / 100
  fivarma(
    N = n, d = d, cov_matrix = solve(cov_matrix),
    VAR = NULL, VMA = NULL,
    skip = burn
  )$x
}
