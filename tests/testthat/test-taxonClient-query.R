library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

tc <- TaxonClient$new(basePath = "http://api.biodiversitydata.nl/v2")

context("Testing query function")

test_that("Query with TaxonClient returns Taxon objects", {
  res <- tc$query()

  ## Default number of returned documents is 10
  expect_length(res$content$resultSet, 10)

  for (hit in res$content$resultSet) {
    expect_is(hit$item, "Taxon")
  }
})

test_that("Query with QuerySpec works", {
  qs <- QuerySpec$new(conditions = list(QueryCondition$new(
    field = "defaultClassification.genus",
    value = "Clematis",
    operator = "EQUALS"
  )))
  res <- tc$query(querySpec = qs)
  expect_is(res$content$resultSet[[1]]$item, "Taxon")
})


test_that("Operators other than EQUALS work", {
  qc <- QueryCondition$new(field = "defaultClassification.genus",
                           operator = "STARTS_WITH", value = "Hydro")
  qs <- QuerySpec$new(conditions = list(qc))
  res <- tc$query(qs)

  for (hit in res$content$resultSet) {
    expect_is(hit$item, "Taxon")
  }
})

test_that("Query with query params works", {
  qp <- list("_size" = 100)
  res <- tc$query(queryParams = qp)
  expect_length(res$content$resultSet, 100)

  ## test for other query if we get the same result with QuerySpec
  qp <- list("defaultClassification.genus" = "Passiflora")
  qc <- QueryCondition$new(field = "defaultClassification.genus",
                           operator = "EQUALS", value = "Passiflora")
  qs <- QuerySpec$new(conditions = list(qc))
  res1 <- tc$query(queryParams = qp)
  res2 <- tc$query(querySpec = qs)
  expect_equivalent(res1$content$resultSet, res2$content$resultSet)
})


test_that("Errors and warnings work", {
  ## query on non-existing
  q1 <- QueryCondition$new(field = "somefield",
                           operator = "EQUALS", value = "some value")

  ## should give a warning
  expect_warning(tc$query(querySpec = QuerySpec$new(conditions = list(q1))))

  ## look at http error code
  res <- tc$query(querySpec = QuerySpec$new(conditions = list(q1)))
  expect_equal(res$response$status_code, 500)
})
