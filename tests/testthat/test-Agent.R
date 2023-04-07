# Make a list with random arguments for all fields in the class
args <- list()
args[["agentText"]] <- random_string()

# make Agent object without and with args
objEmpty <- Agent$new()
objRand <- do.call(Agent$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Agent")
  expect_s3_class(objRand, "Agent")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Agent$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Agent")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Agent$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Agent")
})

test_that("print works", {
  obj <- Agent$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
