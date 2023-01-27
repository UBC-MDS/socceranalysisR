library(tidyverse)


# toy dataset
small_df <- data.frame(Team=  c("A", "B", "B", "B", "C", "C") ,
                       Market_Value_Euros = c(375000,	225000,	225000, 200000,	225000,	250000),
                       age = c(18, 20, 20, 25, 25, 24)) 
                        
# toy output
toy_df <- soc_find_team_stat(small_df, "B", Market_Value_Euros)

# check output
test_that("The output must be a list",{
  expect_true(is.list(toy_df))
})

test_that("The first output item in the list must be a table",{
  expect_true(is.table(toy_df[[1]]))
})

test_that("The second output item in the list must be a ggplot",{
  expect_true(is.ggplot(toy_df[[2]]))
})

# check input
test_that("Test Invalid Input DataFrame", {
  expect_error(soc_find_team_stat(NULL,"A"))
  expect_error(soc_find_team_stat("String Input","A"))
})

test_that("Test Invalid Input team_name", {
  expect_error(soc_find_team_stat(small_df,NULL))
})
