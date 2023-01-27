library(dplyr)
## creating sample dataset
sample_soccer_data <- data.frame(Wages_Euros= c(300000,	
                                      575000,	150000,	475000,375000,	225000,	225000,	
                                      200000,	225000,	250000,	250000,	375000,	200000,
                                      150000,	225000,	225000,	200000,	225000,	190000,	
                                      300000,	180000,	400000,	325000,	200000,	190000,	170000,	
                                      300000,	140000,	225000,	350000,	190000),

              Market_Value_Euros = c(105500000,	95500000,	
                          93500000,	90000000,	90000000,	83000000,	
                          80500000,	78000000,	76500000,	73000000,	
                          72500000,	69000000,	68000000,	67500000,	66000000,
                          64500000,	64000000,	62000000,	61000000,	60000000,	
                          60000000,	58500000,	57000000,	57000000,	56500000,	
                          56000000,	55000000,	54500000,	53500000,	53000000,	
                          52000000)
)

#' Tests the function soc_get_outliers() which is used for outlier identification in a data set
#'
test_outliers <-  function() {
  test_that("There should 1 outlier when using mean +- 2*sd on Market Value",{ 
    expect_equal(nrow(soc_get_outliers(sample_soccer_data,
                                     Market_Value_Euros,
                                     "SD",2)),1)
})
  
  test_that("There should be no outliers when using IQR method on Market Value",{
    expect_equal(nrow(soc_get_outliers(sample_soccer_data,
                                       Market_Value_Euros,
                                       "IQR")),0)
  })
  
  test_that("There should 8 outliers when using SD method with threshold 1 on Wages",{
    expect_equal(nrow(soc_get_outliers(sample_soccer_data,
                                       Wages_Euros,
                                       "SD",1)),8)
  })
  
  test_that("There should 2 outliers when using IQR method on Wages",{
    expect_equal(nrow(soc_get_outliers(sample_soccer_data,
                                       Wages_Euros,
                                       "IQR")),2)
  })
  
  test_that("The outlier dataframe is incorrect (total columns should be 2)",{
    expect_equal(ncol(soc_get_outliers(sample_soccer_data,
                                       Wages_Euros,
                                       "IQR")),2)
  })
  
  test_that("The outlier dataframe is incorrect (total columns should be 2)",{
    expect_true(is.data.frame(sample_soccer_data))
  })

}

test_outliers()
