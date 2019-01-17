# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GeoJsonObject Class
#'
#'
#'
#' @field crs  Crs
#' @field bbox  list(numeric)
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor GeoJsonObject object.
#'
#' }
#' \item{\code{$fromList(GeoJsonObjectList)}}{
#'
#'   Create GeoJsonObject object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of GeoJsonObject.
#'
#' }
#' \item{\code{fromJSONString(GeoJsonObjectJson)}}{
#'
#'   Create GeoJsonObject object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of GeoJsonObject.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoJsonObject <- R6::R6Class(
  "GeoJsonObject",
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    initialize = function(
                              `crs`,
                              `bbox`) {
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
        ## omit names as they should not be part of JSON representation
        self[["bbox"]] <- unname(`bbox`)
      }
    },
    toList = function() {
      GeoJsonObjectList <- list()
      if (!is.null(self[["crs"]])) {
        GeoJsonObjectList[["crs"]] <-
          self[["crs"]]$toList()
      }
      if (!is.null(self[["bbox"]])) {
        GeoJsonObjectList[["bbox"]] <-
          self[["bbox"]]
      }
      ## omit empty nested lists in returned list
      GeoJsonObjectList[vapply(
        GeoJsonObjectList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(GeoJsonObjectList,
                            typeMapping = NULL) {
      self[["crs"]] <- Crs$new()$fromList(
        GeoJsonObjectList[["crs"]],
        typeMapping = typeMapping
      )
      self[["bbox"]] <-
        GeoJsonObjectList[["bbox"]]
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
    fromJSONString = function(GeoJsonObjectJson,
                                  typeMapping = NULL) {
      GeoJsonObjectList <- jsonlite::fromJSON(
        GeoJsonObjectJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(GeoJsonObjectList)
      invisible(self)
    }
  )
)
