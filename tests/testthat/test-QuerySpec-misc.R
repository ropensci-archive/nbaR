library("nbaR")
library("testthat")

set.seed(111)

context("Testing miscellaneous QuerySpec properties")

test_that("named list input works", {
  ## when list with query conditions
  ## in QuerySpec is a named list, this
  ## should not occur in the JSON representation
  ## see https://github.com/naturalis/nbaR/issues/29

  ## make QuerySpec from not-named list and query
  field <- 'identifications.defaultClassification.genus'
  qc <- QueryCondition$new(field = field, operator = 'EQUALS', value = 'Solanum')
  qs <- QuerySpec$new(conditions = list(qc))
  sc <- SpecimenClient$new()
  res <- sc$query(querySpec = qs)
  
  ## make QuerySpec from named list and query
  qc_list <- list('solanum' = qc)
  qs2 <- QuerySpec$new(conditions = qc_list)
  res2 <- sc$query(querySpec = qs2)
  
  expect_true(qs$toJSONString() == qs2$toJSONString())
  expect_equal(res$content$totalSize, res2$content$totalSize)
})
