source("setup-vars.R")

context("Testing GeoClient query endpoints")

test_that("Query with QuerySpec works", {
  qc <- QueryCondition$new(
    field = "locality", operator = "EQUALS",
    value = "Netherlands"
  )
  qs <- QuerySpec$new(conditions = list(qc))
  res <- gc$query(qs)
  expect_is(res$content$resultSet[[1]]$item, "GeoArea")
})
