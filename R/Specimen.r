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
#' @field associatedMultiMediaObjects
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
    `associatedMultiMediaObjects` = NULL,
    initialize = function(`sourceSystem`, `sourceSystemId`, `recordURI`, `id`, `unitID`, `unitGUID`, `collectorsFieldNumber`, `assemblageID`, `sourceInstitutionID`, `sourceID`, `owner`, `licenseType`, `license`, `recordBasis`, `kindOfUnit`, `collectionType`, `sex`, `phaseOrStage`, `title`, `notes`, `preparationType`, `numberOfSpecimen`, `fromCaptivity`, `objectPublic`, `multiMediaPublic`, `acquiredFrom`, `gatheringEvent`, `identifications`, `associatedMultiMediaUris`, `theme`, `associatedMultiMediaObjects`){
      if (!missing(`sourceSystem`)) {
        stopifnot(R6::is.R6(`sourceSystem`))
        self$`sourceSystem` <- `sourceSystem`
      }
      if (!missing(`sourceSystemId`)) {
        stopifnot(is.character(`sourceSystemId`), length(`sourceSystemId`) == 1)
        self$`sourceSystemId` <- `sourceSystemId`
      }
      if (!missing(`recordURI`)) {
        stopifnot(is.character(`recordURI`), length(`recordURI`) == 1)
        self$`recordURI` <- `recordURI`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`unitID`)) {
        stopifnot(is.character(`unitID`), length(`unitID`) == 1)
        self$`unitID` <- `unitID`
      }
      if (!missing(`unitGUID`)) {
        stopifnot(is.character(`unitGUID`), length(`unitGUID`) == 1)
        self$`unitGUID` <- `unitGUID`
      }
      if (!missing(`collectorsFieldNumber`)) {
        stopifnot(is.character(`collectorsFieldNumber`), length(`collectorsFieldNumber`) == 1)
        self$`collectorsFieldNumber` <- `collectorsFieldNumber`
      }
      if (!missing(`assemblageID`)) {
        stopifnot(is.character(`assemblageID`), length(`assemblageID`) == 1)
        self$`assemblageID` <- `assemblageID`
      }
      if (!missing(`sourceInstitutionID`)) {
        stopifnot(is.character(`sourceInstitutionID`), length(`sourceInstitutionID`) == 1)
        self$`sourceInstitutionID` <- `sourceInstitutionID`
      }
      if (!missing(`sourceID`)) {
        stopifnot(is.character(`sourceID`), length(`sourceID`) == 1)
        self$`sourceID` <- `sourceID`
      }
      if (!missing(`owner`)) {
        stopifnot(is.character(`owner`), length(`owner`) == 1)
        self$`owner` <- `owner`
      }
      if (!missing(`licenseType`)) {
        stopifnot(is.character(`licenseType`), length(`licenseType`) == 1)
        self$`licenseType` <- `licenseType`
      }
      if (!missing(`license`)) {
        stopifnot(is.character(`license`), length(`license`) == 1)
        self$`license` <- `license`
      }
      if (!missing(`recordBasis`)) {
        stopifnot(is.character(`recordBasis`), length(`recordBasis`) == 1)
        self$`recordBasis` <- `recordBasis`
      }
      if (!missing(`kindOfUnit`)) {
        stopifnot(is.character(`kindOfUnit`), length(`kindOfUnit`) == 1)
        self$`kindOfUnit` <- `kindOfUnit`
      }
      if (!missing(`collectionType`)) {
        stopifnot(is.character(`collectionType`), length(`collectionType`) == 1)
        self$`collectionType` <- `collectionType`
      }
      if (!missing(`sex`)) {
        stopifnot(is.character(`sex`), length(`sex`) == 1)
        self$`sex` <- `sex`
      }
      if (!missing(`phaseOrStage`)) {
        stopifnot(is.character(`phaseOrStage`), length(`phaseOrStage`) == 1)
        self$`phaseOrStage` <- `phaseOrStage`
      }
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`notes`)) {
        stopifnot(is.character(`notes`), length(`notes`) == 1)
        self$`notes` <- `notes`
      }
      if (!missing(`preparationType`)) {
        stopifnot(is.character(`preparationType`), length(`preparationType`) == 1)
        self$`preparationType` <- `preparationType`
      }
      if (!missing(`numberOfSpecimen`)) {
        stopifnot(is.numeric(`numberOfSpecimen`), length(`numberOfSpecimen`) == 1)
        self$`numberOfSpecimen` <- `numberOfSpecimen`
      }
      if (!missing(`fromCaptivity`)) {
        self$`fromCaptivity` <- `fromCaptivity`
      }
      if (!missing(`objectPublic`)) {
        self$`objectPublic` <- `objectPublic`
      }
      if (!missing(`multiMediaPublic`)) {
        self$`multiMediaPublic` <- `multiMediaPublic`
      }
      if (!missing(`acquiredFrom`)) {
        stopifnot(R6::is.R6(`acquiredFrom`))
        self$`acquiredFrom` <- `acquiredFrom`
      }
      if (!missing(`gatheringEvent`)) {
        stopifnot(R6::is.R6(`gatheringEvent`))
        self$`gatheringEvent` <- `gatheringEvent`
      }
      if (!missing(`identifications`)) {
        stopifnot(is.list(`identifications`), length(`identifications`) != 0)
        lapply(`identifications`, function(x) stopifnot(R6::is.R6(x)))
        self$`identifications` <- `identifications`
      }
      if (!missing(`associatedMultiMediaUris`)) {
        stopifnot(is.list(`associatedMultiMediaUris`), length(`associatedMultiMediaUris`) != 0)
        lapply(`associatedMultiMediaUris`, function(x) stopifnot(R6::is.R6(x)))
        self$`associatedMultiMediaUris` <- `associatedMultiMediaUris`
      }
      if (!missing(`theme`)) {
        stopifnot(is.list(`theme`), length(`theme`) != 0)
        lapply(`theme`, function(x) stopifnot(is.character(x)))
        self$`theme` <- `theme`
      }
      if (!missing(`associatedMultiMediaObjects`)) {
        stopifnot(is.list(`associatedMultiMediaObjects`), length(`associatedMultiMediaObjects`) != 0)
        lapply(`associatedMultiMediaObjects`, function(x) stopifnot(R6::is.R6(x)))
        self$`associatedMultiMediaObjects` <- `associatedMultiMediaObjects`
      }
    },
    toJSON = function() {
      SpecimenObject <- list()
      if (!is.null(self$`sourceSystem`)) {
        SpecimenObject[['sourceSystem']] <- self$`sourceSystem`$toJSON()
      }
      if (!is.null(self$`sourceSystemId`)) {
        SpecimenObject[['sourceSystemId']] <- self$`sourceSystemId`
      }
      if (!is.null(self$`recordURI`)) {
        SpecimenObject[['recordURI']] <- self$`recordURI`
      }
      if (!is.null(self$`id`)) {
        SpecimenObject[['id']] <- self$`id`
      }
      if (!is.null(self$`unitID`)) {
        SpecimenObject[['unitID']] <- self$`unitID`
      }
      if (!is.null(self$`unitGUID`)) {
        SpecimenObject[['unitGUID']] <- self$`unitGUID`
      }
      if (!is.null(self$`collectorsFieldNumber`)) {
        SpecimenObject[['collectorsFieldNumber']] <- self$`collectorsFieldNumber`
      }
      if (!is.null(self$`assemblageID`)) {
        SpecimenObject[['assemblageID']] <- self$`assemblageID`
      }
      if (!is.null(self$`sourceInstitutionID`)) {
        SpecimenObject[['sourceInstitutionID']] <- self$`sourceInstitutionID`
      }
      if (!is.null(self$`sourceID`)) {
        SpecimenObject[['sourceID']] <- self$`sourceID`
      }
      if (!is.null(self$`owner`)) {
        SpecimenObject[['owner']] <- self$`owner`
      }
      if (!is.null(self$`licenseType`)) {
        SpecimenObject[['licenseType']] <- self$`licenseType`
      }
      if (!is.null(self$`license`)) {
        SpecimenObject[['license']] <- self$`license`
      }
      if (!is.null(self$`recordBasis`)) {
        SpecimenObject[['recordBasis']] <- self$`recordBasis`
      }
      if (!is.null(self$`kindOfUnit`)) {
        SpecimenObject[['kindOfUnit']] <- self$`kindOfUnit`
      }
      if (!is.null(self$`collectionType`)) {
        SpecimenObject[['collectionType']] <- self$`collectionType`
      }
      if (!is.null(self$`sex`)) {
        SpecimenObject[['sex']] <- self$`sex`
      }
      if (!is.null(self$`phaseOrStage`)) {
        SpecimenObject[['phaseOrStage']] <- self$`phaseOrStage`
      }
      if (!is.null(self$`title`)) {
        SpecimenObject[['title']] <- self$`title`
      }
      if (!is.null(self$`notes`)) {
        SpecimenObject[['notes']] <- self$`notes`
      }
      if (!is.null(self$`preparationType`)) {
        SpecimenObject[['preparationType']] <- self$`preparationType`
      }
      if (!is.null(self$`numberOfSpecimen`)) {
        SpecimenObject[['numberOfSpecimen']] <- self$`numberOfSpecimen`
      }
      if (!is.null(self$`fromCaptivity`)) {
        SpecimenObject[['fromCaptivity']] <- self$`fromCaptivity`
      }
      if (!is.null(self$`objectPublic`)) {
        SpecimenObject[['objectPublic']] <- self$`objectPublic`
      }
      if (!is.null(self$`multiMediaPublic`)) {
        SpecimenObject[['multiMediaPublic']] <- self$`multiMediaPublic`
      }
      if (!is.null(self$`acquiredFrom`)) {
        SpecimenObject[['acquiredFrom']] <- self$`acquiredFrom`$toJSON()
      }
      if (!is.null(self$`gatheringEvent`)) {
        SpecimenObject[['gatheringEvent']] <- self$`gatheringEvent`$toJSON()
      }
      if (!is.null(self$`identifications`)) {
        SpecimenObject[['identifications']] <- lapply(self$`identifications`, function(x) x$toJSON())
      }
      if (!is.null(self$`associatedMultiMediaUris`)) {
        SpecimenObject[['associatedMultiMediaUris']] <- lapply(self$`associatedMultiMediaUris`, function(x) x$toJSON())
      }
      if (!is.null(self$`theme`)) {
        SpecimenObject[['theme']] <- self$`theme`
      }
      if (!is.null(self$`associatedMultiMediaObjects`)) {
        SpecimenObject[['associatedMultiMediaObjects']] <- lapply(self$`associatedMultiMediaObjects`, function(x) x$toJSON())
      }

      SpecimenObject
    },
    fromJSON = function(SpecimenJson) {
      SpecimenObject <- jsonlite::fromJSON(SpecimenJson)
      if (!is.null(SpecimenObject$`sourceSystem`)) {
        sourceSystemObject <- SourceSystem$new()
        sourceSystemObject$fromJSON(jsonlite::toJSON(SpecimenObject$sourceSystem, auto_unbox = TRUE))
        self$`sourceSystem` <- sourceSystemObject
      }
      if (!is.null(SpecimenObject$`sourceSystemId`)) {
        self$`sourceSystemId` <- SpecimenObject$`sourceSystemId`
      }
      if (!is.null(SpecimenObject$`recordURI`)) {
        self$`recordURI` <- SpecimenObject$`recordURI`
      }
      if (!is.null(SpecimenObject$`id`)) {
        self$`id` <- SpecimenObject$`id`
      }
      if (!is.null(SpecimenObject$`unitID`)) {
        self$`unitID` <- SpecimenObject$`unitID`
      }
      if (!is.null(SpecimenObject$`unitGUID`)) {
        self$`unitGUID` <- SpecimenObject$`unitGUID`
      }
      if (!is.null(SpecimenObject$`collectorsFieldNumber`)) {
        self$`collectorsFieldNumber` <- SpecimenObject$`collectorsFieldNumber`
      }
      if (!is.null(SpecimenObject$`assemblageID`)) {
        self$`assemblageID` <- SpecimenObject$`assemblageID`
      }
      if (!is.null(SpecimenObject$`sourceInstitutionID`)) {
        self$`sourceInstitutionID` <- SpecimenObject$`sourceInstitutionID`
      }
      if (!is.null(SpecimenObject$`sourceID`)) {
        self$`sourceID` <- SpecimenObject$`sourceID`
      }
      if (!is.null(SpecimenObject$`owner`)) {
        self$`owner` <- SpecimenObject$`owner`
      }
      if (!is.null(SpecimenObject$`licenseType`)) {
        self$`licenseType` <- SpecimenObject$`licenseType`
      }
      if (!is.null(SpecimenObject$`license`)) {
        self$`license` <- SpecimenObject$`license`
      }
      if (!is.null(SpecimenObject$`recordBasis`)) {
        self$`recordBasis` <- SpecimenObject$`recordBasis`
      }
      if (!is.null(SpecimenObject$`kindOfUnit`)) {
        self$`kindOfUnit` <- SpecimenObject$`kindOfUnit`
      }
      if (!is.null(SpecimenObject$`collectionType`)) {
        self$`collectionType` <- SpecimenObject$`collectionType`
      }
      if (!is.null(SpecimenObject$`sex`)) {
        self$`sex` <- SpecimenObject$`sex`
      }
      if (!is.null(SpecimenObject$`phaseOrStage`)) {
        self$`phaseOrStage` <- SpecimenObject$`phaseOrStage`
      }
      if (!is.null(SpecimenObject$`title`)) {
        self$`title` <- SpecimenObject$`title`
      }
      if (!is.null(SpecimenObject$`notes`)) {
        self$`notes` <- SpecimenObject$`notes`
      }
      if (!is.null(SpecimenObject$`preparationType`)) {
        self$`preparationType` <- SpecimenObject$`preparationType`
      }
      if (!is.null(SpecimenObject$`numberOfSpecimen`)) {
        self$`numberOfSpecimen` <- SpecimenObject$`numberOfSpecimen`
      }
      if (!is.null(SpecimenObject$`fromCaptivity`)) {
        self$`fromCaptivity` <- SpecimenObject$`fromCaptivity`
      }
      if (!is.null(SpecimenObject$`objectPublic`)) {
        self$`objectPublic` <- SpecimenObject$`objectPublic`
      }
      if (!is.null(SpecimenObject$`multiMediaPublic`)) {
        self$`multiMediaPublic` <- SpecimenObject$`multiMediaPublic`
      }
      if (!is.null(SpecimenObject$`acquiredFrom`)) {
        acquiredFromObject <- Agent$new()
        acquiredFromObject$fromJSON(jsonlite::toJSON(SpecimenObject$acquiredFrom, auto_unbox = TRUE))
        self$`acquiredFrom` <- acquiredFromObject
      }
      if (!is.null(SpecimenObject$`gatheringEvent`)) {
        gatheringEventObject <- GatheringEvent$new()
        gatheringEventObject$fromJSON(jsonlite::toJSON(SpecimenObject$gatheringEvent, auto_unbox = TRUE))
        self$`gatheringEvent` <- gatheringEventObject
      }
      if (!is.null(SpecimenObject$`identifications`)) {
        self$`identifications` <- lapply(SpecimenObject$`identifications`, function(x) {
          identificationsObject <- SpecimenIdentification$new()
          identificationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          identificationsObject
        })
      }
      if (!is.null(SpecimenObject$`associatedMultiMediaUris`)) {
        self$`associatedMultiMediaUris` <- lapply(SpecimenObject$`associatedMultiMediaUris`, function(x) {
          associatedMultiMediaUrisObject <- ServiceAccessPoint$new()
          associatedMultiMediaUrisObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          associatedMultiMediaUrisObject
        })
      }
      if (!is.null(SpecimenObject$`theme`)) {
        self$`theme` <- SpecimenObject$`theme`
      }
      if (!is.null(SpecimenObject$`associatedMultiMediaObjects`)) {
        self$`associatedMultiMediaObjects` <- lapply(SpecimenObject$`associatedMultiMediaObjects`, function(x) {
          associatedMultiMediaObjectsObject <- MultiMediaObject$new()
          associatedMultiMediaObjectsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          associatedMultiMediaObjectsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "sourceSystem": %s,
           "sourceSystemId": %s,
           "recordURI": %s,
           "id": %s,
           "unitID": %s,
           "unitGUID": %s,
           "collectorsFieldNumber": %s,
           "assemblageID": %s,
           "sourceInstitutionID": %s,
           "sourceID": %s,
           "owner": %s,
           "licenseType": %s,
           "license": %s,
           "recordBasis": %s,
           "kindOfUnit": %s,
           "collectionType": %s,
           "sex": %s,
           "phaseOrStage": %s,
           "title": %s,
           "notes": %s,
           "preparationType": %s,
           "numberOfSpecimen": %s,
           "fromCaptivity": %s,
           "objectPublic": %s,
           "multiMediaPublic": %s,
           "acquiredFrom": %s,
           "gatheringEvent": %s,
           "identifications": [%s],
           "associatedMultiMediaUris": [%s],
           "theme": [%s],
           "associatedMultiMediaObjects": [%s]
        }',
        self$`sourceSystem`$toJSON(),
        self$`sourceSystemId`,
        self$`recordURI`,
        self$`id`,
        self$`unitID`,
        self$`unitGUID`,
        self$`collectorsFieldNumber`,
        self$`assemblageID`,
        self$`sourceInstitutionID`,
        self$`sourceID`,
        self$`owner`,
        self$`licenseType`,
        self$`license`,
        self$`recordBasis`,
        self$`kindOfUnit`,
        self$`collectionType`,
        self$`sex`,
        self$`phaseOrStage`,
        self$`title`,
        self$`notes`,
        self$`preparationType`,
        self$`numberOfSpecimen`,
        self$`fromCaptivity`,
        self$`objectPublic`,
        self$`multiMediaPublic`,
        self$`acquiredFrom`$toJSON(),
        self$`gatheringEvent`$toJSON(),
        lapply(self$`identifications`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`associatedMultiMediaUris`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`theme`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`associatedMultiMediaObjects`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(SpecimenJson) {
      SpecimenObject <- jsonlite::fromJSON(SpecimenJson)
      SourceSystemObject <- SourceSystem$new()
      self$`sourceSystem` <- SourceSystemObject$fromJSON(jsonlite::toJSON(SpecimenObject$sourceSystem, auto_unbox = TRUE))
      self$`sourceSystemId` <- SpecimenObject$`sourceSystemId`
      self$`recordURI` <- SpecimenObject$`recordURI`
      self$`id` <- SpecimenObject$`id`
      self$`unitID` <- SpecimenObject$`unitID`
      self$`unitGUID` <- SpecimenObject$`unitGUID`
      self$`collectorsFieldNumber` <- SpecimenObject$`collectorsFieldNumber`
      self$`assemblageID` <- SpecimenObject$`assemblageID`
      self$`sourceInstitutionID` <- SpecimenObject$`sourceInstitutionID`
      self$`sourceID` <- SpecimenObject$`sourceID`
      self$`owner` <- SpecimenObject$`owner`
      self$`licenseType` <- SpecimenObject$`licenseType`
      self$`license` <- SpecimenObject$`license`
      self$`recordBasis` <- SpecimenObject$`recordBasis`
      self$`kindOfUnit` <- SpecimenObject$`kindOfUnit`
      self$`collectionType` <- SpecimenObject$`collectionType`
      self$`sex` <- SpecimenObject$`sex`
      self$`phaseOrStage` <- SpecimenObject$`phaseOrStage`
      self$`title` <- SpecimenObject$`title`
      self$`notes` <- SpecimenObject$`notes`
      self$`preparationType` <- SpecimenObject$`preparationType`
      self$`numberOfSpecimen` <- SpecimenObject$`numberOfSpecimen`
      self$`fromCaptivity` <- SpecimenObject$`fromCaptivity`
      self$`objectPublic` <- SpecimenObject$`objectPublic`
      self$`multiMediaPublic` <- SpecimenObject$`multiMediaPublic`
      AgentObject <- Agent$new()
      self$`acquiredFrom` <- AgentObject$fromJSON(jsonlite::toJSON(SpecimenObject$acquiredFrom, auto_unbox = TRUE))
      GatheringEventObject <- GatheringEvent$new()
      self$`gatheringEvent` <- GatheringEventObject$fromJSON(jsonlite::toJSON(SpecimenObject$gatheringEvent, auto_unbox = TRUE))
      ## Hannes
      ## self$`identifications` <- lapply(SpecimenObject$`identifications`, function(x) SpecimenIdentification$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      ## self$`associatedMultiMediaUris` <- lapply(SpecimenObject$`associatedMultiMediaUris`, function(x) ServiceAccessPoint$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`theme` <- SpecimenObject$`theme`
      self$`associatedMultiMediaObjects` <- lapply(SpecimenObject$`associatedMultiMediaObjects`, function(x) MultiMediaObject$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)