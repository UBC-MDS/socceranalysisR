% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/playerranking.R
\name{rankingplayers}
\alias{rankingplayers}
\title{Ranking soccer players}
\usage{
rankingplayers(df, col_names)
}
\arguments{
\item{df}{Dataframe containing players information}

\item{col_names}{A column name in the dataframe to be used to rank the players}
}
\value{
Returns a dataframe of names representing the ranking of the players based on the specified columns
}
\description{
Given a soccer dataset, as well as column names, the function will rank the
players by their names based on the column selected by the user.
}
\examples{
library(tidyverse)
library(dplyr)
 my_data <- data.frame (Name  = c("Flora", "Mary", "Sarah", "Ester", "Sophie", "Maria"),
 second_column = c(1, 4, 3, 5, 1, 6),
 third_column  = c(7, 30, 12, 17, 34,8))

}
