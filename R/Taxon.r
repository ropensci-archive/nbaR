# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Taxon Class
#'
#' @field sourceSystem 
#' @field sourceSystemId 
#' @field recordURI 
#' @field id 
#' @field sourceSystemParentId 
#' @field taxonRank 
#' @field taxonRemarks 
#' @field occurrenceStatusVerbatim 
#' @field acceptedName 
#' @field defaultClassification 
#' @field systemClassification 
#' @field synonyms 
#' @field vernacularNames 
#' @field descriptions 
#' @field references 
#' @field experts 
#' @field validName 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Taxon <- R6::R6Class(
  'Taxon',
  public = list(
    `sourceSystem` = NULL,
    `sourceSystemId` = NULL,
    `recordURI` = NULL,
    `id` = NULL,
    `sourceSystemParentId` = NULL,
    `taxonRank` = NULL,
    `taxonRemarks` = NULL,
    `occurrenceStatusVerbatim` = NULL,
    `acceptedName` = NULL,
    `defaultClassification` = NULL,
    `systemClassification` = NULL,
    `synonyms` = NULL,
    `vernacularNames` = NULL,
    `descriptions` = NULL,
    `references` = NULL,
    `experts` = NULL,
    `validName` = NULL,
    initialize = function(`sourceSystem`, `sourceSystemId`, `recordURI`, `id`, `sourceSystemParentId`, `taxonRank`, `taxonRemarks`, `occurrenceStatusVerbatim`, `acceptedName`, `defaultClassification`, `systemClassification`, `synonyms`, `vernacularNames`, `descriptions`, `references`, `experts`, `validName`){
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
      if (!missing(`sourceSystemParentId`)) {
        stopifnot(is.character(`sourceSystemParentId`), length(`sourceSystemParentId`) == 1)
        self[['sourceSystemParentId']] <- `sourceSystemParentId`
      }
      if (!missing(`taxonRank`)) {
        stopifnot(is.character(`taxonRank`), length(`taxonRank`) == 1)
        self[['taxonRank']] <- `taxonRank`
      }
      if (!missing(`taxonRemarks`)) {
        stopifnot(is.character(`taxonRemarks`), length(`taxonRemarks`) == 1)
        self[['taxonRemarks']] <- `taxonRemarks`
      }
      if (!missing(`occurrenceStatusVerbatim`)) {
        stopifnot(is.character(`occurrenceStatusVerbatim`), length(`occurrenceStatusVerbatim`) == 1)
        self[['occurrenceStatusVerbatim']] <- `occurrenceStatusVerbatim`
      }
      if (!missing(`acceptedName`)) {
        stopifnot(R6::is.R6(`acceptedName`))
        self[['acceptedName']] <- `acceptedName`
      }
      if (!missing(`defaultClassification`)) {
        stopifnot(R6::is.R6(`defaultClassification`))
        self[['defaultClassification']] <- `defaultClassification`
      }
      if (!missing(`systemClassification`)) {
        stopifnot(is.list(`systemClassification`), length(`systemClassification`) != 0)
        lapply(`systemClassification`, function(x) stopifnot(R6::is.R6(x)))
        self[['systemClassification']] <- `systemClassification`
      }
      if (!missing(`synonyms`)) {
        stopifnot(is.list(`synonyms`), length(`synonyms`) != 0)
        lapply(`synonyms`, function(x) stopifnot(R6::is.R6(x)))
        self[['synonyms']] <- `synonyms`
      }
      if (!missing(`vernacularNames`)) {
        stopifnot(is.list(`vernacularNames`), length(`vernacularNames`) != 0)
        lapply(`vernacularNames`, function(x) stopifnot(R6::is.R6(x)))
        self[['vernacularNames']] <- `vernacularNames`
      }
      if (!missing(`descriptions`)) {
        stopifnot(is.list(`descriptions`), length(`descriptions`) != 0)
        lapply(`descriptions`, function(x) stopifnot(R6::is.R6(x)))
        self[['descriptions']] <- `descriptions`
      }
      if (!missing(`references`)) {
        stopifnot(is.list(`references`), length(`references`) != 0)
        lapply(`references`, function(x) stopifnot(R6::is.R6(x)))
        self[['references']] <- `references`
      }
      if (!missing(`experts`)) {
        stopifnot(is.list(`experts`), length(`experts`) != 0)
        lapply(`experts`, function(x) stopifnot(R6::is.R6(x)))
        self[['experts']] <- `experts`
      }
      if (!missing(`validName`)) {
        stopifnot(R6::is.R6(`validName`))
        self[['validName']] <- `validName`
      }
    },

    toList = function() {
      TaxonList <- list()
        if (!is.null(self[['sourceSystem']])) {
        TaxonList[['sourceSystem']] <- self[['sourceSystem']]$toList()
      }
        if (!is.null(self[['sourceSystemId']])) {
        TaxonList[['sourceSystemId']] <- self[['sourceSystemId']]
      }
        if (!is.null(self[['recordURI']])) {
        TaxonList[['recordURI']] <- self[['recordURI']]
      }
        if (!is.null(self[['id']])) {
        TaxonList[['id']] <- self[['id']]
      }
        if (!is.null(self[['sourceSystemParentId']])) {
        TaxonList[['sourceSystemParentId']] <- self[['sourceSystemParentId']]
      }
        if (!is.null(self[['taxonRank']])) {
        TaxonList[['taxonRank']] <- self[['taxonRank']]
      }
        if (!is.null(self[['taxonRemarks']])) {
        TaxonList[['taxonRemarks']] <- self[['taxonRemarks']]
      }
        if (!is.null(self[['occurrenceStatusVerbatim']])) {
        TaxonList[['occurrenceStatusVerbatim']] <- self[['occurrenceStatusVerbatim']]
      }
        if (!is.null(self[['acceptedName']])) {
        TaxonList[['acceptedName']] <- self[['acceptedName']]$toList()
      }
        if (!is.null(self[['defaultClassification']])) {
        TaxonList[['defaultClassification']] <- self[['defaultClassification']]$toList()
      }
        if (!is.null(self[['systemClassification']])) {
        TaxonList[['systemClassification']] <- lapply(self[['systemClassification']], function(x) x$toList())
      }
        if (!is.null(self[['synonyms']])) {
        TaxonList[['synonyms']] <- lapply(self[['synonyms']], function(x) x$toList())
      }
        if (!is.null(self[['vernacularNames']])) {
        TaxonList[['vernacularNames']] <- lapply(self[['vernacularNames']], function(x) x$toList())
      }
        if (!is.null(self[['descriptions']])) {
        TaxonList[['descriptions']] <- lapply(self[['descriptions']], function(x) x$toList())
      }
        if (!is.null(self[['references']])) {
        TaxonList[['references']] <- lapply(self[['references']], function(x) x$toList())
      }
        if (!is.null(self[['experts']])) {
        TaxonList[['experts']] <- lapply(self[['experts']], function(x) x$toList())
      }
        if (!is.null(self[['validName']])) {
        TaxonList[['validName']] <- self[['validName']]$toList()
      }
      ## omit empty nested lists in returned list
      TaxonList[sapply(TaxonList, length) > 0]
      },

    fromList = function(TaxonList) {
      if (!is.null(TaxonList[['sourceSystem']])) {      
          self[['sourceSystem']] <- SourceSystem$new()$fromList(TaxonList[['sourceSystem']])
      }
      if (!is.null(TaxonList[['sourceSystemId']])) {      
          self[['sourceSystemId']] <- TaxonList[['sourceSystemId']]
      }
      if (!is.null(TaxonList[['recordURI']])) {      
          self[['recordURI']] <- TaxonList[['recordURI']]
      }
      if (!is.null(TaxonList[['id']])) {      
          self[['id']] <- TaxonList[['id']]
      }
      if (!is.null(TaxonList[['sourceSystemParentId']])) {      
          self[['sourceSystemParentId']] <- TaxonList[['sourceSystemParentId']]
      }
      if (!is.null(TaxonList[['taxonRank']])) {      
          self[['taxonRank']] <- TaxonList[['taxonRank']]
      }
      if (!is.null(TaxonList[['taxonRemarks']])) {      
          self[['taxonRemarks']] <- TaxonList[['taxonRemarks']]
      }
      if (!is.null(TaxonList[['occurrenceStatusVerbatim']])) {      
          self[['occurrenceStatusVerbatim']] <- TaxonList[['occurrenceStatusVerbatim']]
      }
      if (!is.null(TaxonList[['acceptedName']])) {      
          self[['acceptedName']] <- ScientificName$new()$fromList(TaxonList[['acceptedName']])
      }
      if (!is.null(TaxonList[['defaultClassification']])) {      
          self[['defaultClassification']] <- DefaultClassification$new()$fromList(TaxonList[['defaultClassification']])
      }
      if (!is.null(TaxonList[['systemClassification']])) {      
          self[['systemClassification']] <- lapply(TaxonList[['systemClassification']], function(x) {
             Monomial$new()$fromList(x)            
          })
      }
      if (!is.null(TaxonList[['synonyms']])) {      
          self[['synonyms']] <- lapply(TaxonList[['synonyms']], function(x) {
             ScientificName$new()$fromList(x)            
          })
      }
      if (!is.null(TaxonList[['vernacularNames']])) {      
          self[['vernacularNames']] <- lapply(TaxonList[['vernacularNames']], function(x) {
             VernacularName$new()$fromList(x)            
          })
      }
      if (!is.null(TaxonList[['descriptions']])) {      
          self[['descriptions']] <- lapply(TaxonList[['descriptions']], function(x) {
             TaxonDescription$new()$fromList(x)            
          })
      }
      if (!is.null(TaxonList[['references']])) {      
          self[['references']] <- lapply(TaxonList[['references']], function(x) {
             Reference$new()$fromList(x)            
          })
      }
      if (!is.null(TaxonList[['experts']])) {      
          self[['experts']] <- lapply(TaxonList[['experts']], function(x) {
             Person$new()$fromList(x)            
          })
      }
      if (!is.null(TaxonList[['validName']])) {      
          self[['validName']] <- ScientificName$new()$fromList(TaxonList[['validName']])
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(TaxonJson) {
      TaxonObject <- jsonlite::fromJSON(TaxonJson, simplifyVector=F)
      SourceSystemObject <- SourceSystem$new()
      self[['sourceSystem']] <- SourceSystemObject$fromJSONString(jsonlite::toJSON(TaxonObject[['sourceSystem']], auto_unbox = TRUE))
      self[['sourceSystemId']] <- TaxonObject[['sourceSystemId']]
      self[['recordURI']] <- TaxonObject[['recordURI']]
      self[['id']] <- TaxonObject[['id']]
      self[['sourceSystemParentId']] <- TaxonObject[['sourceSystemParentId']]
      self[['taxonRank']] <- TaxonObject[['taxonRank']]
      self[['taxonRemarks']] <- TaxonObject[['taxonRemarks']]
      self[['occurrenceStatusVerbatim']] <- TaxonObject[['occurrenceStatusVerbatim']]
      ScientificNameObject <- ScientificName$new()
      self[['acceptedName']] <- ScientificNameObject$fromJSONString(jsonlite::toJSON(TaxonObject[['acceptedName']], auto_unbox = TRUE))
      DefaultClassificationObject <- DefaultClassification$new()
      self[['defaultClassification']] <- DefaultClassificationObject$fromJSONString(jsonlite::toJSON(TaxonObject[['defaultClassification']], auto_unbox = TRUE))
      self[['systemClassification']] <- lapply(TaxonObject[['systemClassification']], function(x) Monomial$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['synonyms']] <- lapply(TaxonObject[['synonyms']], function(x) ScientificName$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['vernacularNames']] <- lapply(TaxonObject[['vernacularNames']], function(x) VernacularName$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['descriptions']] <- lapply(TaxonObject[['descriptions']], function(x) TaxonDescription$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['references']] <- lapply(TaxonObject[['references']], function(x) Reference$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['experts']] <- lapply(TaxonObject[['experts']], function(x) Person$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      ScientificNameObject <- ScientificName$new()
      self[['validName']] <- ScientificNameObject$fromJSONString(jsonlite::toJSON(TaxonObject[['validName']], auto_unbox = TRUE))
      invisible(self)
    }
  )
)