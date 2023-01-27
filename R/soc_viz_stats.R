library(tidyverse)
library(cowplot)
#' Create vizualizations.
#'
#' Create a scatter plot of or two histograms based on chosen numerical features.
#' @param xcol Column vector in the dataframe based on which outliers are to be identified.
#' @param ycol Column vector in the dataframe based on which outliers are to be identified.
#' @param if_scatter determine if the user want to have scatter plots or histograms.
#' @param df  Dataframe in  which vizs are to be generated.
#'
#' @return ggplot2 chart
#' @export
#'
#' @examples
#' library(tidyverse)
#' library(cowplot)
#' small_data <- data.frame(age = - c(18, 20, 20), Wages_Euros = c(300000, 575000,	150000))
#' soc_viz_stats('age', 'Wages_Euros', FALSE , small_data)
soc_viz_stats <- function(xcol, ycol,if_scatter, df) {
  if(!(if_scatter ==TRUE | if_scatter == FALSE)){
    stop("input if_scatter should be binary")
  }
  if(!xcol %in% names(df)){
    stop("x column does not exist in the given data set, check again")
  }
  if(!ycol %in% names(df)){
    stop("y column does not exist in the given data set, check again")
  }
  x_col = sym(xcol)
  y_col = sym(ycol)
  if(if_scatter == FALSE) {
    # composition of two histograms
    plot_left = ggplot(df) +
      aes(x = !!x_col) +
      geom_bar(color = 'blue', stat= 'bin')
    plot_right = ggplot(df) +
      aes(x = !!y_col) +
      geom_bar(color = 'blue', stat= 'bin')
    plot_grid(plot_left, plot_right,ncol=1)
  }
  else
    # scatter plot with hexagonal bins
  {

    ggplot(df) +
      aes(x = !!x_col,
          y = !!y_col) +
      geom_bin_2d() +
      scale_fill_continuous(labels = scales::label_number_si())
  }
}




