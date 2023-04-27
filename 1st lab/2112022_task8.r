#task8
lim = 4
par(mfrow=c(lim, lim))
for (i in 0:(lim*lim-1)) {
  plot(rnorm(10), type="s")
}