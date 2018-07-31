library(nbaR)
library(testthat)

wd <- getwd()
if(grepl("testthat", wd)) {
    dataDir <- file.path("data")
} else {
    ## for running test at package level
    dataDir <- file.path("tests", "testthat", "data")
}

gc <- GeoClient$new(basePath="http://api.biodiversitydata.nl/v2")


test_that("Query with QuerySpec works", {
    qc <- QueryCondition$new(field="locality", operator="EQUALS", value="Netherlands")
    qs <- QuerySpec$new(conditions=list(qc))
    res <- gc$query(qs)
    expect_is(res$content$resultSet[[1]]$item, "GeoArea")
})
