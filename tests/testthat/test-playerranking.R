library(dplyr)
library(tidyverse)
library(testthat)

#Toy dataset
my_data <- data.frame (Name  = c("Flora", "Mary", "Sarah", "Ester", "Sophie", "Maria"),
                       second_column = c(1, 4, 3, 5, 1, 6),
                        third_column  = c(7, 30, 12, 17, 34,8))

#Ranking players based on second column
my_df_test_1 <-rankingplayers(my_data, c('second_column'))

#Ranking players based on third column
my_df_test_2 <- rankingplayers(my_data, c('third_column'))

#toy dataset 1 to be compared
ranking_1 <- data.frame (Name  = c("Maria", "Ester", "Mary", "Sarah", "Flora", "Sophie"),
                         second_column = c(6, 5, 4, 3, 1, 1))
#toy dataset 2 to be compared
ranking_2 <- data.frame (Name  = c("Sophie", "Mary", "Ester", "Sarah", "Maria", "Flora"),
                         third_column = c(34, 30, 17, 12, 8, 7))

#check ranking
test_that("Checking that the columns are ranked properly", {
  expect_equal(my_df_test_1, ranking_1)
  expect_equal(my_df_test_2, ranking_2)
})

#Check return type
test_that("The function should return a dataframe", {
  expect_false(is.null(my_df_test_1))
  expect_false(is.null(my_df_test_2))
})

#check presence of column Name
test_that("The column 'Name' must be one of the column in the dataset", {
  expect_true("Name" %in% names(my_data))
})

