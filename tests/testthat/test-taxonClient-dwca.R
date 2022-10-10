source("setup-vars.R")

context("Testing dwca related functions for taxon objects")

test_that("dwca_get_data_set_names() works", {
  res <- tc$dwca_get_data_set_names()
  expect_is(res$content, "character")
  expect_true(length(res$content) > 0)
})

test_that("dwca_get_data_set() works", {
  ## download a dataset to tmp file
  dataset <- "nsr"
  filename <- tempfile(fileext = ".zip")
  tc$dwca_get_data_set(dataset, filename = filename)
  expect_true(file.exists(filename))
  ## check for contents
  l <- unzip(filename, list = T)
  expect_equal(sort(l$Name), sort(c(
    "eml.xml", "meta.xml",
    "Taxa.txt", "Multimedia.txt", "Vernacular_Names.txt"
  )))
  unlink(filename)
})

test_that("dwca_query() works", {
  dir <- tempdir()
  filename <- tempfile(fileext = ".zip", tmpdir = dir)
  ## do a query for a certain amount of documents and
  ## see if we can find the same number of rows in the
  ## dwca Taxa.txt file
  size <- 3
  qs <- QuerySpec$new(size = size)
  tc$dwca_query(querySpec = qs, filename = filename)
  unzip(filename, exdir = dir)
  tab <- read.table(file.path(dir, "/Taxa.txt"),
    header = TRUE, sep = ",", fill = TRUE, quote = "\""
  )
  ## can have more entries than queried number
  ## because also synonyms are in there!
  expect_true(nrow(tab) >= size)
  unlink(dir)
})
