# Make a list with random arguments for all fields in the class
args <- list()
args[["rank"]] <- random_string()
args[["name"]] <- random_string()

# make Monomial object without and with args
objEmpty <- Monomial$new()
objRand <- do.call(Monomial$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Monomial")
  expect_s3_class(objRand, "Monomial")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Monomial$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Monomial")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Monomial$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Monomial")
})

test_that("print works", {
  obj <- Monomial$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
