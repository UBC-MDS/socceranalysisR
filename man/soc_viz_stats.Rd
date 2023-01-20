% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/soc_viz_stats.R
\name{soc_viz_stats}
\alias{soc_viz_stats}
\title{Create a scatter plot of or two histograms based on chosen numerical features.}
\usage{
soc_viz_stats(xcol, ycol, if_scatter, df = data)
}
\arguments{
\item{xcol}{Column vector in the dataframe based on which outliers are to be identified.}

\item{ycol}{Column vector in the dataframe based on which outliers are to be identified.}

\item{if_scatter}{determine if the user want to have scatter plots or histograms.}

\item{df}{Dataframe in  which vizs are to be generated.}
}
\value{
ggplot2 chart
}
\description{
Create a scatter plot of or two histograms based on chosen numerical features.
}
\examples{
soc_viz_stats('age', 'Wages_Euros', TRUE , data)
}