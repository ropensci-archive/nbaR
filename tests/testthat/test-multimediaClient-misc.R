test_that("count works", {
  res <- mc$count()
  expect_true(is.numeric(res$content))
  expect_true(res$content > 0)
})

test_that("getDistinctValues works", {
  ## check for all paths
  paths <- mc$get_paths()$content
  ## fielddata not supported for geoShape, remove it
  paths <- paths[paths != "gatheringEvents.siteCoordinates.geoShape"]
  for (p in paths) {
    res <- mc$get_distinct_values(p)
    ## check if we get list back
    expect_type(res$content, "list")
  }
  ## method should give a warning if field is not found
  expect_warning(mc$get_distinct_values("XX"))
})
