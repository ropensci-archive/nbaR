# Make a list with random arguments for all fields in the class
args <- list()
args[["agentText"]] <- random_string()
args[["fullName"]] <- random_string()
args[["organization"]] <- Organization$new()

# make Person object without and with args
objEmpty <- Person$new()
objRand <- do.call(Person$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Person")
  expect_s3_class(objRand, "Person")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Person$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Person")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Person$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Person")
})

test_that("print works", {
  obj <- Person$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
