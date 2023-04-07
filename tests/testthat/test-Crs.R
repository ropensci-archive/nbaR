# Make a list with random arguments for all fields in the class
args <- list()
args[["type"]] <- random_string()
args[["properties"]] <- as.list(mapply(
  function(x, y) {
    a <- list()
    a[[x]] <- y
  },
  c("A", "B"), c("a", "b")
))

# make Crs object without and with args
objEmpty <- Crs$new()
objRand <- do.call(Crs$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Crs")
  expect_s3_class(objRand, "Crs")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Crs$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Crs")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Crs$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Crs")
})

test_that("print works", {
  obj <- Crs$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
