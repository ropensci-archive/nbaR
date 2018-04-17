# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Specimen Class
#'
#' @field sourceSystem 
#' @field sourceSystemId 
#' @field recordURI 
#' @field id 
#' @field unitID 
#' @field unitGUID 
#' @field collectorsFieldNumber 
#' @field assemblageID 
#' @field sourceInstitutionID 
#' @field sourceID 
#' @field owner 
#' @field licenseType 
#' @field license 
#' @field recordBasis 
#' @field kindOfUnit 
#' @field collectionType 
#' @field sex 
#' @field phaseOrStage 
#' @field title 
#' @field notes 
#' @field preparationType 
#' @field numberOfSpecimen 
#' @field fromCaptivity 
#' @field objectPublic 
#' @field multiMediaPublic 
#' @field acquiredFrom 
#' @field gatheringEvent 
#' @field identifications 
#' @field associatedMultiMediaUris 
#' @field theme 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Specimen <- R6::R6Class(
  'Specimen',
  public = list(
    `sourceSystem` = NULL,
    `sourceSystemId` = NULL,
    `recordURI` = NULL,
    `id` = NULL,
    `unitID` = NULL,
    `unitGUID` = NULL,
    `collectorsFieldNumber` = NULL,
    `assemblageID` = NULL,
    `sourceInstitutionID` = NULL,
    `sourceID` = NULL,
    `owner` = NULL,
    `licenseType` = NULL,
    `license` = NULL,
    `recordBasis` = NULL,
    `kindOfUnit` = NULL,
    `collectionType` = NULL,
    `sex` = NULL,
    `phaseOrStage` = NULL,
    `title` = NULL,
    `notes` = NULL,
    `preparationType` = NULL,
    `numberOfSpecimen` = NULL,
    `fromCaptivity` = NULL,
    `objectPublic` = NULL,
    `multiMediaPublic` = NULL,
    `acquiredFrom` = NULL,
    `gatheringEvent` = NULL,
    `identifications` = NULL,
    `associatedMultiMediaUris` = NULL,
    `theme` = NULL,
    initialize = function(`sourceSystem`, `sourceSystemId`, `recordURI`, `id`, `unitID`, `unitGUID`, `collectorsFieldNumber`, `assemblageID`, `sourceInstitutionID`, `sourceID`, `owner`, `licenseType`, `license`, `recordBasis`, `kindOfUnit`, `collectionType`, `sex`, `phaseOrStage`, `title`, `notes`, `preparationType`, `numberOfSpecimen`, `fromCaptivity`, `objectPublic`, `multiMediaPublic`, `acquiredFrom`, `gatheringEvent`, `identifications`, `associatedMultiMediaUris`, `theme`){
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
      if (!missing(`unitID`)) {
        stopifnot(is.character(`unitID`), length(`unitID`) == 1)
        self[['unitID']] <- `unitID`
      }
      if (!missing(`unitGUID`)) {
        stopifnot(is.character(`unitGUID`), length(`unitGUID`) == 1)
        self[['unitGUID']] <- `unitGUID`
      }
      if (!missing(`collectorsFieldNumber`)) {
        stopifnot(is.character(`collectorsFieldNumber`), length(`collectorsFieldNumber`) == 1)
        self[['collectorsFieldNumber']] <- `collectorsFieldNumber`
      }
      if (!missing(`assemblageID`)) {
        stopifnot(is.character(`assemblageID`), length(`assemblageID`) == 1)
        self[['assemblageID']] <- `assemblageID`
      }
      if (!missing(`sourceInstitutionID`)) {
        stopifnot(is.character(`sourceInstitutionID`), length(`sourceInstitutionID`) == 1)
        self[['sourceInstitutionID']] <- `sourceInstitutionID`
      }
      if (!missing(`sourceID`)) {
        stopifnot(is.character(`sourceID`), length(`sourceID`) == 1)
        self[['sourceID']] <- `sourceID`
      }
      if (!missing(`owner`)) {
        stopifnot(is.character(`owner`), length(`owner`) == 1)
        self[['owner']] <- `owner`
      }
      if (!missing(`licenseType`)) {
        stopifnot(is.character(`licenseType`), length(`licenseType`) == 1)
        self[['licenseType']] <- `licenseType`
      }
      if (!missing(`license`)) {
        stopifnot(is.character(`license`), length(`license`) == 1)
        self[['license']] <- `license`
      }
      if (!missing(`recordBasis`)) {
        stopifnot(is.character(`recordBasis`), length(`recordBasis`) == 1)
        self[['recordBasis']] <- `recordBasis`
      }
      if (!missing(`kindOfUnit`)) {
        stopifnot(is.character(`kindOfUnit`), length(`kindOfUnit`) == 1)
        self[['kindOfUnit']] <- `kindOfUnit`
      }
      if (!missing(`collectionType`)) {
        stopifnot(is.character(`collectionType`), length(`collectionType`) == 1)
        self[['collectionType']] <- `collectionType`
      }
      if (!missing(`sex`)) {
        stopifnot(is.character(`sex`), length(`sex`) == 1)
        self[['sex']] <- `sex`
      }
      if (!missing(`phaseOrStage`)) {
        stopifnot(is.character(`phaseOrStage`), length(`phaseOrStage`) == 1)
        self[['phaseOrStage']] <- `phaseOrStage`
      }
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self[['title']] <- `title`
      }
      if (!missing(`notes`)) {
        stopifnot(is.character(`notes`), length(`notes`) == 1)
        self[['notes']] <- `notes`
      }
      if (!missing(`preparationType`)) {
        stopifnot(is.character(`preparationType`), length(`preparationType`) == 1)
        self[['preparationType']] <- `preparationType`
      }
      if (!missing(`numberOfSpecimen`)) {
        stopifnot(is.numeric(`numberOfSpecimen`), length(`numberOfSpecimen`) == 1)
        self[['numberOfSpecimen']] <- `numberOfSpecimen`
      }
      if (!missing(`fromCaptivity`)) {
        self[['fromCaptivity']] <- `fromCaptivity`
      }
      if (!missing(`objectPublic`)) {
        self[['objectPublic']] <- `objectPublic`
      }
      if (!missing(`multiMediaPublic`)) {
        self[['multiMediaPublic']] <- `multiMediaPublic`
      }
      if (!missing(`acquiredFrom`)) {
        stopifnot(R6::is.R6(`acquiredFrom`))
        self[['acquiredFrom']] <- `acquiredFrom`
      }
      if (!missing(`gatheringEvent`)) {
        stopifnot(R6::is.R6(`gatheringEvent`))
        self[['gatheringEvent']] <- `gatheringEvent`
      }
      if (!missing(`identifications`)) {
        stopifnot(is.list(`identifications`), length(`identifications`) != 0)
        lapply(`identifications`, function(x) stopifnot(R6::is.R6(x)))
        self[['identifications']] <- `identifications`
      }
      if (!missing(`associatedMultiMediaUris`)) {
        stopifnot(is.list(`associatedMultiMediaUris`), length(`associatedMultiMediaUris`) != 0)
        lapply(`associatedMultiMediaUris`, function(x) stopifnot(R6::is.R6(x)))
        self[['associatedMultiMediaUris']] <- `associatedMultiMediaUris`
      }
      if (!missing(`theme`)) {
        stopifnot(is.list(`theme`), length(`theme`) != 0)
        lapply(`theme`, function(x) stopifnot(is.character(x)))
        self[['theme']] <- `theme`
      }
    },

    toList = function() {
      SpecimenList <- list()
        if (!is.null(self[['sourceSystem']])) {
        SpecimenList[['sourceSystem']] <- self[['sourceSystem']]$toList()
      }
        if (!is.null(self[['sourceSystemId']])) {
        SpecimenList[['sourceSystemId']] <- self[['sourceSystemId']]
      }
        if (!is.null(self[['recordURI']])) {
        SpecimenList[['recordURI']] <- self[['recordURI']]
      }
        if (!is.null(self[['id']])) {
        SpecimenList[['id']] <- self[['id']]
      }
        if (!is.null(self[['unitID']])) {
        SpecimenList[['unitID']] <- self[['unitID']]
      }
        if (!is.null(self[['unitGUID']])) {
        SpecimenList[['unitGUID']] <- self[['unitGUID']]
      }
        if (!is.null(self[['collectorsFieldNumber']])) {
        SpecimenList[['collectorsFieldNumber']] <- self[['collectorsFieldNumber']]
      }
        if (!is.null(self[['assemblageID']])) {
        SpecimenList[['assemblageID']] <- self[['assemblageID']]
      }
        if (!is.null(self[['sourceInstitutionID']])) {
        SpecimenList[['sourceInstitutionID']] <- self[['sourceInstitutionID']]
      }
        if (!is.null(self[['sourceID']])) {
        SpecimenList[['sourceID']] <- self[['sourceID']]
      }
        if (!is.null(self[['owner']])) {
        SpecimenList[['owner']] <- self[['owner']]
      }
        if (!is.null(self[['licenseType']])) {
        SpecimenList[['licenseType']] <- self[['licenseType']]
      }
        if (!is.null(self[['license']])) {
        SpecimenList[['license']] <- self[['license']]
      }
        if (!is.null(self[['recordBasis']])) {
        SpecimenList[['recordBasis']] <- self[['recordBasis']]
      }
        if (!is.null(self[['kindOfUnit']])) {
        SpecimenList[['kindOfUnit']] <- self[['kindOfUnit']]
      }
        if (!is.null(self[['collectionType']])) {
        SpecimenList[['collectionType']] <- self[['collectionType']]
      }
        if (!is.null(self[['sex']])) {
        SpecimenList[['sex']] <- self[['sex']]
      }
        if (!is.null(self[['phaseOrStage']])) {
        SpecimenList[['phaseOrStage']] <- self[['phaseOrStage']]
      }
        if (!is.null(self[['title']])) {
        SpecimenList[['title']] <- self[['title']]
      }
        if (!is.null(self[['notes']])) {
        SpecimenList[['notes']] <- self[['notes']]
      }
        if (!is.null(self[['preparationType']])) {
        SpecimenList[['preparationType']] <- self[['preparationType']]
      }
        if (!is.null(self[['numberOfSpecimen']])) {
        SpecimenList[['numberOfSpecimen']] <- self[['numberOfSpecimen']]
      }
        if (!is.null(self[['fromCaptivity']])) {
        SpecimenList[['fromCaptivity']] <- self[['fromCaptivity']]
      }
        if (!is.null(self[['objectPublic']])) {
        SpecimenList[['objectPublic']] <- self[['objectPublic']]
      }
        if (!is.null(self[['multiMediaPublic']])) {
        SpecimenList[['multiMediaPublic']] <- self[['multiMediaPublic']]
      }
        if (!is.null(self[['acquiredFrom']])) {
        SpecimenList[['acquiredFrom']] <- self[['acquiredFrom']]$toList()
      }
        if (!is.null(self[['gatheringEvent']])) {
        SpecimenList[['gatheringEvent']] <- self[['gatheringEvent']]$toList()
      }
        if (!is.null(self[['identifications']])) {
        SpecimenList[['identifications']] <- lapply(self[['identifications']], function(x) x$toList())
      }
        if (!is.null(self[['associatedMultiMediaUris']])) {
        SpecimenList[['associatedMultiMediaUris']] <- lapply(self[['associatedMultiMediaUris']], function(x) x$toList())
      }
        if (!is.null(self[['theme']])) {
        SpecimenList[['theme']] <- self[['theme']]
      }
      ## omit empty nested lists in returned list
      SpecimenList[sapply(SpecimenList, length) > 0]
      },

    fromList = function(SpecimenList) {
      if (!is.null(SpecimenList[['sourceSystem']])) {      
          self[['sourceSystem']] <- SourceSystem$new()$fromList(SpecimenList[['sourceSystem']])
      }
      if (!is.null(SpecimenList[['sourceSystemId']])) {      
          self[['sourceSystemId']] <- SpecimenList[['sourceSystemId']]
      }
      if (!is.null(SpecimenList[['recordURI']])) {      
          self[['recordURI']] <- SpecimenList[['recordURI']]
      }
      if (!is.null(SpecimenList[['id']])) {      
          self[['id']] <- SpecimenList[['id']]
      }
      if (!is.null(SpecimenList[['unitID']])) {      
          self[['unitID']] <- SpecimenList[['unitID']]
      }
      if (!is.null(SpecimenList[['unitGUID']])) {      
          self[['unitGUID']] <- SpecimenList[['unitGUID']]
      }
      if (!is.null(SpecimenList[['collectorsFieldNumber']])) {      
          self[['collectorsFieldNumber']] <- SpecimenList[['collectorsFieldNumber']]
      }
      if (!is.null(SpecimenList[['assemblageID']])) {      
          self[['assemblageID']] <- SpecimenList[['assemblageID']]
      }
      if (!is.null(SpecimenList[['sourceInstitutionID']])) {      
          self[['sourceInstitutionID']] <- SpecimenList[['sourceInstitutionID']]
      }
      if (!is.null(SpecimenList[['sourceID']])) {      
          self[['sourceID']] <- SpecimenList[['sourceID']]
      }
      if (!is.null(SpecimenList[['owner']])) {      
          self[['owner']] <- SpecimenList[['owner']]
      }
      if (!is.null(SpecimenList[['licenseType']])) {      
          self[['licenseType']] <- SpecimenList[['licenseType']]
      }
      if (!is.null(SpecimenList[['license']])) {      
          self[['license']] <- SpecimenList[['license']]
      }
      if (!is.null(SpecimenList[['recordBasis']])) {      
          self[['recordBasis']] <- SpecimenList[['recordBasis']]
      }
      if (!is.null(SpecimenList[['kindOfUnit']])) {      
          self[['kindOfUnit']] <- SpecimenList[['kindOfUnit']]
      }
      if (!is.null(SpecimenList[['collectionType']])) {      
          self[['collectionType']] <- SpecimenList[['collectionType']]
      }
      if (!is.null(SpecimenList[['sex']])) {      
          self[['sex']] <- SpecimenList[['sex']]
      }
      if (!is.null(SpecimenList[['phaseOrStage']])) {      
          self[['phaseOrStage']] <- SpecimenList[['phaseOrStage']]
      }
      if (!is.null(SpecimenList[['title']])) {      
          self[['title']] <- SpecimenList[['title']]
      }
      if (!is.null(SpecimenList[['notes']])) {      
          self[['notes']] <- SpecimenList[['notes']]
      }
      if (!is.null(SpecimenList[['preparationType']])) {      
          self[['preparationType']] <- SpecimenList[['preparationType']]
      }
      if (!is.null(SpecimenList[['numberOfSpecimen']])) {      
          self[['numberOfSpecimen']] <- SpecimenList[['numberOfSpecimen']]
      }
      if (!is.null(SpecimenList[['fromCaptivity']])) {      
          self[['fromCaptivity']] <- SpecimenList[['fromCaptivity']]
      }
      if (!is.null(SpecimenList[['objectPublic']])) {      
          self[['objectPublic']] <- SpecimenList[['objectPublic']]
      }
      if (!is.null(SpecimenList[['multiMediaPublic']])) {      
          self[['multiMediaPublic']] <- SpecimenList[['multiMediaPublic']]
      }
      if (!is.null(SpecimenList[['acquiredFrom']])) {      
          self[['acquiredFrom']] <- Agent$new()$fromList(SpecimenList[['acquiredFrom']])
      }
      if (!is.null(SpecimenList[['gatheringEvent']])) {      
          self[['gatheringEvent']] <- GatheringEvent$new()$fromList(SpecimenList[['gatheringEvent']])
      }
      if (!is.null(SpecimenList[['identifications']])) {      
          self[['identifications']] <- lapply(SpecimenList[['identifications']], function(x) {
             SpecimenIdentification$new()$fromList(x)            
          })
      }
      if (!is.null(SpecimenList[['associatedMultiMediaUris']])) {      
          self[['associatedMultiMediaUris']] <- lapply(SpecimenList[['associatedMultiMediaUris']], function(x) {
             ServiceAccessPoint$new()$fromList(x)            
          })
      }
      if (!is.null(SpecimenList[['theme']])) {      
          self[['theme']] <- SpecimenList[['theme']]
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(SpecimenJson) {
      SpecimenObject <- jsonlite::fromJSON(SpecimenJson, simplifyVector=F)
      SourceSystemObject <- SourceSystem$new()
      self[['sourceSystem']] <- SourceSystemObject$fromJSONString(jsonlite::toJSON(SpecimenObject[['sourceSystem']], auto_unbox = TRUE))
      self[['sourceSystemId']] <- SpecimenObject[['sourceSystemId']]
      self[['recordURI']] <- SpecimenObject[['recordURI']]
      self[['id']] <- SpecimenObject[['id']]
      self[['unitID']] <- SpecimenObject[['unitID']]
      self[['unitGUID']] <- SpecimenObject[['unitGUID']]
      self[['collectorsFieldNumber']] <- SpecimenObject[['collectorsFieldNumber']]
      self[['assemblageID']] <- SpecimenObject[['assemblageID']]
      self[['sourceInstitutionID']] <- SpecimenObject[['sourceInstitutionID']]
      self[['sourceID']] <- SpecimenObject[['sourceID']]
      self[['owner']] <- SpecimenObject[['owner']]
      self[['licenseType']] <- SpecimenObject[['licenseType']]
      self[['license']] <- SpecimenObject[['license']]
      self[['recordBasis']] <- SpecimenObject[['recordBasis']]
      self[['kindOfUnit']] <- SpecimenObject[['kindOfUnit']]
      self[['collectionType']] <- SpecimenObject[['collectionType']]
      self[['sex']] <- SpecimenObject[['sex']]
      self[['phaseOrStage']] <- SpecimenObject[['phaseOrStage']]
      self[['title']] <- SpecimenObject[['title']]
      self[['notes']] <- SpecimenObject[['notes']]
      self[['preparationType']] <- SpecimenObject[['preparationType']]
      self[['numberOfSpecimen']] <- SpecimenObject[['numberOfSpecimen']]
      self[['fromCaptivity']] <- SpecimenObject[['fromCaptivity']]
      self[['objectPublic']] <- SpecimenObject[['objectPublic']]
      self[['multiMediaPublic']] <- SpecimenObject[['multiMediaPublic']]
      AgentObject <- Agent$new()
      self[['acquiredFrom']] <- AgentObject$fromJSONString(jsonlite::toJSON(SpecimenObject[['acquiredFrom']], auto_unbox = TRUE))
      GatheringEventObject <- GatheringEvent$new()
      self[['gatheringEvent']] <- GatheringEventObject$fromJSONString(jsonlite::toJSON(SpecimenObject[['gatheringEvent']], auto_unbox = TRUE))
      self[['identifications']] <- lapply(SpecimenObject[['identifications']], function(x) SpecimenIdentification$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['associatedMultiMediaUris']] <- lapply(SpecimenObject[['associatedMultiMediaUris']], function(x) ServiceAccessPoint$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self[['theme']] <- SpecimenObject[['theme']]
      invisible(self)
    }
  )
)
