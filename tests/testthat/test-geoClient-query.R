test_that("Query with QuerySpec works", {
  qc <- QueryCondition$new(
    field = "locality", operator = "EQUALS",
    value = "Netherlands"
  )
  qs <- QuerySpec$new(conditions = list(qc))
  res <- gc$query(qs)
  expect_s3_class(res$content, "QueryResult")
  expect_type(res$content$resultSet[[1]]$item, "list")
  # not clear why 
  # expect_s3_class(res$content$resultSet[[1]]$item, "GeoArea")
})
 