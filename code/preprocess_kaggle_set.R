# Write training data
library(readr)
library(dplyr)
img_train_data <- read_csv("../data/training.csv")
train_img_list <- lapply(img_train_data$Image, function(x){strsplit(x, " ") %>% unlist %>% as.integer})

img_train_data <- 
  img_train_data %>%
  select(-Image)

cols_to_keep <- c(1,2,3,4,12,22,29,30)
img_train_data <- 
  img_train_data[,cols_to_keep]
img_train_data$image <- train_img_list

write_rds(img_train_data, "../data/train_processed", compress = "gz")
