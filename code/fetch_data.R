# Fetch data from google drive
library(googledrive)
train_data <- drive_download(
  file = as_id("https://drive.google.com/file/d/0B7688WPR38x2U19FWVFHWGhuRkk/view?usp=sharing"),
  path = "../data/train.csv.zip" )

test_data <- drive_download(
  file = as_id("https://drive.google.com/open?id=0B7688WPR38x2QzZ1VHRtMmtabFE"),
  path = "../data/test.csv.zip" )

# Unzip
lapply(list.files("../data", full.names = TRUE), unzip)

# Fetch Miles test image:
my_face <- drive_download(
  file = as_id("https://drive.google.com/open?id=0B7688WPR38x2VVhSTk5CaE9hMXM"),
  path = "../data/miles_face.jpg",
  overwrite = TRUE
)
