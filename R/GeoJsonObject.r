# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#'
#' @docType class
#'
#' @format R6 class
#'
#' @usage
#' # GeoJsonObject$new()
#'
#' @format
#' R6 class
#'
#' @title GeoJsonObject Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for GeoJsonObject objects.
#'
#'
#' @field crs  Crs
#'
#' @field bbox  list(numeric)
#'
#'
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
    },
    print = function(...) {
      ## print class name
      cat("<GeoJsonObject>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$crs) == "environment") {
        cat("\tcrs:\tobject of class", paste0("<", class(self$crs)[1], ">"), "\n")
      } else if (typeof(self$crs) == "list") {
        cat("\tcrs:\tlist of length", length(self$crs), "\n")
      } else {
        cat("\tcrs:\t", self$crs, "\n")
      }
      if (typeof(self$bbox) == "environment") {
        cat("\tbbox:\tobject of class", paste0("<", class(self$bbox)[1], ">"), "\n")
      } else if (typeof(self$bbox) == "list") {
        cat("\tbbox:\tlist of length", length(self$bbox), "\n")
      } else {
        cat("\tbbox:\t", self$bbox, "\n")
      }
      ## print all methods
      cat("Methods:\n")
      cat("\tfromJSONString\n")
      cat("\ttoJSONString\n")
      cat("\tfromList\n")
      cat("\ttoList\n")
      cat("\tprint\n")
      invisible(self)
    }
  )
)
