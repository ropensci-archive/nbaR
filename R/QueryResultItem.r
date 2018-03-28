# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QueryResultItem Class
#'
#' @field score 
#' @field item 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryResultItem <- R6::R6Class(
  'QueryResultItem',
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
      QueryResultItemList <- list()
        if (!is.null(self[['score']])) {
        QueryResultItemList[['score']] <- self[['score']]
      }
        if (!is.null(self[['item']])) {
        QueryResultItemList[['item']] <- self[['item']]$toList()
      }
      ## omit empty nested lists in returned list
      QueryResultItemList[sapply(QueryResultItemList, length) > 0]
      },

    fromList = function(QueryResultItemList) {
      if (!is.null(QueryResultItemList[['score']])) {      
          self[['score']] <- QueryResultItemList[['score']]
      }
      if (!is.null(QueryResultItemList[['item']])) {      
          self[['item']] <- Specimen$new()$fromList(QueryResultItemList[['item']])
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(QueryResultItemJson) {
      QueryResultItemObject <- jsonlite::fromJSON(QueryResultItemJson, simplifyVector=F)
      self[['score']] <- QueryResultItemObject[['score']]
      SpecimenObject <- Specimen$new()
      self[['item']] <- SpecimenObject$fromJSONString(jsonlite::toJSON(QueryResultItemObject[['item']], auto_unbox = TRUE))
      invisible(self)
    }
  )
)
