dyn.load("doubler.so")
.C("double_me", x = as.integer(5))
# same story with the .Call interface of R
dyn.load("doubler2.so")
.Call("double_me2", as.integer(5))
# lets try to invoke C++
require(Rcpp)
sourceCpp("doubler3.cpp")
double_me3(5)

