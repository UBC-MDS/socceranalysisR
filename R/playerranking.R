library(dplyr)
library(tidyverse)

#' Ranking soccer players
#'
#' Given a soccer dataset, as well as column names, the function will rank the
#' players by their names based on the column selected by the user.

#' @param df Dataframe containing players information
#' @param col_names A column name in the dataframe to be used to rank the players
#' @return Returns a dataframe of names representing the ranking of the players based on the specified columns
#' @importFrom magrittr %>%
#' @importFrom dplyr arrange_at
#' @importFrom dplyr desc
#' @importFrom dplyr select
#' @importFrom ggplot2 vars
#' @export
#' @examples
#' library(tidyverse)
#' library(dplyr)
#'  my_data <- data.frame (Name  = c("Flora", "Mary", "Sarah", "Ester", "Sophie", "Maria"),
#'  second_column = c(1, 4, 3, 5, 1, 6),
#'  third_column  = c(7, 30, 12, 17, 34,8))
#'
rankingplayers <- function(df,col_names) {
  if (!is.character(col_names) | !is.vector(col_names)){
    stop('column name cannot be numeric')
  }
  if (!"Name" %in% names(df)){
    stop("The 'Name' must be one of the column in the player df")
  }
  if (!all(col_names %in% names(df))){
    stop(" There must be at least one column to rank from")
  }
  df <- df %>% arrange_at(vars(col_names), desc)
  df <- df %>% select("Name", col_names)

  df
}






