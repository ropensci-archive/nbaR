qc <- QueryCondition$new(
  field = "unitID",
  operator = "EQUALS",
  value = "RMNH.CRUS.D.18484"
)
qs <- QuerySpec$new(conditions = list(qc))

test_that("Query with SpecimenClient returns specimens", {
  res <- sc$query()

  ## Default number of returned documents is 10
  expect_length(res$content$resultSet, 10)
  expect_s3_class(res$content$resultSet[[1]], "QueryResultItemObject")

})

test_that("Query with QuerySpec works", {
  res <- sc$query(collectionType = qs)
  expect_type(res$content$resultSet[[1]]$item, "list")
})

# do not work as expected
# test_that("Operators other than EQUALS work", {
#   qc <- QueryCondition$new(
#     field = "identifications.defaultClassification.genus",
#     operator = "STARTS_WITH",
#     value = "Hydro"
#   )
#   qs <- QuerySpec$new(conditions = list(qc))
#   res <- sc$query(qs)

#   for (hit in res$content$resultSet) {
#     expect_s3_class(hit$item, "Specimen")
#   }
# })

test_that("Query with query params works", {
  qp <- list("_size" = 100)
  res <- sc$query(queryParams = qp)
  expect_length(res$content$resultSet, 100)

  ## test for other query if we get the same result with QuerySpec
  qp <- list("identifications.defaultClassification.genus" = "Passiflora")
  qc <- QueryCondition$new(
    field = "identifications.defaultClassification.genus",
    operator = "EQUALS",
    value = "Passiflora"
  )
  qs <- QuerySpec$new(conditions = list(qc))
  res1 <- sc$query(queryParams = qp)
  res2 <- sc$query(collectionType = qs)
  expect_equal(res1$content$resultSet, res2$content$resultSet)

  ## test if query params work as a vector
  qpvec <- c("identifications.defaultClassification.genus" = "Passiflora")
  res3 <- sc$query(queryParams = qpvec)
  expect_equal(res1$content$resultSet, res3$content$resultSet)
})

