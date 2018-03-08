library(nbaR)
library(testthat)


wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

testfiles <- c('specimen.json', 'specimen-2.json')

for (file in testfiles) {
    testRecord <- file.path(dataDir, file)
    jsonString <- readChar(testRecord, file.info(testRecord)$size)
    
    
    test_that('fromJSONString works', {
        spec <- Specimen$new()
        spec$fromJSONString(jsonString)
        expect_true(class(spec)[1] == 'Specimen')
    })

    test_that('toJSONString works', {
        spec <- Specimen$new()
        spec$fromJSONString(jsonString)
        outString <- spec$toJSONString()
        
        ## compare by matching the names of list objects
        l1 <- jsonlite::fromJSON(jsonString, simplifyVector=F)
        l2 <- jsonlite::fromJSON(outString, simplifyVector=F)        
        flattened1 <- rapply(l1, function(x)x)
        flattened2 <- rapply(l2, function(x)x)
        expect_true(all(sort(names(flattened1)) == sort(names(flattened2))))
        expect_true(all(sort(flattened1) == sort(flattened2)))

        ## even stronger test: order must be the same
        expect_equivalent(l1, l2)      
    })
    
    test_that('fromList works', {
        list <- jsonlite::fromJSON(jsonString, simplifyVector=F)
        spec <- Specimen$new()
        spec$fromList(list)
        expect_true(class(spec)[1] == 'Specimen')

        ## test if a field is a proper object
        identifications <- spec$identifications
        for (i in seq_along(identifications)) {
            expect_true(class(identifications[[i]])[1] == 'SpecimenIdentification')
        }        
    })

    test_that('toList works', {
        spec <- Specimen$new()
        spec$fromJSONString(jsonString)
        l <- spec$toList()
        expect_true(class(l)=='list')
    })
    
}
