library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

sc <- SpecimenClient$new()

context("Testing dwca related functions")

test_that("dwca_get_data_set_names() works", {
  res <- sc$dwca_get_data_set_names()
  expect_is(res$content, "character")
  expect_true(length(res$content) > 0)
})

test_that("dwca_get_data_set() works", {
  ## download a dataset to tmp file
  dataset <- "porifera"
  filename <- tempfile(fileext = ".zip")
  sc$dwca_get_data_set(dataset, filename = filename)
  expect_true(file.exists(filename))
  ## check for contents
  l <- unzip(filename, list = T)
  expect_equal(sort(l$Name), sort(c("eml.xml", "meta.xml", "Occurrence.txt")))
  unlink(filename)
})

test_that("dwca_query() works", {
  dir <- tempdir()
  filename <- tempfile(fileext = ".zip", tmpdir = dir)
  ## do a query for a certain amount of documents and
  ## see if we can find the same number of rows in the
  ## dwca Occurrences.txt file
  size <- 29
  qs <- QuerySpec$new(size = size)
  sc$dwca_query(querySpec = qs, filename = filename)
  unzip(filename, exdir = dir)
  tab <- read.table(file.path(dir, "/Occurrence.txt"),
    header = T, sep = ",", fill = T, quote = "\""
  )
  expect_true(nrow(tab) == size)
  unlink(dir)
})
