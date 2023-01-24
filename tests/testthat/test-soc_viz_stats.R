library(tidyverse)
library(cowplot)
# toy dataset
small_data <- data.frame(age = - c(18, 20, 20, 25, 25, 24, 25, 30, 33, 32, 44, 30, 17),
                         Wages_Euros = c(300000, 575000,	150000,	475000,375000,	225000,	225000, 200000,	225000,	250000,	250000,	375000,	200000))
# toy plots
hist <- soc_viz_stats('age', 'Wages_Euros', FALSE , small_data)
scatter <- soc_viz_stats('age', 'Wages_Euros', T , small_data)

#check histograms
test_that("the function returns null, check again", {
  expect_false(is.null(hist))
})
test_that("Make sure you are using the correct geoms for combining two plots", {
  expect_true("GeomDrawGrob" %in% c(class(hist$layers[[1]]$geom)))
})
#check scatter plots
test_that("Make sure you are using the correct geoms", {
  expect_true("GeomRect" %in% c(class(scatter$layers[[1]]$geom)))
})
test_that("The wrong dataframe column is used for your chart's y channel", {
  expect_true("Wages_Euros" == rlang::get_expr(c(scatter$layers[[1]]$mapping, scatter$mapping)$y))
})
test_that("The wrong dataframe column is used for your chart's x channel", {
  expect_true("age" == rlang::get_expr(c(scatter$layers[[1]]$mapping, scatter$mapping)$x))
})

