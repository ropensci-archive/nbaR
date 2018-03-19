# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Person Class
#'
#' @field agentText 
#' @field fullName 
#' @field organization 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Person <- R6::R6Class(
  'Person',
  public = list(
    `agentText` = NULL,
    `fullName` = NULL,
    `organization` = NULL,
    initialize = function(`agentText`, `fullName`, `organization`){
      if (!missing(`agentText`)) {
        stopifnot(is.character(`agentText`), length(`agentText`) == 1)
        self[['agentText']] <- `agentText`
      }
      if (!missing(`fullName`)) {
        stopifnot(is.character(`fullName`), length(`fullName`) == 1)
        self[['fullName']] <- `fullName`
      }
      if (!missing(`organization`)) {
        stopifnot(R6::is.R6(`organization`))
        self[['organization']] <- `organization`
      }
    },

    toList = function() {
      PersonList <- list()
        if (!is.null(self[['agentText']])) {
        PersonList[['agentText']] <- self[['agentText']]
      }
        if (!is.null(self[['fullName']])) {
        PersonList[['fullName']] <- self[['fullName']]
      }
        if (!is.null(self[['organization']])) {
        PersonList[['organization']] <- self[['organization']]$toList()
      }
      ## omit empty nested lists in returned list
      PersonList[sapply(PersonList, length) > 0]
      },

    fromList = function(PersonList) {
      if (!is.null(PersonList[['agentText']])) {      
          self[['agentText']] <- PersonList[['agentText']]
      }
      if (!is.null(PersonList[['fullName']])) {      
          self[['fullName']] <- PersonList[['fullName']]
      }
      if (!is.null(PersonList[['organization']])) {      
          self[['organization']] <- Organization$new()$fromList(PersonList[['organization']])
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(PersonJson) {
      PersonObject <- jsonlite::fromJSON(PersonJson, simplifyVector=F)
      self[['agentText']] <- PersonObject[['agentText']]
      self[['fullName']] <- PersonObject[['fullName']]
      OrganizationObject <- Organization$new()
      self[['organization']] <- OrganizationObject$fromJSONString(jsonlite::toJSON(PersonObject[['organization']], auto_unbox = TRUE))
      invisible(self)
    }
  )
)