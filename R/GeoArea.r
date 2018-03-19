# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GeoArea Class
#'
#' @field sourceSystem 
#' @field sourceSystemId 
#' @field recordURI 
#' @field id 
#' @field areaType 
#' @field locality 
#' @field shape 
#' @field source 
#' @field isoCode 
#' @field countryNL 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoArea <- R6::R6Class(
  'GeoArea',
  public = list(
    `sourceSystem` = NULL,
    `sourceSystemId` = NULL,
    `recordURI` = NULL,
    `id` = NULL,
    `areaType` = NULL,
    `locality` = NULL,
    `shape` = NULL,
    `source` = NULL,
    `isoCode` = NULL,
    `countryNL` = NULL,
    initialize = function(`sourceSystem`, `sourceSystemId`, `recordURI`, `id`, `areaType`, `locality`, `shape`, `source`, `isoCode`, `countryNL`){
      if (!missing(`sourceSystem`)) {
        stopifnot(R6::is.R6(`sourceSystem`))
        self[['sourceSystem']] <- `sourceSystem`
      }
      if (!missing(`sourceSystemId`)) {
        stopifnot(is.character(`sourceSystemId`), length(`sourceSystemId`) == 1)
        self[['sourceSystemId']] <- `sourceSystemId`
      }
      if (!missing(`recordURI`)) {
        stopifnot(is.character(`recordURI`), length(`recordURI`) == 1)
        self[['recordURI']] <- `recordURI`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self[['id']] <- `id`
      }
      if (!missing(`areaType`)) {
        stopifnot(is.character(`areaType`), length(`areaType`) == 1)
        self[['areaType']] <- `areaType`
      }
      if (!missing(`locality`)) {
        stopifnot(is.character(`locality`), length(`locality`) == 1)
        self[['locality']] <- `locality`
      }
      if (!missing(`shape`)) {
        stopifnot(R6::is.R6(`shape`))
        self[['shape']] <- `shape`
      }
      if (!missing(`source`)) {
        stopifnot(is.character(`source`), length(`source`) == 1)
        self[['source']] <- `source`
      }
      if (!missing(`isoCode`)) {
        stopifnot(is.character(`isoCode`), length(`isoCode`) == 1)
        self[['isoCode']] <- `isoCode`
      }
      if (!missing(`countryNL`)) {
        stopifnot(is.character(`countryNL`), length(`countryNL`) == 1)
        self[['countryNL']] <- `countryNL`
      }
    },

    toList = function() {
      GeoAreaList <- list()
        if (!is.null(self[['sourceSystem']])) {
        GeoAreaList[['sourceSystem']] <- self[['sourceSystem']]$toList()
      }
        if (!is.null(self[['sourceSystemId']])) {
        GeoAreaList[['sourceSystemId']] <- self[['sourceSystemId']]
      }
        if (!is.null(self[['recordURI']])) {
        GeoAreaList[['recordURI']] <- self[['recordURI']]
      }
        if (!is.null(self[['id']])) {
        GeoAreaList[['id']] <- self[['id']]
      }
        if (!is.null(self[['areaType']])) {
        GeoAreaList[['areaType']] <- self[['areaType']]
      }
        if (!is.null(self[['locality']])) {
        GeoAreaList[['locality']] <- self[['locality']]
      }
        if (!is.null(self[['shape']])) {
        GeoAreaList[['shape']] <- self[['shape']]$toList()
      }
        if (!is.null(self[['source']])) {
        GeoAreaList[['source']] <- self[['source']]
      }
        if (!is.null(self[['isoCode']])) {
        GeoAreaList[['isoCode']] <- self[['isoCode']]
      }
        if (!is.null(self[['countryNL']])) {
        GeoAreaList[['countryNL']] <- self[['countryNL']]
      }
      ## omit empty nested lists in returned list
      GeoAreaList[sapply(GeoAreaList, length) > 0]
      },

    fromList = function(GeoAreaList) {
      if (!is.null(GeoAreaList[['sourceSystem']])) {      
          self[['sourceSystem']] <- SourceSystem$new()$fromList(GeoAreaList[['sourceSystem']])
      }
      if (!is.null(GeoAreaList[['sourceSystemId']])) {      
          self[['sourceSystemId']] <- GeoAreaList[['sourceSystemId']]
      }
      if (!is.null(GeoAreaList[['recordURI']])) {      
          self[['recordURI']] <- GeoAreaList[['recordURI']]
      }
      if (!is.null(GeoAreaList[['id']])) {      
          self[['id']] <- GeoAreaList[['id']]
      }
      if (!is.null(GeoAreaList[['areaType']])) {      
          self[['areaType']] <- GeoAreaList[['areaType']]
      }
      if (!is.null(GeoAreaList[['locality']])) {      
          self[['locality']] <- GeoAreaList[['locality']]
      }
      if (!is.null(GeoAreaList[['shape']])) {      
          self[['shape']] <- GeoJsonObject$new()$fromList(GeoAreaList[['shape']])
      }
      if (!is.null(GeoAreaList[['source']])) {      
          self[['source']] <- GeoAreaList[['source']]
      }
      if (!is.null(GeoAreaList[['isoCode']])) {      
          self[['isoCode']] <- GeoAreaList[['isoCode']]
      }
      if (!is.null(GeoAreaList[['countryNL']])) {      
          self[['countryNL']] <- GeoAreaList[['countryNL']]
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(GeoAreaJson) {
      GeoAreaObject <- jsonlite::fromJSON(GeoAreaJson, simplifyVector=F)
      SourceSystemObject <- SourceSystem$new()
      self[['sourceSystem']] <- SourceSystemObject$fromJSONString(jsonlite::toJSON(GeoAreaObject[['sourceSystem']], auto_unbox = TRUE))
      self[['sourceSystemId']] <- GeoAreaObject[['sourceSystemId']]
      self[['recordURI']] <- GeoAreaObject[['recordURI']]
      self[['id']] <- GeoAreaObject[['id']]
      self[['areaType']] <- GeoAreaObject[['areaType']]
      self[['locality']] <- GeoAreaObject[['locality']]
      GeoJsonObjectObject <- GeoJsonObject$new()
      self[['shape']] <- GeoJsonObjectObject$fromJSONString(jsonlite::toJSON(GeoAreaObject[['shape']], auto_unbox = TRUE))
      self[['source']] <- GeoAreaObject[['source']]
      self[['isoCode']] <- GeoAreaObject[['isoCode']]
      self[['countryNL']] <- GeoAreaObject[['countryNL']]
      invisible(self)
    }
  )
)