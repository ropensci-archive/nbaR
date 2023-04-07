# Make a list with random arguments for all fields in the class
args <- list()
args[["name"]] <- random_string()
args[["language"]] <- random_string()

# make SummaryVernacularName object without and with args
objEmpty <- SummaryVernacularName$new()
objRand <- do.call(SummaryVernacularName$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "SummaryVernacularName")
  expect_s3_class(objRand, "SummaryVernacularName")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- SummaryVernacularName$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "SummaryVernacularName")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- SummaryVernacularName$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "SummaryVernacularName")
})

test_that("print works", {
  obj <- SummaryVernacularName$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
