# Make a list with random arguments for all fields in the class
args <- list()
args[["sourceSystem"]] <- SourceSystem$new()
args[["sourceSystemId"]] <- random_string()
args[["recordURI"]] <- random_string()
args[["id"]] <- random_string()
args[["sourceSystemParentId"]] <- random_string()
args[["taxonRank"]] <- random_string()
args[["taxonRemarks"]] <- random_string()
args[["occurrenceStatusVerbatim"]] <- random_string()
args[["acceptedName"]] <- ScientificName$new()
args[["defaultClassification"]] <- DefaultClassification$new()
args[["systemClassification"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Monomial$new()
)
args[["synonyms"]] <- lapply(
  1:sample(1:10, 1),
  function(x) ScientificName$new()
)
args[["vernacularNames"]] <- lapply(
  1:sample(1:10, 1),
  function(x) VernacularName$new()
)
args[["descriptions"]] <- lapply(
  1:sample(1:10, 1),
  function(x) TaxonDescription$new()
)
args[["references"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Reference$new()
)
args[["experts"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Expert$new()
)
args[["validName"]] <- ScientificName$new()

# make Taxon object without and with args
objEmpty <- Taxon$new()
objRand <- do.call(Taxon$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Taxon")
  expect_s3_class(objRand, "Taxon")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Taxon$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Taxon")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Taxon$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Taxon")
})

test_that("print works", {
  obj <- Taxon$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
