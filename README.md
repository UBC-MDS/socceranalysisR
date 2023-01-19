
<!-- README.md is generated from README.Rmd. Please edit that file -->

# socceranalysisR

<!-- badges: start -->
<!-- badges: end -->

socceranalysisR is a powerful R package designed to make it easy to
analyze and understand soccer statistics. With its set of functions, you
can quickly obtain summary statistics for a particular team, identify
outliers based on market value, rank players by goals per game and
display different plots. The package is built in a way that allows user
to easily customize the functions to their own interests, giving them
the flexibility to analyze the data in a way that is most meaningful to
them. Whether you’re a coach, a sports journalist or an analyst,
socceranalysisR will help you unlock the insights hidden in your soccer
data and make more informed decisions.

## Functions

1.  `soc_find_team_stat`: provides a quick and easy way to understand
    the descriptive statistics of a team.

2.  `soc_rankingplayers`: Ranks players based on specific attributes

3.  `soc_get_outliers`: Identifes outliers using statistical methods
    (interquartile range or standard deviations)

4.  `soc_viz_stats` : Generates meaningful visualizations to help users
    understand and interpret the data

- `soc_viz_stats_scatter` : Generate a scatter plot for two given
  numeric columns
- `soc_viz_stats_hist` : Generate a histogram for one given numeric
  columns socceranalysisR can be used in conjunction with other popular
  R packages such as [dplyr](https://github.com/tidyverse/dplyr) and
  [ML_for_Hackers](https://github.com/johnmyleswhite/ML_for_Hackers) to
  perform more advanced data analysis and machine learning tasks. For
  example, users can use dplyr to manipulate and clean their soccer
  data, and then use this package to perform specific soccer-related
  analysis on the cleaned data. Additionally, socceranalysisR can be
  used in conjunction with ML_for_Hackers for machine learning tasks on
  soccer data. They are designed to be a higher-level, more
  user-friendly and declarative interface based on
  [ggplot2](https://github.com/tidyverse/ggplot2) for performing
  specific soccer-related analysis and visualization tasks. Users can
  perform similar visualization using
  [shiny](https://github.com/rstudio/shiny). Overall, socceranalysisR is
  a valuable addition to the R ecosystem as it provides a specialized
  tool for analyzing and understanding soccer data without the need for
  writing complex code, this can be especially useful for users who may
  not have extensive experience with data analysis or visualization.

## Installation

You can install the development version of socceranalysisR from
[GitHub](https://github.com/UBC-MDS/socceranalysisR) with:

## Installation

You can install the development version of socceranalysisR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/socceranalysisR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(socceranalysisR)
## basic example code
```

## Contributors

| Core contributor | Github.com username |
|------------------|---------------------|
| Flora Ouedraogo  | @florawendy19       |
| Gaoxiang Wang    | @louiewang820       |
| Manvir Kohli     | @manvirsingh96      |
| Vincent Ho       | @vincentho32        |

## Contributing

Authors: Vincent Ho, Manvir Singh Kohli, Gaoxiang Wang, Flora Ouedraogo

Interested in contributing? Check out the contributing guidelines.
Please note that this project is released with a Code of Conduct. By
contributing to this project, you agree to abide by its terms.

## License

`socceranalysisR` was created by Gaoxiang Wang, Manvir Kohli, Vincent Ho
and Flora Ouedraogo. It is licensed under the terms of the MIT license.
