H <- c(7,12,28,3,41)
png(file = "barchart.png")
barplot(H)
dev.off()

fnames = dir("./", full.names=TRUE)

texte <- "Hé hé"
Encoding(texte)
