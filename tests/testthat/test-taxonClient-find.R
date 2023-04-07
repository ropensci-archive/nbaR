test_that("find function works", {
  id <- "AHCYFBRDJBG@NSR"
  res <- tc$find(id)
  expect_s3_class(res$content, "Taxon")
  expect_equal(id, res$content$id)
})

test_that("findByIds works", {
  ids <- paste("3c341b736a476ce416313415caed2d96@COL",
    "547c2e534a2b06b943f0c7887e0bffbc@COL",
    "9450769e32d060c18639c388c57c9af7@COL",
    sep = ","
  )
  res <- tc$find_by_ids(ids)
  expect_type(res$content, "list")
  expect_length(res$content, 3)
  for (i in seq_along(res$content)) {
    expect_s3_class(res$content[[i]], "Taxon")
  }
})

test_that("Test error handling in find functions", {
  id <- "XXX"
  expect_warning(res <- tc$find(id))
  expect_equal(res$response$status_code, 404)
  expect_warning(tc$find(""))
})
