library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

context("Testing wrapper functions for specimen client")

test_that("specimen_count works", {
  cnt <- specimen_count()
  expect_is(cnt, "numeric")
  expect_gt(cnt, 0)

  ## test with query param
  qp <- list(sex = "female")
  cnt2 <- specimen_count(qp)
  expect_lt(cnt2, cnt)

  ## test with multiple params
  qp <- list(sex = "female", sourceSystem.code = "CRS")
  cnt3 <- specimen_count(qp)
  expect_lt(cnt3, cnt2)

  ## test if with vector instead of list
  qp <- c(sex = "female")
  cnt4 <- specimen_count(qp)
  expect_equal(cnt4, cnt2)
})

test_that("specimen_count_distinct_values works", {
    cnt <- specimen_count_distinct_values("sex")
    expect_is(cnt, "numeric")
    expect_gt(cnt, 0)
    
    ## test with query param
    qp <- list(sex = "female")
    cnt2 <- specimen_count_distinct_values("sex", qp)
    ## should be 1!
    expect_equal(cnt, 1)
})

test_that("specimen_count_distinct_values_per_group works", {    
    ## Note that the count for the inner aggregation is still a bit
    ## of a mystery, see also
    ## https://docs.biodiversitydata.nl/en/latest/advanced-queries/#agg
    res <- specimen_count_distinct_values_per_group("sex", "sourceSystem.code")
    expect_is(res, "list")
    expect_gt(length(res), 0)    
})

test_that("specimen_download_query works", {
    qp <- list("identifications.defaultClassification.genus"="Hydrochoerus")
    res <- specimen_download_query(qp)
    expect_is(res, "list")
})

