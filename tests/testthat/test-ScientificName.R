# Make a list with random arguments for all fields in the class
args <- list()
args[["fullScientificName"]] <- random_string()
args[["taxonomicStatus"]] <- random_string()
args[["genusOrMonomial"]] <- random_string()
args[["subgenus"]] <- random_string()
args[["specificEpithet"]] <- random_string()
args[["infraspecificEpithet"]] <- random_string()
args[["infraspecificMarker"]] <- random_string()
args[["nameAddendum"]] <- random_string()
args[["authorshipVerbatim"]] <- random_string()
args[["author"]] <- random_string()
args[["year"]] <- random_string()
args[["scientificNameGroup"]] <- random_string()
args[["references"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Reference$new()
)
args[["experts"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Expert$new()
)

# make ScientificName object without and with args
objEmpty <- ScientificName$new()
objRand <- do.call(ScientificName$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "ScientificName")
  expect_s3_class(objRand, "ScientificName")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- ScientificName$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "ScientificName")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- ScientificName$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "ScientificName")
})

test_that("print works", {
  obj <- ScientificName$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
