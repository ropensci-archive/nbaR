# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QueryCondition Class
#'
#' @field not 
#' @field field 
#' @field operator 
#' @field value 
#' @field and 
#' @field or 
#' @field constantScore 
#' @field boost 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryCondition <- R6::R6Class(
  'QueryCondition',
  public = list(
    `not` = NULL,
    `field` = NULL,
    `operator` = NULL,
    `value` = NULL,
    `and` = NULL,
    `or` = NULL,
    `constantScore` = NULL,
    `boost` = NULL,
    initialize = function(`not`, `field`, `operator`, `value`, `and`, `or`, `constantScore`, `boost`){
      if (!missing(`not`)) {
        stopifnot(is.character(`not`), length(`not`) == 1)
        self[['not']] <- `not`
      }
      if (!missing(`field`)) {
        stopifnot(is.character(`field`), length(`field`) == 1)
        self[['field']] <- `field`
      }
      if (!missing(`operator`)) {
        stopifnot(is.character(`operator`), length(`operator`) == 1)
        self[['operator']] <- `operator`
      }
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self[['value']] <- `value`
      }
      if (!missing(`and`)) {
        stopifnot(is.list(`and`), length(`and`) != 0)
        lapply(`and`, function(x) stopifnot(R6::is.R6(x)))
        self[['and']] <- `and`
      }
      if (!missing(`or`)) {
        stopifnot(is.list(`or`), length(`or`) != 0)
        lapply(`or`, function(x) stopifnot(R6::is.R6(x)))
        self[['or']] <- `or`
      }
      if (!missing(`constantScore`)) {
        self[['constantScore']] <- `constantScore`
      }
      if (!missing(`boost`)) {
        stopifnot(is.numeric(`boost`), length(`boost`) == 1)
        self[['boost']] <- `boost`
      }
    },

    toList = function() {
      QueryConditionList <- list()
        if (!is.null(self[['not']])) {
        QueryConditionList[['not']] <- self[['not']]
      }
        if (!is.null(self[['field']])) {
        QueryConditionList[['field']] <- self[['field']]
      }
        if (!is.null(self[['operator']])) {
        QueryConditionList[['operator']] <- self[['operator']]
      }
        if (!is.null(self[['value']])) {
        QueryConditionList[['value']] <- self[['value']]
      }
        if (!is.null(self[['and']])) {
        QueryConditionList[['and']] <- lapply(self[['and']], function(x) x$toList())
      }
        if (!is.null(self[['or']])) {
        QueryConditionList[['or']] <- lapply(self[['or']], function(x) x$toList())
      }
        if (!is.null(self[['constantScore']])) {
        QueryConditionList[['constantScore']] <- self[['constantScore']]
      }
        if (!is.null(self[['boost']])) {
        QueryConditionList[['boost']] <- self[['boost']]
      }
      ## omit empty nested lists in returned list
      QueryConditionList[sapply(QueryConditionList, length) > 0]
      },

    fromList = function(QueryConditionList) {
      if (!is.null(QueryConditionList[['not']])) {      
          self[['not']] <- QueryConditionList[['not']]
      }
      if (!is.null(QueryConditionList[['field']])) {      
          self[['field']] <- QueryConditionList[['field']]
      }
      if (!is.null(QueryConditionList[['operator']])) {      
          self[['operator']] <- QueryConditionList[['operator']]
      }
      if (!is.null(QueryConditionList[['value']])) {      
          self[['value']] <- QueryConditionList[['value']]
      }
      if (!is.null(QueryConditionList[['and']])) {      
          self[['and']] <- lapply(QueryConditionList[['and']], function(x) {
             QueryCondition$new()$fromList(x)            
          })
      }
      if (!is.null(QueryConditionList[['or']])) {      
          self[['or']] <- lapply(QueryConditionList[['or']], function(x) {
             QueryCondition$new()$fromList(x)            
          })
      }
      if (!is.null(QueryConditionList[['constantScore']])) {      
          self[['constantScore']] <- QueryConditionList[['constantScore']]
      }
      if (!is.null(QueryConditionList[['boost']])) {      
          self[['boost']] <- QueryConditionList[['boost']]
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(QueryConditionJson) {
      QueryConditionObject <- jsonlite::fromJSON(QueryConditionJson, simplifyVector=F)
      self[['not']] <- QueryConditionObject[['not']]
      self[['field']] <- QueryConditionObject[['field']]
      self[['operator']] <- QueryConditionObject[['operator']]
      self[['value']] <- QueryConditionObject[['value']]
      self[['and']] <- lapply(QueryConditionObject[['and']], function(x) QueryCondition$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['or']] <- lapply(QueryConditionObject[['or']], function(x) QueryCondition$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['constantScore']] <- QueryConditionObject[['constantScore']]
      self[['boost']] <- QueryConditionObject[['boost']]
      invisible(self)
    }
  )
)
