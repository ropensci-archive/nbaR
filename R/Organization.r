# Netherlands Biodiversity Api
# 
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
# 
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Organization Class
#'
#' @field agentText 
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Organization <- R6::R6Class(
  'Organization',
  public = list(
    `agentText` = NULL,
    `name` = NULL,
    initialize = function(`agentText`, `name`){
      if (!missing(`agentText`)) {
        stopifnot(is.character(`agentText`), length(`agentText`) == 1)
        self$`agentText` <- `agentText`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      OrganizationObject <- list()
      if (!is.null(self$`agentText`)) {
        OrganizationObject[['agentText']] <- self$`agentText`
      }
      if (!is.null(self$`name`)) {
        OrganizationObject[['name']] <- self$`name`
      }

      OrganizationObject
    },
    fromJSON = function(OrganizationJson) {
      OrganizationObject <- jsonlite::fromJSON(OrganizationJson)
      if (!is.null(OrganizationObject$`agentText`)) {
        self$`agentText` <- OrganizationObject$`agentText`
      }
      if (!is.null(OrganizationObject$`name`)) {
        self$`name` <- OrganizationObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "agentText": %s,
           "name": %s
        }',
        self$`agentText`,
        self$`name`
      )
    },
    fromJSONString = function(OrganizationJson) {
      OrganizationObject <- jsonlite::fromJSON(OrganizationJson)
      self$`agentText` <- OrganizationObject$`agentText`
      self$`name` <- OrganizationObject$`name`
    }
  )
)
