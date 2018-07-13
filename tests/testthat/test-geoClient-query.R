

test_that("Query with QuerySpec works", {
    qc <- QueryCondition$new(field="gatheringEvent.siteCoordinates.geoShape", operator="IN", value="Antarctica")
    qs <- QuerySpec$new(conditions=list(qc))
    
})
