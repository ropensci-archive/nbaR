library(nbaR)
library(testthat)

wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

sc <- SpecimenClient$new(basePath="http://api.biodiversitydata.nl/v2")
qc <- QueryCondition$new(field="unitID", operator="EQUALS", value="L.4304195")
qs <- QuerySpec$new(conditions=list(qc))

context("Testing query function")

test_that("Query with SpecimenClient returns specimens", {
    res <- sc$query()

    ## Default number of returned documents is 10
    expect_length(res$content$resultSet, 10)

    for (hit in res$content$resultSet) {
        expect_is(hit$item, "Specimen")
    }
})

test_that("Query with QuerySpec works", {
    res <- sc$query(querySpec=qs)
    expect_is(res$content$resultSet[[1]]$item, "Specimen")
})


test_that("Operators other than EQUALS work", {
    qc <- QueryCondition$new(field="identifications.defaultClassification.genus", operator="STARTS_WITH", value="Hydro")
    qs <- QuerySpec$new(conditions=list(qc))
    res <- sc$query(qs)

    for (hit in res$content$resultSet) {
        expect_is(hit$item, "Specimen")
    }
})

test_that("Query with query params works", {
    qp <- list("_size"=100)
    res <- sc$query(queryParams=qp)
    expect_length(res$content$resultSet, 100)

    ## test for other query if we get the same result with QuerySpec
    qp <- list("identifications.defaultClassification.genus"="Passiflora")    
    qc <- QueryCondition$new(field="identifications.defaultClassification.genus", operator="EQUALS", value="Passiflora")
    qs <- QuerySpec$new(conditions=list(qc))
    res1 <- sc$query(queryParams=qp)
    res2 <- sc$query(querySpec=qs)
    expect_equivalent(res1$content$resultSet, res2$content$resultSet)    
})

test_that("Nested query works", {
    ## complex query example from http://api.biodiversitydata.nl/scratchpad/
    q1 <- QueryCondition$new(field="gatheringEvent.country", operator="EQUALS_IC", value="Nederland", boost=2)
    q1$or <- list(QueryCondition$new(field="gatheringEvent.country", operator="EQUALS_IC", value="Netherlands", boost=0.5),
                  QueryCondition$new(field="gatheringEvent.country", operator="EQUALS_IC", value="Netherlands, The", boost=1))
    q2 <- QueryCondition$new(field="kindOfUnit", operator="EQUALS_IC", value="EGG")
    q3 <- QueryCondition$new(field="identifications.taxonRank", operator="EQUALS_IC", value="species")
    q3$and <- list(QueryCondition$new(field="identifications.scientificName.genusOrMonomial", operator="EQUALS_IC", value="corvus"))
    qs <- QuerySpec$new(conditions=list(q1, q2, q3),
                        fields=list("gatheringEvent.dateTimeBegin",
                                    "gatheringEvent.locality",
                                    "identifications.scientificName",
                                    "kindOfUnit"),
                        sortFields=list(SortField$new(path="unitID", sortOrder = "desc")),
                        from=0, size=5, logicalOperator="AND")
    
    ## test if query with this QuerySpec works
    res <- sc$query(querySpec=qs)
    expect_length(res$content$resultSet, 5)

    ## load reference querySpec from file
    testQuery <- file.path(dataDir, "nested-query.json")
    jsonString <- readChar(testQuery, file.info(testQuery)$size)
    ref <- jsonlite::fromJSON(jsonString, simplifyVector=F)
    ## compare JSON of reference and our querySpec, without regarding the order
    ## TODO: Below test could be moved to QuerySpec test
    test <- jsonlite::fromJSON(qs$toJSONString(), simplifyVector=F)
    flattened1 <- rapply(ref, function(x)x)
    flattened2 <- rapply(test, function(x)x)
    expect_true(all(sort(names(flattened1)) == sort(names(flattened2))))
    expect_true(all(sort(flattened1) == sort(flattened2)))    
})

test_that("Errors and warnings work", {
    ## query on non-indexed field
    q1 <- QueryCondition$new(field = "associatedMultiMediaUris.accessUri", operator="EQUALS", value="some value")

    ## should give a warning
    expect_warning(sc$query(querySpec=QuerySpec$new(conditions=list(q1))))

    ## look at http error code
    res <- sc$query(querySpec=QuerySpec$new(conditions=list(q1)))
    expect_equal(res$response$status_code, 500)
})
