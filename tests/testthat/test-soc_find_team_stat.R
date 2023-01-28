library(tidyverse)


# create a toy dataset to test this function
small_df <- data.frame(Team=  c("A", "B", "B", "B", "C", "C") ,
                       Market_Value_Euros = c(375000,	225000,	225000, 200000,	225000,	250000),
                       age = c(18, 20, 20, 25, 25, 24)) 
                        
# create output from toy dataset with the function
toy_df <- soc_find_team_stat(small_df, "B", Market_Value_Euros)

# check whether output is a list
test_that("The output must be a list",{
  expect_true(is.list(toy_df))
})

# check whether first item of the output is a table
test_that("The first output item in the list must be a table",{
  expect_true(is.table(toy_df[[1]]))
})

# check whether second item of the output is a ggplot
test_that("The second output item in the list must be a ggplot",{
  expect_true(is.ggplot(toy_df[[2]]))
})

# check whether input is valid
test_that("Test Invalid Input DataFrame", {
  expect_error(soc_find_team_stat(NULL,"A"))
  expect_error(soc_find_team_stat("String Input","A"))
})

# check whether input is valid
test_that("Test Invalid Input team_name", {
  expect_error(soc_find_team_stat(small_df,NULL))
})
