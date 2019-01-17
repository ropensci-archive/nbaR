# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RestService Class
#'
#'
#'
#' @field endPoint  character
#' @field method  character
#' @field consumes  character
#' @field produces  character
#' @field url  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor RestService object.
#'
#' }
#' \item{\code{$fromList(RestServiceList)}}{
#'
#'   Create RestService object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of RestService.
#'
#' }
#' \item{\code{fromJSONString(RestServiceJson)}}{
#'
#'   Create RestService object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of RestService.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RestService <- R6::R6Class(
  "RestService",
  public = list(
    `endPoint` = NULL,
    `method` = NULL,
    `consumes` = NULL,
    `produces` = NULL,
    `url` = NULL,
    initialize = function(
                              `endPoint`,
                              `method`,
                              `consumes`,
                              `produces`,
                              `url`) {
      if (!missing(`endPoint`)) {
        stopifnot(
          is.character(`endPoint`),
          length(`endPoint`) == 1
        )
        self[["endPoint"]] <- `endPoint`
      }
      if (!missing(`method`)) {
        stopifnot(
          is.character(`method`),
          length(`method`) == 1
        )
        self[["method"]] <- `method`
      }
      if (!missing(`consumes`)) {
        stopifnot(
          is.character(`consumes`),
          length(`consumes`) == 1
        )
        self[["consumes"]] <- `consumes`
      }
      if (!missing(`produces`)) {
        stopifnot(
          is.character(`produces`),
          length(`produces`) == 1
        )
        self[["produces"]] <- `produces`
      }
      if (!missing(`url`)) {
        stopifnot(
          is.character(`url`),
          length(`url`) == 1
        )
        self[["url"]] <- `url`
      }
    },
    toList = function() {
      RestServiceList <- list()
      if (!is.null(self[["endPoint"]])) {
        RestServiceList[["endPoint"]] <-
          self[["endPoint"]]
      }
      if (!is.null(self[["method"]])) {
        RestServiceList[["method"]] <-
          self[["method"]]
      }
      if (!is.null(self[["consumes"]])) {
        RestServiceList[["consumes"]] <-
          self[["consumes"]]
      }
      if (!is.null(self[["produces"]])) {
        RestServiceList[["produces"]] <-
          self[["produces"]]
      }
      if (!is.null(self[["url"]])) {
        RestServiceList[["url"]] <-
          self[["url"]]
      }
      ## omit empty nested lists in returned list
      RestServiceList[vapply(
        RestServiceList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(RestServiceList,
                            typeMapping = NULL) {
      self[["endPoint"]] <-
        RestServiceList[["endPoint"]]
      self[["method"]] <-
        RestServiceList[["method"]]
      self[["consumes"]] <-
        RestServiceList[["consumes"]]
      self[["produces"]] <-
        RestServiceList[["produces"]]
      self[["url"]] <-
        RestServiceList[["url"]]
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
    fromJSONString = function(RestServiceJson,
                                  typeMapping = NULL) {
      RestServiceList <- jsonlite::fromJSON(
        RestServiceJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(RestServiceList)
      invisible(self)
    }
  )
)
