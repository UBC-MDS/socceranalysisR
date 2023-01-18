#' Returns outliers in the dataset based on values of a variable
#' This function identifies outliers in the dataset based on either of the following methods:
#' 1. Interquartile Range (IQR) Method: Identifies all values less than Q1 - 1.5 x IQR and greater than Q3 + 1.5 x IQR where IQR = Q3-Q1, are identified as outliers.
#' 2. Mean and Standard Deviation Method: Identifies all values less than  mean - k times standard_deviation and greater than mean + k times standard_deviation as outliers.

#' @param df Dataframe in  which outliers are to be identified.
#' @param col Column vector in the dataframe based on which outliers are to be identified
#' @param method  Name of the outlier identification method to be used.  "IQR" for IQR method and "SD" for mean and standard deviation method
#' @param thresh The value of k in the Mean and Standard Deviation Method formula above
#' 
#' @return A dataframe which is aubset of original dataframe  containing only rows corresponding to outliers.
#' @export
#'
#' @examples
#' get_outliers(df,"Wages_Euros","SD",3)
soc_get_oultiers <- function(df, col,method ="SD",thresh=3) {

}