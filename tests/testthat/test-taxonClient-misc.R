test_that("count works", {
  res <- tc$count()
  expect_type(res$content, "integer")
  expect_true(res$content > 0)
})

test_that("countDistinctValues works", {
  res <- tc$count_distinct_values("acceptedName.author")
  expect_true(res$content > 0)
})

test_that("getDistinctValues works", {
  ## check for all paths
  paths <- tc$get_paths()$content
  expect_equal(length(paths), 113)
  ## method should give a warning if field is not found
  expect_warning(tc$get_distinct_values("XX"))
})
