fruits <- c("Apple", "Banana", "Orange")
price <- c(10,20,30)         


df<- data.frame(fruits,price)

# ############### .gz ###############
# gzFilePath <- "D:/data.gz";

# # write .gz files
# gzFile <- gzfile(gzFilePath, "w")
# write.csv(df, gzFile)
# close(gzFile)

# # read .gz files
# table <- read.csv(gzfile(gzFilePath))
# table



# ############### .bz2 ###############

# bzFilePath <- "D:/data.bz2";

# # write .bz2 files
# bzFile <- bzfile(bzFilePath, "w")
# write.csv(df, bzFile)
# close(bzFile)

# # read .bz2 files
# table <- read.csv(bzfile(bzFilePath))
# table

# ############# URLs ###############

# Load the "httr" package
library(httr)

# Read the file contents
content <- readLines("D:/test.txt")

# Upload the file to the URL
response <- POST("https://docs.google.com/document/d/17SksN2EG3ZSw1nZfspAgvRiyxL0MlMV6HnA1LTYxtWI/edit", body = list(file = content))

# Get the content of the response
content <- content(response, "text")

# View the response
print(content)


# ########## MX excel #########


# # Load the "openxlsx" package
# library(openxlsx)

# # Create a new workbook
# wb <- createWorkbook()

# # Add a worksheet to the workbook
# addWorksheet(wb, "My Worksheet")

# # Write some data to the worksheet
# writeData(wb, "My Worksheet", mtcars)

# # Save the workbook to a file
# saveWorkbook(wb, "file.xlsx", overwrite = TRUE)

# # Read the data from the Excel file
# data <- read.xlsx("file.xlsx")

# # View the data
# head(data)



# ############### Bin ###############

# Create some data
# data <- list(a = 1, b = 2, c = "three")

# # Serialize the data and write it to a file
# saveRDS(data, "font.bin")

# # Read the data from the file
# data <- readRDS("font.bin")

# # View the data
# print(data)

