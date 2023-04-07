# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#'
#' @docType class
#'
#' @format R6 class
#'
#' @usage
#' # Specimen$new()
#'
#' @format
#' R6 class
#'
#' @title Specimen Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for Specimen objects.
#'
#'
#' @field sourceSystem  SourceSystem
#'
#' @field sourceSystemId  character
#'
#' @field recordURI  character
#'
#' @field id  character
#'
#' @field unitID  character
#'
#' @field unitGUID  character
#'
#' @field collectorsFieldNumber  character
#'
#' @field assemblageID  character
#'
#' @field sourceInstitutionID  character
#'
#' @field sourceID  character
#'
#' @field previousSourceID  list(character)
#'
#' @field owner  character
#'
#' @field licenseType  character
#'
#' @field license  character
#'
#' @field recordBasis  character
#'
#' @field kindOfUnit  character
#'
#' @field collectionType  character
#'
#' @field sex  character
#'
#' @field phaseOrStage  character
#'
#' @field title  character
#'
#' @field notes  character
#'
#' @field preparationType  character
#'
#' @field previousUnitsText  character
#'
#' @field numberOfSpecimen  integer
#'
#' @field fromCaptivity  logical
#'
#' @field objectPublic  logical
#'
#' @field multiMediaPublic  logical
#'
#' @field acquiredFrom  Agent
#'
#' @field gatheringEvent  GatheringEvent
#'
#' @field dynamicProperties  character
#'
#' @field informationWithheld  character
#'
#' @field dataGeneralizations  character
#'
#' @field identifications  list(SpecimenIdentification)
#'
#' @field associatedMultiMediaUris  list(ServiceAccessPoint)
#'
#' @field theme  list(character)
#'
#' @field associatedMultiMediaObjects  list(MultiMediaObject)
#'
#' @field dateLastEdited  character
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Specimen object.
#'
#' }
#' \item{\code{$fromList(SpecimenList)}}{
#'
#'   Create Specimen object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Specimen.
#'
#' }
#' \item{\code{fromJSONString(SpecimenJson)}}{
#'
#'   Create Specimen object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Specimen.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Specimen <- R6::R6Class(
  "Specimen",
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
    `previousSourceID` = NULL,
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
    `previousUnitsText` = NULL,
    `numberOfSpecimen` = NULL,
    `fromCaptivity` = NULL,
    `objectPublic` = NULL,
    `multiMediaPublic` = NULL,
    `acquiredFrom` = NULL,
    `gatheringEvent` = NULL,
    `dynamicProperties` = NULL,
    `informationWithheld` = NULL,
    `dataGeneralizations` = NULL,
    `identifications` = NULL,
    `associatedMultiMediaUris` = NULL,
    `theme` = NULL,
    `associatedMultiMediaObjects` = NULL,
    `dateLastEdited` = NULL,
    initialize = function(
        `sourceSystem`,
        `sourceSystemId`,
        `recordURI`,
        `id`,
        `unitID`,
        `unitGUID`,
        `collectorsFieldNumber`,
        `assemblageID`,
        `sourceInstitutionID`,
        `sourceID`,
        `previousSourceID`,
        `owner`,
        `licenseType`,
        `license`,
        `recordBasis`,
        `kindOfUnit`,
        `collectionType`,
        `sex`,
        `phaseOrStage`,
        `title`,
        `notes`,
        `preparationType`,
        `previousUnitsText`,
        `numberOfSpecimen`,
        `fromCaptivity`,
        `objectPublic`,
        `multiMediaPublic`,
        `acquiredFrom`,
        `gatheringEvent`,
        `dynamicProperties`,
        `informationWithheld`,
        `dataGeneralizations`,
        `identifications`,
        `associatedMultiMediaUris`,
        `theme`,
        `associatedMultiMediaObjects`,
        `dateLastEdited`) {
      if (!missing(`sourceSystem`)) {
        stopifnot(R6::is.R6(`sourceSystem`))
        self[["sourceSystem"]] <- `sourceSystem`
      }
      if (!missing(`sourceSystemId`)) {
        stopifnot(
          is.character(`sourceSystemId`),
          length(`sourceSystemId`) == 1
        )
        self[["sourceSystemId"]] <- `sourceSystemId`
      }
      if (!missing(`recordURI`)) {
        stopifnot(
          is.character(`recordURI`),
          length(`recordURI`) == 1
        )
        self[["recordURI"]] <- `recordURI`
      }
      if (!missing(`id`)) {
        stopifnot(
          is.character(`id`),
          length(`id`) == 1
        )
        self[["id"]] <- `id`
      }
      if (!missing(`unitID`)) {
        stopifnot(
          is.character(`unitID`),
          length(`unitID`) == 1
        )
        self[["unitID"]] <- `unitID`
      }
      if (!missing(`unitGUID`)) {
        stopifnot(
          is.character(`unitGUID`),
          length(`unitGUID`) == 1
        )
        self[["unitGUID"]] <- `unitGUID`
      }
      if (!missing(`collectorsFieldNumber`)) {
        stopifnot(
          is.character(`collectorsFieldNumber`),
          length(`collectorsFieldNumber`) == 1
        )
        self[["collectorsFieldNumber"]] <- `collectorsFieldNumber`
      }
      if (!missing(`assemblageID`)) {
        stopifnot(
          is.character(`assemblageID`),
          length(`assemblageID`) == 1
        )
        self[["assemblageID"]] <- `assemblageID`
      }
      if (!missing(`sourceInstitutionID`)) {
        stopifnot(
          is.character(`sourceInstitutionID`),
          length(`sourceInstitutionID`) == 1
        )
        self[["sourceInstitutionID"]] <- `sourceInstitutionID`
      }
      if (!missing(`sourceID`)) {
        stopifnot(
          is.character(`sourceID`),
          length(`sourceID`) == 1
        )
        self[["sourceID"]] <- `sourceID`
      }
      if (!missing(`previousSourceID`)) {
        stopifnot(
          is.list(`previousSourceID`),
          length(`previousSourceID`) != 0
        )
        lapply(
          `previousSourceID`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["previousSourceID"]] <- unname(`previousSourceID`)
      }
      if (!missing(`owner`)) {
        stopifnot(
          is.character(`owner`),
          length(`owner`) == 1
        )
        self[["owner"]] <- `owner`
      }
      if (!missing(`licenseType`)) {
        stopifnot(
          is.character(`licenseType`),
          length(`licenseType`) == 1
        )
        self[["licenseType"]] <- `licenseType`
      }
      if (!missing(`license`)) {
        stopifnot(
          is.character(`license`),
          length(`license`) == 1
        )
        self[["license"]] <- `license`
      }
      if (!missing(`recordBasis`)) {
        stopifnot(
          is.character(`recordBasis`),
          length(`recordBasis`) == 1
        )
        self[["recordBasis"]] <- `recordBasis`
      }
      if (!missing(`kindOfUnit`)) {
        stopifnot(
          is.character(`kindOfUnit`),
          length(`kindOfUnit`) == 1
        )
        self[["kindOfUnit"]] <- `kindOfUnit`
      }
      if (!missing(collectionType) & !is.null(collectionType)) {
        stopifnot(
          is.character(`collectionType`),
          length(`collectionType`) == 1
        )
        self[["collectionType"]] <- `collectionType`
      }
      if (!missing(`sex`)) {
        stopifnot(
          is.character(`sex`),
          length(`sex`) == 1
        )
        self[["sex"]] <- `sex`
      }
      if (!missing(`phaseOrStage`)) {
        stopifnot(
          is.character(`phaseOrStage`),
          length(`phaseOrStage`) == 1
        )
        self[["phaseOrStage"]] <- `phaseOrStage`
      }
      if (!missing(`title`)) {
        stopifnot(
          is.character(`title`),
          length(`title`) == 1
        )
        self[["title"]] <- `title`
      }
      if (!missing(`notes`)) {
        stopifnot(
          is.character(`notes`),
          length(`notes`) == 1
        )
        self[["notes"]] <- `notes`
      }
      if (!missing(`preparationType`)) {
        stopifnot(
          is.character(`preparationType`),
          length(`preparationType`) == 1
        )
        self[["preparationType"]] <- `preparationType`
      }
      if (!missing(`previousUnitsText`)) {
        stopifnot(
          is.character(`previousUnitsText`),
          length(`previousUnitsText`) == 1
        )
        self[["previousUnitsText"]] <- `previousUnitsText`
      }
      if (!missing(`numberOfSpecimen`)) {
        stopifnot(
          is.numeric(`numberOfSpecimen`),
          length(`numberOfSpecimen`) == 1
        )
        self[["numberOfSpecimen"]] <- `numberOfSpecimen`
      }
      if (!missing(`fromCaptivity`)) {
        self[["fromCaptivity"]] <- `fromCaptivity`
      }
      if (!missing(`objectPublic`)) {
        self[["objectPublic"]] <- `objectPublic`
      }
      if (!missing(`multiMediaPublic`)) {
        self[["multiMediaPublic"]] <- `multiMediaPublic`
      }
      if (!missing(`acquiredFrom`)) {
        stopifnot(R6::is.R6(`acquiredFrom`))
        self[["acquiredFrom"]] <- `acquiredFrom`
      }
      if (!missing(`gatheringEvent`)) {
        stopifnot(R6::is.R6(`gatheringEvent`))
        self[["gatheringEvent"]] <- `gatheringEvent`
      }
      if (!missing(`dynamicProperties`)) {
        stopifnot(
          is.character(`dynamicProperties`),
          length(`dynamicProperties`) == 1
        )
        self[["dynamicProperties"]] <- `dynamicProperties`
      }
      if (!missing(`informationWithheld`)) {
        stopifnot(
          is.character(`informationWithheld`),
          length(`informationWithheld`) == 1
        )
        self[["informationWithheld"]] <- `informationWithheld`
      }
      if (!missing(`dataGeneralizations`)) {
        stopifnot(
          is.character(`dataGeneralizations`),
          length(`dataGeneralizations`) == 1
        )
        self[["dataGeneralizations"]] <- `dataGeneralizations`
      }
      if (!missing(`identifications`)) {
        stopifnot(
          is.list(`identifications`),
          length(`identifications`) != 0
        )
        lapply(
          `identifications`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["identifications"]] <- unname(`identifications`)
      }
      if (!missing(`associatedMultiMediaUris`)) {
        stopifnot(
          is.list(`associatedMultiMediaUris`),
          length(`associatedMultiMediaUris`) != 0
        )
        lapply(
          `associatedMultiMediaUris`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["associatedMultiMediaUris"]] <- unname(`associatedMultiMediaUris`)
      }
      if (!missing(`theme`)) {
        stopifnot(
          is.list(`theme`),
          length(`theme`) != 0
        )
        lapply(
          `theme`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["theme"]] <- unname(`theme`)
      }
      if (!missing(`associatedMultiMediaObjects`)) {
        stopifnot(
          is.list(`associatedMultiMediaObjects`),
          length(`associatedMultiMediaObjects`) != 0
        )
        lapply(
          `associatedMultiMediaObjects`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["associatedMultiMediaObjects"]] <- unname(`associatedMultiMediaObjects`)
      }
      if (!missing(`dateLastEdited`)) {
        stopifnot(
          is.character(`dateLastEdited`),
          length(`dateLastEdited`) == 1
        )
        self[["dateLastEdited"]] <- `dateLastEdited`
      }
    },
    toList = function() {
      SpecimenList <- list()
      if (!is.null(self[["sourceSystem"]])) {
        SpecimenList[["sourceSystem"]] <-
          self[["sourceSystem"]]$toList()
      }
      if (!is.null(self[["sourceSystemId"]])) {
        SpecimenList[["sourceSystemId"]] <-
          self[["sourceSystemId"]]
      }
      if (!is.null(self[["recordURI"]])) {
        SpecimenList[["recordURI"]] <-
          self[["recordURI"]]
      }
      if (!is.null(self[["id"]])) {
        SpecimenList[["id"]] <-
          self[["id"]]
      }
      if (!is.null(self[["unitID"]])) {
        SpecimenList[["unitID"]] <-
          self[["unitID"]]
      }
      if (!is.null(self[["unitGUID"]])) {
        SpecimenList[["unitGUID"]] <-
          self[["unitGUID"]]
      }
      if (!is.null(self[["collectorsFieldNumber"]])) {
        SpecimenList[["collectorsFieldNumber"]] <-
          self[["collectorsFieldNumber"]]
      }
      if (!is.null(self[["assemblageID"]])) {
        SpecimenList[["assemblageID"]] <-
          self[["assemblageID"]]
      }
      if (!is.null(self[["sourceInstitutionID"]])) {
        SpecimenList[["sourceInstitutionID"]] <-
          self[["sourceInstitutionID"]]
      }
      if (!is.null(self[["sourceID"]])) {
        SpecimenList[["sourceID"]] <-
          self[["sourceID"]]
      }
      if (!is.null(self[["previousSourceID"]])) {
        SpecimenList[["previousSourceID"]] <-
          self[["previousSourceID"]]
      }
      if (!is.null(self[["owner"]])) {
        SpecimenList[["owner"]] <-
          self[["owner"]]
      }
      if (!is.null(self[["licenseType"]])) {
        SpecimenList[["licenseType"]] <-
          self[["licenseType"]]
      }
      if (!is.null(self[["license"]])) {
        SpecimenList[["license"]] <-
          self[["license"]]
      }
      if (!is.null(self[["recordBasis"]])) {
        SpecimenList[["recordBasis"]] <-
          self[["recordBasis"]]
      }
      if (!is.null(self[["kindOfUnit"]])) {
        SpecimenList[["kindOfUnit"]] <-
          self[["kindOfUnit"]]
      }
      if (!is.null(self[["collectionType"]])) {
        SpecimenList[["collectionType"]] <-
          self[["collectionType"]]
      }
      if (!is.null(self[["sex"]])) {
        SpecimenList[["sex"]] <-
          self[["sex"]]
      }
      if (!is.null(self[["phaseOrStage"]])) {
        SpecimenList[["phaseOrStage"]] <-
          self[["phaseOrStage"]]
      }
      if (!is.null(self[["title"]])) {
        SpecimenList[["title"]] <-
          self[["title"]]
      }
      if (!is.null(self[["notes"]])) {
        SpecimenList[["notes"]] <-
          self[["notes"]]
      }
      if (!is.null(self[["preparationType"]])) {
        SpecimenList[["preparationType"]] <-
          self[["preparationType"]]
      }
      if (!is.null(self[["previousUnitsText"]])) {
        SpecimenList[["previousUnitsText"]] <-
          self[["previousUnitsText"]]
      }
      if (!is.null(self[["numberOfSpecimen"]])) {
        SpecimenList[["numberOfSpecimen"]] <-
          self[["numberOfSpecimen"]]
      }
      if (!is.null(self[["fromCaptivity"]])) {
        SpecimenList[["fromCaptivity"]] <-
          self[["fromCaptivity"]]
      }
      if (!is.null(self[["objectPublic"]])) {
        SpecimenList[["objectPublic"]] <-
          self[["objectPublic"]]
      }
      if (!is.null(self[["multiMediaPublic"]])) {
        SpecimenList[["multiMediaPublic"]] <-
          self[["multiMediaPublic"]]
      }
      if (!is.null(self[["acquiredFrom"]])) {
        SpecimenList[["acquiredFrom"]] <-
          self[["acquiredFrom"]]$toList()
      }
      if (!is.null(self[["gatheringEvent"]])) {
        SpecimenList[["gatheringEvent"]] <-
          self[["gatheringEvent"]]$toList()
      }
      if (!is.null(self[["dynamicProperties"]])) {
        SpecimenList[["dynamicProperties"]] <-
          self[["dynamicProperties"]]
      }
      if (!is.null(self[["informationWithheld"]])) {
        SpecimenList[["informationWithheld"]] <-
          self[["informationWithheld"]]
      }
      if (!is.null(self[["dataGeneralizations"]])) {
        SpecimenList[["dataGeneralizations"]] <-
          self[["dataGeneralizations"]]
      }
      if (!is.null(self[["identifications"]])) {
        SpecimenList[["identifications"]] <-
          lapply(self[["identifications"]], function(x) x$toList())
      }
      if (!is.null(self[["associatedMultiMediaUris"]])) {
        SpecimenList[["associatedMultiMediaUris"]] <-
          lapply(self[["associatedMultiMediaUris"]], function(x) x$toList())
      }
      if (!is.null(self[["theme"]])) {
        SpecimenList[["theme"]] <-
          self[["theme"]]
      }
      if (!is.null(self[["associatedMultiMediaObjects"]])) {
        SpecimenList[["associatedMultiMediaObjects"]] <-
          lapply(self[["associatedMultiMediaObjects"]], function(x) x$toList())
      }
      if (!is.null(self[["dateLastEdited"]])) {
        SpecimenList[["dateLastEdited"]] <-
          self[["dateLastEdited"]]
      }
      ## omit empty nested lists in returned list
      SpecimenList[vapply(
        SpecimenList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(SpecimenList,
                        typeMapping = NULL) {
      self[["sourceSystem"]] <- SourceSystem$new()$fromList(
        SpecimenList[["sourceSystem"]],
        typeMapping = typeMapping
      )
      self[["sourceSystemId"]] <-
        SpecimenList[["sourceSystemId"]]
      self[["recordURI"]] <-
        SpecimenList[["recordURI"]]
      self[["id"]] <-
        SpecimenList[["id"]]
      self[["unitID"]] <-
        SpecimenList[["unitID"]]
      self[["unitGUID"]] <-
        SpecimenList[["unitGUID"]]
      self[["collectorsFieldNumber"]] <-
        SpecimenList[["collectorsFieldNumber"]]
      self[["assemblageID"]] <-
        SpecimenList[["assemblageID"]]
      self[["sourceInstitutionID"]] <-
        SpecimenList[["sourceInstitutionID"]]
      self[["sourceID"]] <-
        SpecimenList[["sourceID"]]
      self[["previousSourceID"]] <-
        SpecimenList[["previousSourceID"]]
      self[["owner"]] <-
        SpecimenList[["owner"]]
      self[["licenseType"]] <-
        SpecimenList[["licenseType"]]
      self[["license"]] <-
        SpecimenList[["license"]]
      self[["recordBasis"]] <-
        SpecimenList[["recordBasis"]]
      self[["kindOfUnit"]] <-
        SpecimenList[["kindOfUnit"]]
      self[["collectionType"]] <-
        SpecimenList[["collectionType"]]
      self[["sex"]] <-
        SpecimenList[["sex"]]
      self[["phaseOrStage"]] <-
        SpecimenList[["phaseOrStage"]]
      self[["title"]] <-
        SpecimenList[["title"]]
      self[["notes"]] <-
        SpecimenList[["notes"]]
      self[["preparationType"]] <-
        SpecimenList[["preparationType"]]
      self[["previousUnitsText"]] <-
        SpecimenList[["previousUnitsText"]]
      self[["numberOfSpecimen"]] <-
        SpecimenList[["numberOfSpecimen"]]
      self[["fromCaptivity"]] <-
        SpecimenList[["fromCaptivity"]]
      self[["objectPublic"]] <-
        SpecimenList[["objectPublic"]]
      self[["multiMediaPublic"]] <-
        SpecimenList[["multiMediaPublic"]]
      self[["acquiredFrom"]] <- Agent$new()$fromList(
        SpecimenList[["acquiredFrom"]],
        typeMapping = typeMapping
      )
      self[["gatheringEvent"]] <- GatheringEvent$new()$fromList(
        SpecimenList[["gatheringEvent"]],
        typeMapping = typeMapping
      )
      self[["dynamicProperties"]] <-
        SpecimenList[["dynamicProperties"]]
      self[["informationWithheld"]] <-
        SpecimenList[["informationWithheld"]]
      self[["dataGeneralizations"]] <-
        SpecimenList[["dataGeneralizations"]]
      self[["identifications"]] <- lapply(
        SpecimenList[["identifications"]],
        function(x) {
          SpecimenIdentification$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["associatedMultiMediaUris"]] <- lapply(
        SpecimenList[["associatedMultiMediaUris"]],
        function(x) {
          ServiceAccessPoint$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["theme"]] <-
        SpecimenList[["theme"]]
      self[["associatedMultiMediaObjects"]] <- lapply(
        SpecimenList[["associatedMultiMediaObjects"]],
        function(x) {
          MultiMediaObject$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["dateLastEdited"]] <-
        SpecimenList[["dateLastEdited"]]
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
        self$toList(),
        simplifyVector = TRUE,
        auto_unbox = TRUE,
        pretty = pretty
      )
    },
    fromJSONString = function(SpecimenJson,
                              typeMapping = NULL) {
      SpecimenList <- jsonlite::fromJSON(
        SpecimenJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(SpecimenList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<Specimen>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$sourceSystem) == "environment") {
        cat("\tsourceSystem:\tobject of class", paste0("<", class(self$sourceSystem)[1], ">"), "\n")
      } else if (typeof(self$sourceSystem) == "list") {
        cat("\tsourceSystem:\tlist of length", length(self$sourceSystem), "\n")
      } else {
        cat("\tsourceSystem:\t", self$sourceSystem, "\n")
      }
      if (typeof(self$sourceSystemId) == "environment") {
        cat("\tsourceSystemId:\tobject of class", paste0("<", class(self$sourceSystemId)[1], ">"), "\n")
      } else if (typeof(self$sourceSystemId) == "list") {
        cat("\tsourceSystemId:\tlist of length", length(self$sourceSystemId), "\n")
      } else {
        cat("\tsourceSystemId:\t", self$sourceSystemId, "\n")
      }
      if (typeof(self$recordURI) == "environment") {
        cat("\trecordURI:\tobject of class", paste0("<", class(self$recordURI)[1], ">"), "\n")
      } else if (typeof(self$recordURI) == "list") {
        cat("\trecordURI:\tlist of length", length(self$recordURI), "\n")
      } else {
        cat("\trecordURI:\t", self$recordURI, "\n")
      }
      if (typeof(self$id) == "environment") {
        cat("\tid:\tobject of class", paste0("<", class(self$id)[1], ">"), "\n")
      } else if (typeof(self$id) == "list") {
        cat("\tid:\tlist of length", length(self$id), "\n")
      } else {
        cat("\tid:\t", self$id, "\n")
      }
      if (typeof(self$unitID) == "environment") {
        cat("\tunitID:\tobject of class", paste0("<", class(self$unitID)[1], ">"), "\n")
      } else if (typeof(self$unitID) == "list") {
        cat("\tunitID:\tlist of length", length(self$unitID), "\n")
      } else {
        cat("\tunitID:\t", self$unitID, "\n")
      }
      if (typeof(self$unitGUID) == "environment") {
        cat("\tunitGUID:\tobject of class", paste0("<", class(self$unitGUID)[1], ">"), "\n")
      } else if (typeof(self$unitGUID) == "list") {
        cat("\tunitGUID:\tlist of length", length(self$unitGUID), "\n")
      } else {
        cat("\tunitGUID:\t", self$unitGUID, "\n")
      }
      if (typeof(self$collectorsFieldNumber) == "environment") {
        cat("\tcollectorsFieldNumber:\tobject of class", paste0("<", class(self$collectorsFieldNumber)[1], ">"), "\n")
      } else if (typeof(self$collectorsFieldNumber) == "list") {
        cat("\tcollectorsFieldNumber:\tlist of length", length(self$collectorsFieldNumber), "\n")
      } else {
        cat("\tcollectorsFieldNumber:\t", self$collectorsFieldNumber, "\n")
      }
      if (typeof(self$assemblageID) == "environment") {
        cat("\tassemblageID:\tobject of class", paste0("<", class(self$assemblageID)[1], ">"), "\n")
      } else if (typeof(self$assemblageID) == "list") {
        cat("\tassemblageID:\tlist of length", length(self$assemblageID), "\n")
      } else {
        cat("\tassemblageID:\t", self$assemblageID, "\n")
      }
      if (typeof(self$sourceInstitutionID) == "environment") {
        cat("\tsourceInstitutionID:\tobject of class", paste0("<", class(self$sourceInstitutionID)[1], ">"), "\n")
      } else if (typeof(self$sourceInstitutionID) == "list") {
        cat("\tsourceInstitutionID:\tlist of length", length(self$sourceInstitutionID), "\n")
      } else {
        cat("\tsourceInstitutionID:\t", self$sourceInstitutionID, "\n")
      }
      if (typeof(self$sourceID) == "environment") {
        cat("\tsourceID:\tobject of class", paste0("<", class(self$sourceID)[1], ">"), "\n")
      } else if (typeof(self$sourceID) == "list") {
        cat("\tsourceID:\tlist of length", length(self$sourceID), "\n")
      } else {
        cat("\tsourceID:\t", self$sourceID, "\n")
      }
      if (typeof(self$previousSourceID) == "environment") {
        cat("\tpreviousSourceID:\tobject of class", paste0("<", class(self$previousSourceID)[1], ">"), "\n")
      } else if (typeof(self$previousSourceID) == "list") {
        cat("\tpreviousSourceID:\tlist of length", length(self$previousSourceID), "\n")
      } else {
        cat("\tpreviousSourceID:\t", self$previousSourceID, "\n")
      }
      if (typeof(self$owner) == "environment") {
        cat("\towner:\tobject of class", paste0("<", class(self$owner)[1], ">"), "\n")
      } else if (typeof(self$owner) == "list") {
        cat("\towner:\tlist of length", length(self$owner), "\n")
      } else {
        cat("\towner:\t", self$owner, "\n")
      }
      if (typeof(self$licenseType) == "environment") {
        cat("\tlicenseType:\tobject of class", paste0("<", class(self$licenseType)[1], ">"), "\n")
      } else if (typeof(self$licenseType) == "list") {
        cat("\tlicenseType:\tlist of length", length(self$licenseType), "\n")
      } else {
        cat("\tlicenseType:\t", self$licenseType, "\n")
      }
      if (typeof(self$license) == "environment") {
        cat("\tlicense:\tobject of class", paste0("<", class(self$license)[1], ">"), "\n")
      } else if (typeof(self$license) == "list") {
        cat("\tlicense:\tlist of length", length(self$license), "\n")
      } else {
        cat("\tlicense:\t", self$license, "\n")
      }
      if (typeof(self$recordBasis) == "environment") {
        cat("\trecordBasis:\tobject of class", paste0("<", class(self$recordBasis)[1], ">"), "\n")
      } else if (typeof(self$recordBasis) == "list") {
        cat("\trecordBasis:\tlist of length", length(self$recordBasis), "\n")
      } else {
        cat("\trecordBasis:\t", self$recordBasis, "\n")
      }
      if (typeof(self$kindOfUnit) == "environment") {
        cat("\tkindOfUnit:\tobject of class", paste0("<", class(self$kindOfUnit)[1], ">"), "\n")
      } else if (typeof(self$kindOfUnit) == "list") {
        cat("\tkindOfUnit:\tlist of length", length(self$kindOfUnit), "\n")
      } else {
        cat("\tkindOfUnit:\t", self$kindOfUnit, "\n")
      }
      if (typeof(self$collectionType) == "environment") {
        cat("\tcollectionType:\tobject of class", paste0("<", class(self$collectionType)[1], ">"), "\n")
      } else if (typeof(self$collectionType) == "list") {
        cat("\tcollectionType:\tlist of length", length(self$collectionType), "\n")
      } else {
        cat("\tcollectionType:\t", self$collectionType, "\n")
      }
      if (typeof(self$sex) == "environment") {
        cat("\tsex:\tobject of class", paste0("<", class(self$sex)[1], ">"), "\n")
      } else if (typeof(self$sex) == "list") {
        cat("\tsex:\tlist of length", length(self$sex), "\n")
      } else {
        cat("\tsex:\t", self$sex, "\n")
      }
      if (typeof(self$phaseOrStage) == "environment") {
        cat("\tphaseOrStage:\tobject of class", paste0("<", class(self$phaseOrStage)[1], ">"), "\n")
      } else if (typeof(self$phaseOrStage) == "list") {
        cat("\tphaseOrStage:\tlist of length", length(self$phaseOrStage), "\n")
      } else {
        cat("\tphaseOrStage:\t", self$phaseOrStage, "\n")
      }
      if (typeof(self$title) == "environment") {
        cat("\ttitle:\tobject of class", paste0("<", class(self$title)[1], ">"), "\n")
      } else if (typeof(self$title) == "list") {
        cat("\ttitle:\tlist of length", length(self$title), "\n")
      } else {
        cat("\ttitle:\t", self$title, "\n")
      }
      if (typeof(self$notes) == "environment") {
        cat("\tnotes:\tobject of class", paste0("<", class(self$notes)[1], ">"), "\n")
      } else if (typeof(self$notes) == "list") {
        cat("\tnotes:\tlist of length", length(self$notes), "\n")
      } else {
        cat("\tnotes:\t", self$notes, "\n")
      }
      if (typeof(self$preparationType) == "environment") {
        cat("\tpreparationType:\tobject of class", paste0("<", class(self$preparationType)[1], ">"), "\n")
      } else if (typeof(self$preparationType) == "list") {
        cat("\tpreparationType:\tlist of length", length(self$preparationType), "\n")
      } else {
        cat("\tpreparationType:\t", self$preparationType, "\n")
      }
      if (typeof(self$previousUnitsText) == "environment") {
        cat("\tpreviousUnitsText:\tobject of class", paste0("<", class(self$previousUnitsText)[1], ">"), "\n")
      } else if (typeof(self$previousUnitsText) == "list") {
        cat("\tpreviousUnitsText:\tlist of length", length(self$previousUnitsText), "\n")
      } else {
        cat("\tpreviousUnitsText:\t", self$previousUnitsText, "\n")
      }
      if (typeof(self$numberOfSpecimen) == "environment") {
        cat("\tnumberOfSpecimen:\tobject of class", paste0("<", class(self$numberOfSpecimen)[1], ">"), "\n")
      } else if (typeof(self$numberOfSpecimen) == "list") {
        cat("\tnumberOfSpecimen:\tlist of length", length(self$numberOfSpecimen), "\n")
      } else {
        cat("\tnumberOfSpecimen:\t", self$numberOfSpecimen, "\n")
      }
      if (typeof(self$fromCaptivity) == "environment") {
        cat("\tfromCaptivity:\tobject of class", paste0("<", class(self$fromCaptivity)[1], ">"), "\n")
      } else if (typeof(self$fromCaptivity) == "list") {
        cat("\tfromCaptivity:\tlist of length", length(self$fromCaptivity), "\n")
      } else {
        cat("\tfromCaptivity:\t", self$fromCaptivity, "\n")
      }
      if (typeof(self$objectPublic) == "environment") {
        cat("\tobjectPublic:\tobject of class", paste0("<", class(self$objectPublic)[1], ">"), "\n")
      } else if (typeof(self$objectPublic) == "list") {
        cat("\tobjectPublic:\tlist of length", length(self$objectPublic), "\n")
      } else {
        cat("\tobjectPublic:\t", self$objectPublic, "\n")
      }
      if (typeof(self$multiMediaPublic) == "environment") {
        cat("\tmultiMediaPublic:\tobject of class", paste0("<", class(self$multiMediaPublic)[1], ">"), "\n")
      } else if (typeof(self$multiMediaPublic) == "list") {
        cat("\tmultiMediaPublic:\tlist of length", length(self$multiMediaPublic), "\n")
      } else {
        cat("\tmultiMediaPublic:\t", self$multiMediaPublic, "\n")
      }
      if (typeof(self$acquiredFrom) == "environment") {
        cat("\tacquiredFrom:\tobject of class", paste0("<", class(self$acquiredFrom)[1], ">"), "\n")
      } else if (typeof(self$acquiredFrom) == "list") {
        cat("\tacquiredFrom:\tlist of length", length(self$acquiredFrom), "\n")
      } else {
        cat("\tacquiredFrom:\t", self$acquiredFrom, "\n")
      }
      if (typeof(self$gatheringEvent) == "environment") {
        cat("\tgatheringEvent:\tobject of class", paste0("<", class(self$gatheringEvent)[1], ">"), "\n")
      } else if (typeof(self$gatheringEvent) == "list") {
        cat("\tgatheringEvent:\tlist of length", length(self$gatheringEvent), "\n")
      } else {
        cat("\tgatheringEvent:\t", self$gatheringEvent, "\n")
      }
      if (typeof(self$dynamicProperties) == "environment") {
        cat("\tdynamicProperties:\tobject of class", paste0("<", class(self$dynamicProperties)[1], ">"), "\n")
      } else if (typeof(self$dynamicProperties) == "list") {
        cat("\tdynamicProperties:\tlist of length", length(self$dynamicProperties), "\n")
      } else {
        cat("\tdynamicProperties:\t", self$dynamicProperties, "\n")
      }
      if (typeof(self$informationWithheld) == "environment") {
        cat("\tinformationWithheld:\tobject of class", paste0("<", class(self$informationWithheld)[1], ">"), "\n")
      } else if (typeof(self$informationWithheld) == "list") {
        cat("\tinformationWithheld:\tlist of length", length(self$informationWithheld), "\n")
      } else {
        cat("\tinformationWithheld:\t", self$informationWithheld, "\n")
      }
      if (typeof(self$dataGeneralizations) == "environment") {
        cat("\tdataGeneralizations:\tobject of class", paste0("<", class(self$dataGeneralizations)[1], ">"), "\n")
      } else if (typeof(self$dataGeneralizations) == "list") {
        cat("\tdataGeneralizations:\tlist of length", length(self$dataGeneralizations), "\n")
      } else {
        cat("\tdataGeneralizations:\t", self$dataGeneralizations, "\n")
      }
      if (typeof(self$identifications) == "environment") {
        cat("\tidentifications:\tobject of class", paste0("<", class(self$identifications)[1], ">"), "\n")
      } else if (typeof(self$identifications) == "list") {
        cat("\tidentifications:\tlist of length", length(self$identifications), "\n")
      } else {
        cat("\tidentifications:\t", self$identifications, "\n")
      }
      if (typeof(self$associatedMultiMediaUris) == "environment") {
        cat("\tassociatedMultiMediaUris:\tobject of class", paste0("<", class(self$associatedMultiMediaUris)[1], ">"), "\n")
      } else if (typeof(self$associatedMultiMediaUris) == "list") {
        cat("\tassociatedMultiMediaUris:\tlist of length", length(self$associatedMultiMediaUris), "\n")
      } else {
        cat("\tassociatedMultiMediaUris:\t", self$associatedMultiMediaUris, "\n")
      }
      if (typeof(self$theme) == "environment") {
        cat("\ttheme:\tobject of class", paste0("<", class(self$theme)[1], ">"), "\n")
      } else if (typeof(self$theme) == "list") {
        cat("\ttheme:\tlist of length", length(self$theme), "\n")
      } else {
        cat("\ttheme:\t", self$theme, "\n")
      }
      if (typeof(self$associatedMultiMediaObjects) == "environment") {
        cat("\tassociatedMultiMediaObjects:\tobject of class", paste0("<", class(self$associatedMultiMediaObjects)[1], ">"), "\n")
      } else if (typeof(self$associatedMultiMediaObjects) == "list") {
        cat("\tassociatedMultiMediaObjects:\tlist of length", length(self$associatedMultiMediaObjects), "\n")
      } else {
        cat("\tassociatedMultiMediaObjects:\t", self$associatedMultiMediaObjects, "\n")
      }
      if (typeof(self$dateLastEdited) == "environment") {
        cat("\tdateLastEdited:\tobject of class", paste0("<", class(self$dateLastEdited)[1], ">"), "\n")
      } else if (typeof(self$dateLastEdited) == "list") {
        cat("\tdateLastEdited:\tlist of length", length(self$dateLastEdited), "\n")
      } else {
        cat("\tdateLastEdited:\t", self$dateLastEdited, "\n")
      }
      ## print all methods
      cat("Methods:\n")
      cat("\tfromJSONString\n")
      cat("\ttoJSONString\n")
      cat("\tfromList\n")
      cat("\ttoList\n")
      cat("\tprint\n")
      invisible(self)
    }
  )
)
