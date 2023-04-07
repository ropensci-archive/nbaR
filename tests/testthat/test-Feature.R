# Make a list with random arguments for all fields in the class
args <- list()
args[["crs"]] <- Crs$new()
args[["bbox"]] <- random_string_list()
args[["properties"]] <- as.list(mapply(
  function(x, y) {
    a <- list()
    a[[x]] <- y
  },
  c("A", "B"), c("a", "b")
))
args[["id"]] <- random_string()

# make Feature object without and with args
objEmpty <- Feature$new()
objRand <- do.call(Feature$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Feature")
  expect_s3_class(objRand, "Feature")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Feature$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Feature")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Feature$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Feature")
})

test_that("print works", {
  obj <- Feature$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
