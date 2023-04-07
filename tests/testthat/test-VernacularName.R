# Make a list with random arguments for all fields in the class
args <- list()
args[["name"]] <- random_string()
args[["language"]] <- random_string()
args[["preferred"]] <- sample(c(TRUE, FALSE), 1)
args[["references"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Reference$new()
)
args[["experts"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Expert$new()
)

# make VernacularName object without and with args
objEmpty <- VernacularName$new()
objRand <- do.call(VernacularName$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "VernacularName")
  expect_s3_class(objRand, "VernacularName")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- VernacularName$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "VernacularName")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- VernacularName$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "VernacularName")
})

test_that("print works", {
  obj <- VernacularName$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
