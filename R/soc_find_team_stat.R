library(tidyverse)
#' Find team statistic
#'
#' Returns the descriptive statistic table and box plot of a particular team.
#' This function can help users to find the statistical data of a particular team.
#' A box plot is provided for visualization of the statistical data.
#' Users can visualize a certain feature of the team by inputting it in the optional argument "feature".
#' If no input is found, the default feature of the box plot will be the "age" of the user's inputted team.
#'
#' @param df The dataframe of the soccer dataset
#' @param team_name String in the dataframe. Users can input any string from the "Team" column.
#' @param feature Optional argument. The default feature is "age". Users can input other numerical features.
#'
#' @return list A list contains a descriptive statistics table and a box plot to show a certain descriptive statistic feature of a particular team.
#' @export
#'
#' @examples
#' library(tidyverse)
#' small_df <- data.frame(Team =  c("Man United", "Arsenal", "Chelsea"), Market_Value_Euros = c(300000, 575000,	150000))
#' soc_find_team_stat(small_df , "Arsenal", "Market_Value_Euros")
soc_find_team_stat <- function(df, team_name, feature=age ){ {
  
  filtered <- df |> filter( Team == {{team_name}}) 
  
}
  
  my_list = list(summary(filtered) , ggplot(filtered) +  geom_boxplot() + aes(x = Team ,y = {{feature}}) )
  
  return(my_list)
  
}