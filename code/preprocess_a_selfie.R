library(googledrive)
library(readr)
library(magick)

miles_face <-
  drive_download(
    file = as_id("https://drive.google.com/open?id=0B7688WPR38x2VVhSTk5CaE9hMXM"),
    path = "../data/miles_face.jpg",
    overwrite = TRUE)


mm_face <- image_read("../data/miles_face.jpg")

mm_grey <-
  mm_face %>%
  image_scale(96) %>%
  image_convert(colorspace = "gray")

# Test we have what we need using `[[`:
image(mm_grey[[1]][2,,] %>% as.numeric() %>% matrix(96,96),
      col = gray.colors(256))

# Save image vector
mm_array <- mm_grey[[1]][1,,] %>% as.numeric()
write_rds(mm_array, path = "../data/mm_face_vector.rds")

