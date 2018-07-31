library(nbaR)
library(testthat)


wd <- getwd()
if(grepl("testthat", wd)) {
    dataDir <- file.path("data")
} else { ## for running test at package level dataDir <-
    file.path("tests", "testthat", "data")
}

testfiles <- c("organization.json", "organization-2.json",
               "empty.json")

for (file in testfiles) {
    testRecord <- file.path(dataDir, file)
    jsonString <- readChar(testRecord, file.info(testRecord)$size)
    
    test_that("fromJSONString works", {
        or <- Organization$new()
        or$fromJSONString(jsonString)
        expect_true(class(or)[1] == "Organization")
    })

    test_that("toJSONString works", {
        or <- Organization$new()
        or$fromJSONString(jsonString)
        outString <- or$toJSONString()
        
        ## compare by matching the names of list objects
        expect_true(all(sort(names(jsonlite::fromJSON(jsonString))) ==
                            sort(names(jsonlite::fromJSON(outString)))))
    })
    
    test_that("fromList works", {
        list <- jsonlite::fromJSON(jsonString)
        or <- Organization$new()
        or$fromList(list)
        expect_true(class(or)[1] == "Organization")
    })

    test_that("toList works", {
        or <- Organization$new()
        or$fromJSONString(jsonString)
        l <- or$toList()
        expect_true(class(l) == "list")
    })
}
