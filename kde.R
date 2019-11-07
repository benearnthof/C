# Kernel density estimation function based on: 
# http://www.biostat.jhsph.edu/%7Erpeng/docs/interface.pdf
# https://www.r-bloggers.com/spatial-data-analysis-with-inla/

# lets try the ksmooth example
ksmooth3 <- function(x, xpts, h) {
  n <- length(x)
  nxpts <- length(xpts)
  dens <- .C("kernel_smooth", as.double(x), as.integer(n),as.double(xpts),
             as.integer(nxpts), as.double(h),
             result = double(length(xpts)))
  dens[["result"]]
}