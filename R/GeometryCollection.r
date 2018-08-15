# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GeometryCollection Class
#'
#' @field crs
#' @field bbox
#' @field geometries
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeometryCollection <- R6::R6Class(
  "GeometryCollection",
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `geometries` = NULL,
    initialize = function(
                              `crs`,
                              `bbox`,
                              `geometries`) {
      if (!missing(`crs`)) {
        stopifnot(R6::is.R6(`crs`))
        self[["crs"]] <- `crs`
      }
      if (!missing(`bbox`)) {
        stopifnot(
          is.list(`bbox`),
          length(`bbox`) != 0
        )
        lapply(
          `bbox`,
          function(x) stopifnot(is.character(x))
        )
        self[["bbox"]] <- `bbox`
      }
      if (!missing(`geometries`)) {
        stopifnot(
          is.list(`geometries`),
          length(`geometries`) != 0
        )
        lapply(
          `geometries`,
          function(x) stopifnot(is.character(x))
        )
        self[["geometries"]] <- `geometries`
      }
    },
    toList = function() {
      GeometryCollectionList <- list()
      if (!is.null(self[["crs"]])) {
        GeometryCollectionList[["crs"]] <-
          self[["crs"]]$toList()
      }
      if (!is.null(self[["bbox"]])) {
        GeometryCollectionList[["bbox"]] <-
          self[["bbox"]]
      }
      if (!is.null(self[["geometries"]])) {
        GeometryCollectionList[["geometries"]] <-
          self[["geometries"]]
      }
      ## omit empty nested lists in returned list
      GeometryCollectionList[vapply(
        GeometryCollectionList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(GeometryCollectionList,
                            typeMapping = NULL) {
      self[["crs"]] <- Crs$new()$fromList(
        GeometryCollectionList[["crs"]],
        typeMapping = typeMapping
      )
      self[["bbox"]] <-
        GeometryCollectionList[["bbox"]]
      self[["geometries"]] <-
        GeometryCollectionList[["geometries"]]
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
        self$toList(),
        simplifyVector = TRUE,
        auto_unbox = TRUE,
        pretty = pretty
      )
    },
    fromJSONString = function(GeometryCollectionJson,
                                  typeMapping = NULL) {
      GeometryCollectionList <- jsonlite::fromJSON(
        GeometryCollectionJson,
        simplifyVector = FALSE
      )
      self[["crs"]] <-
        Crs$new()$fromJSONString(
          jsonlite::toJSON(
            GeometryCollectionList[["crs"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      self[["bbox"]] <-
        GeometryCollectionList[["bbox"]]
      self[["geometries"]] <-
        GeometryCollectionList[["geometries"]]
      invisible(self)
    }
  )
)
