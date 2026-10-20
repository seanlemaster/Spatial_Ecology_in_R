# Copy paste the previous code (05_community_overlap)

# Plot the two densities of the tiger and the macaque one beside the other
par(mfrow=c(1,2))
densityPlot(tigertime)
densityPlot(macaquetime)

# Draw one density plot for each speies
for (i in species) {
  times <- kerinci$Timecirc[kerinci$Sps == i]
  densityPlot (times, main = i)
  }
