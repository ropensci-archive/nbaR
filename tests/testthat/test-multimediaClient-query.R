library("nbaR")
library("testthat")

wd <- getwd()
if(grepl("testthat", wd)) {
    data_dir <- file.path("data")
} else {
    ## for running test at package level
    data_dir <- file.path("tests", "testthat", "data")
}

mc <- MultimediaClient$new(basePath = "http://api.biodiversitydata.nl/v2")

test_that("Query with MultiMediaClient returns multimedia objects", {
    res <- mc$query()

    ## Default number of returned documents is 10
    expect_length(res$content$resultSet, 10)

    for (hit in res$content$resultSet) {
        expect_is(hit$item, "MultiMediaObject")
    }
})

test_that("Query with QuerySpec works", {
    qc <- QueryCondition$new(field = "identifications.defaultClassification.genus", operator = "EQUALS", value = "Phalacrocorax")
    qs <- QuerySpec$new(conditions = list(qc))
    res <- mc$query(querySpec = qs)
    for (r in res$content$resultSet) {
        expect_is(r$item, "MultiMediaObject")
    }    
})
