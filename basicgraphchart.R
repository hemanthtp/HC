set.seed(331)

# Plot some points with lines
# Set up the plotting area
par(mar=c(3,3,2,2))
plot(NA, xlim=c(1,4), ylim=c(0,1))

# Plot solid circles with solid lines
points(1:4, runif(4), type="b", pch=19)
# Add open squares with dashed line, with heavier line width
points(1:4, runif(4), type="b", pch=0,  lty=2, lwd=3)

points(1:4, runif(4), type="b", pch=23,   # Diamond shape
       lty="dotted", cex=2,               # Dotted line, double-size shapes
       col="#000099", bg="#FF6666")       # blue line, red fill