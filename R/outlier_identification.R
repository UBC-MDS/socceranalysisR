#' Find outliers in data.
#'
#' Returns outliers in the dataset based on values of a variable.
#' This function identifies outliers in the dataset based on either of the following methods:
#' 1. Interquartile Range (IQR) Method: Identifies all values less than Q1 - 1.5 x IQR and greater than Q3 + 1.5 x IQR where IQR = Q3-Q1, are identified as outliers.
#' 2. Mean and Standard Deviation Method: Identifies all values less than  mean - k times standard_deviation and greater than mean + k times standard_deviation as outliers.
#' 
#' @param df Dataframe in  which outliers are to be identified.
#' @param col Column vector in the dataframe based on which outliers are to be identified
#' @param method  Name of the outlier identification method to be used.  "IQR" for IQR method and "SD" for mean and standard deviation method
#' @param thresh The value of k in the Mean and Standard Deviation Method formula above
#' 
#' @import dplyr
#' @import ggplot2
#' @import rlang
#' @import tidyverse
#' @import cowplot
#'
#' @return A dataframe which is subset of original dataframe containing only rows corresponding to outliers.ggpl
#' @export
#'
#' @examples
#' library(dplyr)
#' small_data <- data.frame(age = - c(18, 20, 20), Wages_Euros = c(300000, 575000, 150000))
#' soc_get_outliers(small_data,"Wages_Euros","SD",3)
soc_get_outliers <- function(df,
                             col,
                             method = "SD",
                             thresh = 3) {
  if (method == "SD") {
    data_summ <-  df |> summarise(mean = mean({{col}}),sd = sd({{col}}))
    
    avg <- data_summ |> pull(mean)
    std <- data_summ |> pull(sd)
    
    outliers_df <- df |> filter( ({{col}} > avg + (thresh * std)) |
                                   ({{col}} < avg - (thresh * std)))
  }
  
  else if (method == "IQR"){
  
    data_summ <- df |>  summarize(q1 = quantile({{col}},0.25),
                                    q3 = quantile({{col}},0.75))
    
    q1 <-  data_summ |> pull(q1)
    q3 <-  data_summ |> pull(q3)
    
    iqr = q3 - q1
    
    outliers_df <- df |> filter( ({{col}} > q3 + (1.5*iqr)) |
                                   ({{col}} < q1 - (1.5*iqr)) )
  }
  
  return (outliers_df)
}


  