rm(list = ls())
source(file.path("func", "func_cal_bmi.R"))

stopifnot(isTRUE(all.equal(
    func_cal_bmi(weight = 90, height = 1.75), 29.38776, tolerance = 0.0001
)))

print("1/2 passed, with metric units")

stopifnot(isTRUE(all.equal(
    func_cal_bmi(weight = 198, height = 69, unit_is_metric = FALSE), 29.23629, tolerance = 0.0001
)))

print("2/2 passed, with imperial units") 

