# Netherlands Biodiversity Api
# 
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
# 
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ServiceAccessPoint Class
#'
#' @field accessUri 
#' @field format 
#' @field variant 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceAccessPoint <- R6::R6Class(
  'ServiceAccessPoint',
  public = list(
    `accessUri` = NULL,
    `format` = NULL,
    `variant` = NULL,
    initialize = function(`accessUri`, `format`, `variant`){
      if (!missing(`accessUri`)) {
        stopifnot(is.character(`accessUri`), length(`accessUri`) == 1)
        self$`accessUri` <- `accessUri`
      }
      if (!missing(`format`)) {
        stopifnot(is.character(`format`), length(`format`) == 1)
        self$`format` <- `format`
      }
      if (!missing(`variant`)) {
        stopifnot(is.character(`variant`), length(`variant`) == 1)
        self$`variant` <- `variant`
      }
    },
    toJSON = function() {
      ServiceAccessPointObject <- list()
      if (!is.null(self$`accessUri`)) {
        ServiceAccessPointObject[['accessUri']] <- self$`accessUri`
      }
      if (!is.null(self$`format`)) {
        ServiceAccessPointObject[['format']] <- self$`format`
      }
      if (!is.null(self$`variant`)) {
        ServiceAccessPointObject[['variant']] <- self$`variant`
      }

      ServiceAccessPointObject
    },
    fromJSON = function(ServiceAccessPointJson) {
      ServiceAccessPointObject <- jsonlite::fromJSON(ServiceAccessPointJson)
      if (!is.null(ServiceAccessPointObject$`accessUri`)) {
        self$`accessUri` <- ServiceAccessPointObject$`accessUri`
      }
      if (!is.null(ServiceAccessPointObject$`format`)) {
        self$`format` <- ServiceAccessPointObject$`format`
      }
      if (!is.null(ServiceAccessPointObject$`variant`)) {
        self$`variant` <- ServiceAccessPointObject$`variant`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "accessUri": %s,
           "format": %s,
           "variant": %s
        }',
        self$`accessUri`,
        self$`format`,
        self$`variant`
      )
    },
    fromJSONString = function(ServiceAccessPointJson) {
      ServiceAccessPointObject <- jsonlite::fromJSON(ServiceAccessPointJson)
      self$`accessUri` <- ServiceAccessPointObject$`accessUri`
      self$`format` <- ServiceAccessPointObject$`format`
      self$`variant` <- ServiceAccessPointObject$`variant`
    }
  )
)