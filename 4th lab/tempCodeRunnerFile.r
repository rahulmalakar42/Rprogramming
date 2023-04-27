.bz2";

# write .bz2 files
bzFile <- bzfile(bzFilePath, "w")
write.csv(df, bzFile)
close(bzFile)

# read .bz2 files
table <- read.csv(bzfile(bzFilePath))
table