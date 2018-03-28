# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QueryResultItemObject Class
#'
#' @field score 
#' @field item 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryResultItemObject <- R6::R6Class(
  'QueryResultItemObject',
  public = list(
    `score` = NULL,
    `item` = NULL,
    initialize = function(`score`, `item`){
      if (!missing(`score`)) {
        stopifnot(is.numeric(`score`), length(`score`) == 1)
        self[['score']] <- `score`
      }
      if (!missing(`item`)) {
        stopifnot(R6::is.R6(`item`))
        self[['item']] <- `item`
      }
    },

    toList = function() {
      QueryResultItemObjectList <- list()
        if (!is.null(self[['score']])) {
        QueryResultItemObjectList[['score']] <- self[['score']]
      }
        if (!is.null(self[['item']])) {
        QueryResultItemObjectList[['item']] <- self[['item']]$toList()
      }
      ## omit empty nested lists in returned list
      QueryResultItemObjectList[sapply(QueryResultItemObjectList, length) > 0]
      },

    fromList = function(QueryResultItemObjectList) {
      if (!is.null(QueryResultItemObjectList[['score']])) {      
          self[['score']] <- QueryResultItemObjectList[['score']]
      }
      if (!is.null(QueryResultItemObjectList[['item']])) {      
          self[['item']] <- Specimen$new()$fromList(QueryResultItemObjectList[['item']])
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(QueryResultItemObjectJson) {
      QueryResultItemObjectObject <- jsonlite::fromJSON(QueryResultItemObjectJson, simplifyVector=F)
      self[['score']] <- QueryResultItemObjectObject[['score']]
      SpecimenObject <- Specimen$new()
      self[['item']] <- SpecimenObject$fromJSONString(jsonlite::toJSON(QueryResultItemObjectObject[['item']], auto_unbox = TRUE))
      invisible(self)
    }
  )
)
