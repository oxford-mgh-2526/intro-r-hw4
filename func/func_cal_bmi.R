#' Calculate BMI given weight and height
#' (formula ref: https://en.wikipedia.org/wiki/Body_mass_index)
#' @include none (meaning that this function don't depend on any other functions)
#' @param weight The weight of the person in kg (metric) / ibs (imperial)
#' @param height The height of the person in m (metric) / inches (imperial)
#' @param unit_is_metric TRUE if using metric units, FALSE if using imperial units
#' @returns A single value for bmi (in kg/m^2)
func_cal_bmi <- function(weight, height, unit_is_metric=TRUE) {
  if(unit_is_metric){
    bmi<- weight/height^2
  }else{
    bmi<- 703*weight/(height^2)
  }
    return(bmi)
}


  func_cal_bmi(weight = 90, height = 1.75) # expects 29.38776
  func_cal_bmi(weight = 198, height = 69, unit_is_metric = FALSE) # expects 29.23629



