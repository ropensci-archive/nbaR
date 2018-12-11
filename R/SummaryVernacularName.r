# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SummaryVernacularName Class
#'
#'
#'
#' @field name  character
#' @field language  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor SummaryVernacularName object.
#'
#' }
#' \item{\code{$fromList(SummaryVernacularNameList)}}{
#'
#'   Create SummaryVernacularName object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of SummaryVernacularName.
#'
#' }
#' \item{\code{fromJSONString(SummaryVernacularNameJson)}}{
#'
#'   Create SummaryVernacularName object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of SummaryVernacularName.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SummaryVernacularName <- R6::R6Class(
  "SummaryVernacularName",
  public = list(
    `name` = NULL,
    `language` = NULL,
    initialize = function(
                              `name`,
                              `language`) {
      if (!missing(`name`)) {
        stopifnot(
          is.character(`name`),
          length(`name`) == 1
        )
        self[["name"]] <- `name`
      }
      if (!missing(`language`)) {
        stopifnot(
          is.character(`language`),
          length(`language`) == 1
        )
        self[["language"]] <- `language`
      }
    },
    toList = function() {
      SummaryVernacularNameList <- list()
      if (!is.null(self[["name"]])) {
        SummaryVernacularNameList[["name"]] <-
          self[["name"]]
      }
      if (!is.null(self[["language"]])) {
        SummaryVernacularNameList[["language"]] <-
          self[["language"]]
      }
      ## omit empty nested lists in returned list
      SummaryVernacularNameList[vapply(
        SummaryVernacularNameList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(SummaryVernacularNameList,
                            typeMapping = NULL) {
      self[["name"]] <-
        SummaryVernacularNameList[["name"]]
      self[["language"]] <-
        SummaryVernacularNameList[["language"]]
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
    fromJSONString = function(SummaryVernacularNameJson,
                                  typeMapping = NULL) {
      SummaryVernacularNameList <- jsonlite::fromJSON(
        SummaryVernacularNameJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(SummaryVernacularNameList)
      #        self[["name"]] <-
      #                SummaryVernacularNameList[["name"]]
      #        self[["language"]] <-
      #                SummaryVernacularNameList[["language"]]
      invisible(self)
    }
  )
)
