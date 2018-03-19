# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DefaultClassification Class
#'
#' @field kingdom 
#' @field phylum 
#' @field className 
#' @field order 
#' @field superFamily 
#' @field family 
#' @field genus 
#' @field subgenus 
#' @field specificEpithet 
#' @field infraspecificEpithet 
#' @field infraspecificRank 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultClassification <- R6::R6Class(
  'DefaultClassification',
  public = list(
    `kingdom` = NULL,
    `phylum` = NULL,
    `className` = NULL,
    `order` = NULL,
    `superFamily` = NULL,
    `family` = NULL,
    `genus` = NULL,
    `subgenus` = NULL,
    `specificEpithet` = NULL,
    `infraspecificEpithet` = NULL,
    `infraspecificRank` = NULL,
    initialize = function(`kingdom`, `phylum`, `className`, `order`, `superFamily`, `family`, `genus`, `subgenus`, `specificEpithet`, `infraspecificEpithet`, `infraspecificRank`){
      if (!missing(`kingdom`)) {
        stopifnot(is.character(`kingdom`), length(`kingdom`) == 1)
        self[['kingdom']] <- `kingdom`
      }
      if (!missing(`phylum`)) {
        stopifnot(is.character(`phylum`), length(`phylum`) == 1)
        self[['phylum']] <- `phylum`
      }
      if (!missing(`className`)) {
        stopifnot(is.character(`className`), length(`className`) == 1)
        self[['className']] <- `className`
      }
      if (!missing(`order`)) {
        stopifnot(is.character(`order`), length(`order`) == 1)
        self[['order']] <- `order`
      }
      if (!missing(`superFamily`)) {
        stopifnot(is.character(`superFamily`), length(`superFamily`) == 1)
        self[['superFamily']] <- `superFamily`
      }
      if (!missing(`family`)) {
        stopifnot(is.character(`family`), length(`family`) == 1)
        self[['family']] <- `family`
      }
      if (!missing(`genus`)) {
        stopifnot(is.character(`genus`), length(`genus`) == 1)
        self[['genus']] <- `genus`
      }
      if (!missing(`subgenus`)) {
        stopifnot(is.character(`subgenus`), length(`subgenus`) == 1)
        self[['subgenus']] <- `subgenus`
      }
      if (!missing(`specificEpithet`)) {
        stopifnot(is.character(`specificEpithet`), length(`specificEpithet`) == 1)
        self[['specificEpithet']] <- `specificEpithet`
      }
      if (!missing(`infraspecificEpithet`)) {
        stopifnot(is.character(`infraspecificEpithet`), length(`infraspecificEpithet`) == 1)
        self[['infraspecificEpithet']] <- `infraspecificEpithet`
      }
      if (!missing(`infraspecificRank`)) {
        stopifnot(is.character(`infraspecificRank`), length(`infraspecificRank`) == 1)
        self[['infraspecificRank']] <- `infraspecificRank`
      }
    },

    toList = function() {
      DefaultClassificationList <- list()
        if (!is.null(self[['kingdom']])) {
        DefaultClassificationList[['kingdom']] <- self[['kingdom']]
      }
        if (!is.null(self[['phylum']])) {
        DefaultClassificationList[['phylum']] <- self[['phylum']]
      }
        if (!is.null(self[['className']])) {
        DefaultClassificationList[['className']] <- self[['className']]
      }
        if (!is.null(self[['order']])) {
        DefaultClassificationList[['order']] <- self[['order']]
      }
        if (!is.null(self[['superFamily']])) {
        DefaultClassificationList[['superFamily']] <- self[['superFamily']]
      }
        if (!is.null(self[['family']])) {
        DefaultClassificationList[['family']] <- self[['family']]
      }
        if (!is.null(self[['genus']])) {
        DefaultClassificationList[['genus']] <- self[['genus']]
      }
        if (!is.null(self[['subgenus']])) {
        DefaultClassificationList[['subgenus']] <- self[['subgenus']]
      }
        if (!is.null(self[['specificEpithet']])) {
        DefaultClassificationList[['specificEpithet']] <- self[['specificEpithet']]
      }
        if (!is.null(self[['infraspecificEpithet']])) {
        DefaultClassificationList[['infraspecificEpithet']] <- self[['infraspecificEpithet']]
      }
        if (!is.null(self[['infraspecificRank']])) {
        DefaultClassificationList[['infraspecificRank']] <- self[['infraspecificRank']]
      }
      ## omit empty nested lists in returned list
      DefaultClassificationList[sapply(DefaultClassificationList, length) > 0]
      },

    fromList = function(DefaultClassificationList) {
      if (!is.null(DefaultClassificationList[['kingdom']])) {      
          self[['kingdom']] <- DefaultClassificationList[['kingdom']]
      }
      if (!is.null(DefaultClassificationList[['phylum']])) {      
          self[['phylum']] <- DefaultClassificationList[['phylum']]
      }
      if (!is.null(DefaultClassificationList[['className']])) {      
          self[['className']] <- DefaultClassificationList[['className']]
      }
      if (!is.null(DefaultClassificationList[['order']])) {      
          self[['order']] <- DefaultClassificationList[['order']]
      }
      if (!is.null(DefaultClassificationList[['superFamily']])) {      
          self[['superFamily']] <- DefaultClassificationList[['superFamily']]
      }
      if (!is.null(DefaultClassificationList[['family']])) {      
          self[['family']] <- DefaultClassificationList[['family']]
      }
      if (!is.null(DefaultClassificationList[['genus']])) {      
          self[['genus']] <- DefaultClassificationList[['genus']]
      }
      if (!is.null(DefaultClassificationList[['subgenus']])) {      
          self[['subgenus']] <- DefaultClassificationList[['subgenus']]
      }
      if (!is.null(DefaultClassificationList[['specificEpithet']])) {      
          self[['specificEpithet']] <- DefaultClassificationList[['specificEpithet']]
      }
      if (!is.null(DefaultClassificationList[['infraspecificEpithet']])) {      
          self[['infraspecificEpithet']] <- DefaultClassificationList[['infraspecificEpithet']]
      }
      if (!is.null(DefaultClassificationList[['infraspecificRank']])) {      
          self[['infraspecificRank']] <- DefaultClassificationList[['infraspecificRank']]
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(DefaultClassificationJson) {
      DefaultClassificationObject <- jsonlite::fromJSON(DefaultClassificationJson, simplifyVector=F)
      self[['kingdom']] <- DefaultClassificationObject[['kingdom']]
      self[['phylum']] <- DefaultClassificationObject[['phylum']]
      self[['className']] <- DefaultClassificationObject[['className']]
      self[['order']] <- DefaultClassificationObject[['order']]
      self[['superFamily']] <- DefaultClassificationObject[['superFamily']]
      self[['family']] <- DefaultClassificationObject[['family']]
      self[['genus']] <- DefaultClassificationObject[['genus']]
      self[['subgenus']] <- DefaultClassificationObject[['subgenus']]
      self[['specificEpithet']] <- DefaultClassificationObject[['specificEpithet']]
      self[['infraspecificEpithet']] <- DefaultClassificationObject[['infraspecificEpithet']]
      self[['infraspecificRank']] <- DefaultClassificationObject[['infraspecificRank']]
      invisible(self)
    }
  )
)