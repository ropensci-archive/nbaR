library(nbaR)
library(testthat)


wd <- getwd()
if(grepl("testthat", wd)) {
    dataDir <- file.path("data")
} else { ## for running test at package level dataDir <-
    file.path("tests", "testthat", "data")
}

testfiles <- c("specimenidentification.json")

for (file in testfiles) {
    testRecord <- file.path(dataDir, file)
    jsonString <- readChar(testRecord, file.info(testRecord)$size)
    
    test_that("fromJSONString works", {
        si <- SpecimenIdentification$new()
        si$fromJSONString(jsonString)
        expect_true(class(si)[1] == "SpecimenIdentification")
    })

    test_that("toJSONString works", {
        si <- SpecimenIdentification$new()
        si$fromJSONString(jsonString)
        outString <- si$toJSONString()
        
        ## compare by matching the names of list objects
        expect_true(all(names(jsonlite::fromJSON(jsonString)) ==
                            names(jsonlite::fromJSON(outString)))) })
    
    test_that("fromList works", {
        list <- jsonlite::fromJSON(jsonString)
        si <- SpecimenIdentification$new()
        si$fromList(list)
        expect_true(class(si)[1] == "SpecimenIdentification")
    })

    test_that("toList works", {
        si <- SpecimenIdentification$new()
        si$fromJSONString(jsonString)
        l <- si$toList()
        expect_true(class(l) == "list")
    })
}
