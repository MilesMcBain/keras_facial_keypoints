# preprocess miles face
library(magick)
miles_face <-
  image_read("../data/miles_face.jpg")

miles_face_processed <-
  miles_face %>%
  image_scale(96) %>%
  image_convert(colorspace = "gray")

miles_face_processed %>%
  image_write("../data/miles_face_processed.jpg")

miles_face_processed %>%
  as.raster() %>%
  unlist() %>%
  vapply(FUN = function(x){strtoi(substring(x, 1))}, X = ., FUN.VALUE = integer(1) )
  strtoi("4b4b4b", base = 16L)




