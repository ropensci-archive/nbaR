

context("Testing class GroupByScientificNameQuerySpec")

# Make a list with random arguments for all fields in the class
args <- list()
args[["constantScore"]] <- sample(c(TRUE, FALSE), 1)
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["fields"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) QueryCondition$new()
)
args[["conditions"]] <- randomList
args[["logicalOperator"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) SortField$new()
)
args[["sortFields"]] <- randomList
args[["from"]] <- sample(0:10, 1)
args[["size"]] <- sample(0:10, 1)
args[["groupSort"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["groupFilter"]] <- Filter$new()
args[["specimensFrom"]] <- sample(0:10, 1)
args[["specimensSize"]] <- sample(0:10, 1)
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) SortField$new()
)
args[["specimensSortFields"]] <- randomList
args[["noTaxa"]] <- sample(c(TRUE, FALSE), 1)

# make GroupByScientificNameQuerySpec object without and with args
objEmpty <- GroupByScientificNameQuerySpec$new()
objRand <- do.call(GroupByScientificNameQuerySpec$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "GroupByScientificNameQuerySpec")
  expect_is(objRand, "GroupByScientificNameQuerySpec")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- GroupByScientificNameQuerySpec$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "GroupByScientificNameQuerySpec")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- GroupByScientificNameQuerySpec$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "GroupByScientificNameQuerySpec")
})

test_that("print works", {
  obj <- GroupByScientificNameQuerySpec$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
