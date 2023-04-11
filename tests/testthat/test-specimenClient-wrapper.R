test_that("specimen_count works", {
  cnt <- specimen_count()
  expect_true(is.numeric(cnt))
  expect_gt(cnt, 0)

  ## test with query param
  qp <- list(sex = "female")
  cnt2 <- specimen_count(queryParam = qp)
  expect_lt(cnt2, cnt)

  ## test with multiple params
  qp <- list(sex = "female", sourceSystem.code = "CRS")
  cnt3 <- specimen_count(queryParam = qp)
  expect_lt(cnt3, cnt2)

  ## test if with vector instead of list
  qp <- c(sex = "female")
  cnt4 <- specimen_count(queryParam = qp)
  expect_equal(cnt4, cnt2)
})

test_that("specimen_count_distinct_values works", {
  cnt <- specimen_count_distinct_values("sex")
  expect_true(is.numeric(cnt))
  expect_gt(cnt, 0)

  ## test with query param
  qp <- list(sex = "female")
  cnt2 <- specimen_count_distinct_values("sex", queryParams = qp)
  ## should be 1!
  expect_equal(cnt2, 1)
})

test_that("specimen_count_distinct_values_per_group works", {
  ## Note that the count for the inner aggregation is still a bit
  ## of a mystery, see also
  ## https://docs.biodiversitydata.nl/en/latest/advanced-queries/#agg
  ## returnType is ignored
  res <-
    specimen_count_distinct_values_per_group("sex", "sourceSystem.code",
      returnType = "list"
    )
  ## expect_type(res, "list")
  expect_gt(length(res), 0)
})

# test_that("specimen_download_query works", {
#   skip("ndjson not supperoted yet, see issue #51")
#   qp <-
#     list("identifications.defaultClassification.genus" = "Hydrochoerus")
#   res <- specimen_download_query(qp, returnType = "list")
#   expect_type(res, "list")
#   expect_equal(length(res), 10)
#   # ## this should not return objects but the list representation of specimens
#   # for (i in seq_along(res)) {
#   #    expect_type(res, "list")
#   # }

#   ## check data frame return
#   res <- specimen_download_query(qp, returnType = "data.frame")
#   expect_s3_class(res, "data.frame")
# })

# test_that("specimen_dwca_get_data_set works", {
#   ## download a dataset to tmp file
#   dataset <- "porifera"
#   filename <- tempfile(fileext = ".zip")
#   specimen_dwca_get_data_set(dataset, filename = filename)
#   expect_true(file.exists(filename))
#   ## check for contents
#   l <- unzip(filename, list = TRUE)
#   expect_equal(sort(l$Name), sort(c(
#     "eml.xml", "meta.xml", "Multimedia.txt", "Occurrence.txt"
#   )))
#   unlink(filename)
# })

test_that("specimen_dwca_get_data_set_names works", {
  names <- specimen_dwca_get_data_set_names()
  expect_true(is.character(names))
  expect_true(length(names) > 0)
})

test_that("specimen_dwca_query works", {
  qp <-
    list("identifications.defaultClassification.genus" = "Hydrochoerus")
  filename <- tempfile(fileext = ".zip")
  res <- specimen_dwca_query(queryParam = qp, filename = filename)
  expect_true(file.exists(filename))
  ## check for contents
  l <- unzip(filename, list = TRUE)
  expect_equal(sort(l$Name), sort(c(
    "eml.xml", "meta.xml", "Occurrence.txt"
  )))
  unlink(filename)
})

test_that("specimen_exists works", {
  ## test for existing specimen
  res <- specimen_exists("L.4191428")
  expect_type(res, "logical")
  expect_true(res)

  ## test for nonexisting specimen
  res <- specimen_exists("XXX")
  expect_type(res, "logical")
  expect_false(res)
})

test_that("specimen_find works", {
  id <- "RMNH.MAM.17209.B@CRS"
  res <- specimen_find(id, returnType = "list")
  expect_type(res, "list")
  expect_equal(res$id, id)

  res <- specimen_find(id, returnType = "data.frame")
  expect_s3_class(res, "data.frame")
})

test_that("specimen_find_by_ids works", {
  ids_vec <- c("RMNH.INS.657083@CRS", "L.1589244@BRAHMS")
  res <- specimen_find_by_ids(ids_vec, returnType = "list")
  expect_type(res, "list")
  expect_length(res, 2)
  for (i in seq_along(res)) {
     expect_type(res, "list")
    expect_true(res[[i]]$id %in% ids_vec)
  }

  res <- specimen_find_by_ids(ids_vec, returnType = "data.frame")
  expect_s3_class(res, "data.frame")
})

test_that("specimen_find_by_unit_id", {
  unitID <- "RMNH.MAM.1513"
  res <- specimen_find_by_unit_id(unitID, returnType = "list")
  expect_type(res, "list")
  expect_type(res[[1]], "list")
  expect_equal(res[[1]]$unitID, unitID)
  res <- specimen_find_by_unit_id(unitID, returnType = "data.frame")
  expect_s3_class(res, "data.frame")
})

test_that("specimen_get_distinct_values works", {
  ## check for all paths
  paths <- specimen_get_paths()
  ## fielddata not supported for geoShape, remove it
  # paths <- paths[paths != "gatheringEvent.siteCoordinates.geoShape"]
  expect_length(paths, 245)
  ## method should give a warning if field is not found
  expect_warning(specimen_get_distinct_values("XX"))
})

test_that("specimen_get_distinct_values_per_group works", {
  res <- specimen_get_distinct_values_per_group(
    group = "sourceSystem.code",
    field = "recordBasis"
  )
  ## Result should be a list with two entries, for BRAHMS and CRS, and XC
  expect_type(res, "list")
  expect_true(length(res) > 1)
})

test_that("specimen_get_field_info and specimen_get_paths works", {
  res <- specimen_get_field_info()
  expect_type(res, "list")
  ## The list should be named by the paths of the different fields, compare
  paths <- specimen_get_paths()
  expect_equal(sort(paths), sort(names(res)))
})

# no longer available
# test_that("specimen_get_ids_in_collection works", {
#   res <- specimen_get_ids_in_collection("siebold")
#   expect_s3_class(res, "character")
#   expect_true(length(res) > 0)
# })

# test_that("getNamedCollections works", {
#   res <- specimen_get_named_collections()
#   expect_s3_class(res, "character")
#   expect_true(length(res) > 0)
# })

# test_that("specimen_get_setting works", {
#   res <- specimen_get_setting("index.max_result_window")
#   ## XXX should a numeric be returned? Right now it is a list, and
#   ## with getSettings, one might not know the datatype of the setting!
#   ## expect_true(is.numeric(res$content))
#   expect_true(!is.null(res))
# })

test_that("specimen_get_settings works", {
  res <- specimen_get_settings()
  expect_type(res, "list")
  expect_true(length(res) > 0)
})

test_that("specimen_group_by_scientific_name works", {
  queryParams <-
    list("identifications.defaultClassification.genus" = "Passiflora")
  res <- specimen_group_by_scientific_name(queryParams = queryParams)

  ## check if we get specimen documents
  for (hit in res) {
    expect_type(hit, "list")
  }
})

test_that("specimen_is_operator_allowed works", {
  ## test operator that should be allowed
  res <- specimen_is_operator_allowed("collectionType", "EQUALS")
  expect_type(res, "logical")
  expect_true(res)
  ## test operator that should not be allowed
  res <- specimen_is_operator_allowed("collectionType", "LT")
  expect_type(res, "logical")
  expect_false(res)
})

test_that("specimen_query works", {
  queryParams <-
    list("identifications.defaultClassification.genus" = "Passiflora")
  res <- specimen_query(queryParams = queryParams, returnType = "list")
  expect_length(res, 184)

  # for (i in seq_along(res)) {
  #    expect_type(res, "list")
  #   ## check if we can access a value
  #   expect_s3_class(res[[i]]$unitID, "character")
  # }
})
