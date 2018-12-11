# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ChronoStratigraphy Class
#'
#'
#'
#' @field youngRegionalSubstage  character
#' @field youngRegionalStage  character
#' @field youngRegionalSeries  character
#' @field youngDatingQualifier  character
#' @field youngInternSystem  character
#' @field youngInternSubstage  character
#' @field youngInternStage  character
#' @field youngInternSeries  character
#' @field youngInternErathem  character
#' @field youngInternEonothem  character
#' @field youngChronoName  character
#' @field youngCertainty  character
#' @field oldDatingQualifier  character
#' @field chronoPreferredFlag  logical
#' @field oldRegionalSubstage  character
#' @field oldRegionalStage  character
#' @field oldRegionalSeries  character
#' @field oldInternSystem  character
#' @field oldInternSubstage  character
#' @field oldInternStage  character
#' @field oldInternSeries  character
#' @field oldInternErathem  character
#' @field oldInternEonothem  character
#' @field oldChronoName  character
#' @field chronoIdentifier  character
#' @field oldCertainty  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor ChronoStratigraphy object.
#'
#' }
#' \item{\code{$fromList(ChronoStratigraphyList)}}{
#'
#'   Create ChronoStratigraphy object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of ChronoStratigraphy.
#'
#' }
#' \item{\code{fromJSONString(ChronoStratigraphyJson)}}{
#'
#'   Create ChronoStratigraphy object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of ChronoStratigraphy.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ChronoStratigraphy <- R6::R6Class(
  "ChronoStratigraphy",
  public = list(
    `youngRegionalSubstage` = NULL,
    `youngRegionalStage` = NULL,
    `youngRegionalSeries` = NULL,
    `youngDatingQualifier` = NULL,
    `youngInternSystem` = NULL,
    `youngInternSubstage` = NULL,
    `youngInternStage` = NULL,
    `youngInternSeries` = NULL,
    `youngInternErathem` = NULL,
    `youngInternEonothem` = NULL,
    `youngChronoName` = NULL,
    `youngCertainty` = NULL,
    `oldDatingQualifier` = NULL,
    `chronoPreferredFlag` = NULL,
    `oldRegionalSubstage` = NULL,
    `oldRegionalStage` = NULL,
    `oldRegionalSeries` = NULL,
    `oldInternSystem` = NULL,
    `oldInternSubstage` = NULL,
    `oldInternStage` = NULL,
    `oldInternSeries` = NULL,
    `oldInternErathem` = NULL,
    `oldInternEonothem` = NULL,
    `oldChronoName` = NULL,
    `chronoIdentifier` = NULL,
    `oldCertainty` = NULL,
    initialize = function(
                              `youngRegionalSubstage`,
                              `youngRegionalStage`,
                              `youngRegionalSeries`,
                              `youngDatingQualifier`,
                              `youngInternSystem`,
                              `youngInternSubstage`,
                              `youngInternStage`,
                              `youngInternSeries`,
                              `youngInternErathem`,
                              `youngInternEonothem`,
                              `youngChronoName`,
                              `youngCertainty`,
                              `oldDatingQualifier`,
                              `chronoPreferredFlag`,
                              `oldRegionalSubstage`,
                              `oldRegionalStage`,
                              `oldRegionalSeries`,
                              `oldInternSystem`,
                              `oldInternSubstage`,
                              `oldInternStage`,
                              `oldInternSeries`,
                              `oldInternErathem`,
                              `oldInternEonothem`,
                              `oldChronoName`,
                              `chronoIdentifier`,
                              `oldCertainty`) {
      if (!missing(`youngRegionalSubstage`)) {
        stopifnot(
          is.character(`youngRegionalSubstage`),
          length(`youngRegionalSubstage`) == 1
        )
        self[["youngRegionalSubstage"]] <- `youngRegionalSubstage`
      }
      if (!missing(`youngRegionalStage`)) {
        stopifnot(
          is.character(`youngRegionalStage`),
          length(`youngRegionalStage`) == 1
        )
        self[["youngRegionalStage"]] <- `youngRegionalStage`
      }
      if (!missing(`youngRegionalSeries`)) {
        stopifnot(
          is.character(`youngRegionalSeries`),
          length(`youngRegionalSeries`) == 1
        )
        self[["youngRegionalSeries"]] <- `youngRegionalSeries`
      }
      if (!missing(`youngDatingQualifier`)) {
        stopifnot(
          is.character(`youngDatingQualifier`),
          length(`youngDatingQualifier`) == 1
        )
        self[["youngDatingQualifier"]] <- `youngDatingQualifier`
      }
      if (!missing(`youngInternSystem`)) {
        stopifnot(
          is.character(`youngInternSystem`),
          length(`youngInternSystem`) == 1
        )
        self[["youngInternSystem"]] <- `youngInternSystem`
      }
      if (!missing(`youngInternSubstage`)) {
        stopifnot(
          is.character(`youngInternSubstage`),
          length(`youngInternSubstage`) == 1
        )
        self[["youngInternSubstage"]] <- `youngInternSubstage`
      }
      if (!missing(`youngInternStage`)) {
        stopifnot(
          is.character(`youngInternStage`),
          length(`youngInternStage`) == 1
        )
        self[["youngInternStage"]] <- `youngInternStage`
      }
      if (!missing(`youngInternSeries`)) {
        stopifnot(
          is.character(`youngInternSeries`),
          length(`youngInternSeries`) == 1
        )
        self[["youngInternSeries"]] <- `youngInternSeries`
      }
      if (!missing(`youngInternErathem`)) {
        stopifnot(
          is.character(`youngInternErathem`),
          length(`youngInternErathem`) == 1
        )
        self[["youngInternErathem"]] <- `youngInternErathem`
      }
      if (!missing(`youngInternEonothem`)) {
        stopifnot(
          is.character(`youngInternEonothem`),
          length(`youngInternEonothem`) == 1
        )
        self[["youngInternEonothem"]] <- `youngInternEonothem`
      }
      if (!missing(`youngChronoName`)) {
        stopifnot(
          is.character(`youngChronoName`),
          length(`youngChronoName`) == 1
        )
        self[["youngChronoName"]] <- `youngChronoName`
      }
      if (!missing(`youngCertainty`)) {
        stopifnot(
          is.character(`youngCertainty`),
          length(`youngCertainty`) == 1
        )
        self[["youngCertainty"]] <- `youngCertainty`
      }
      if (!missing(`oldDatingQualifier`)) {
        stopifnot(
          is.character(`oldDatingQualifier`),
          length(`oldDatingQualifier`) == 1
        )
        self[["oldDatingQualifier"]] <- `oldDatingQualifier`
      }
      if (!missing(`chronoPreferredFlag`)) {
        self[["chronoPreferredFlag"]] <- `chronoPreferredFlag`
      }
      if (!missing(`oldRegionalSubstage`)) {
        stopifnot(
          is.character(`oldRegionalSubstage`),
          length(`oldRegionalSubstage`) == 1
        )
        self[["oldRegionalSubstage"]] <- `oldRegionalSubstage`
      }
      if (!missing(`oldRegionalStage`)) {
        stopifnot(
          is.character(`oldRegionalStage`),
          length(`oldRegionalStage`) == 1
        )
        self[["oldRegionalStage"]] <- `oldRegionalStage`
      }
      if (!missing(`oldRegionalSeries`)) {
        stopifnot(
          is.character(`oldRegionalSeries`),
          length(`oldRegionalSeries`) == 1
        )
        self[["oldRegionalSeries"]] <- `oldRegionalSeries`
      }
      if (!missing(`oldInternSystem`)) {
        stopifnot(
          is.character(`oldInternSystem`),
          length(`oldInternSystem`) == 1
        )
        self[["oldInternSystem"]] <- `oldInternSystem`
      }
      if (!missing(`oldInternSubstage`)) {
        stopifnot(
          is.character(`oldInternSubstage`),
          length(`oldInternSubstage`) == 1
        )
        self[["oldInternSubstage"]] <- `oldInternSubstage`
      }
      if (!missing(`oldInternStage`)) {
        stopifnot(
          is.character(`oldInternStage`),
          length(`oldInternStage`) == 1
        )
        self[["oldInternStage"]] <- `oldInternStage`
      }
      if (!missing(`oldInternSeries`)) {
        stopifnot(
          is.character(`oldInternSeries`),
          length(`oldInternSeries`) == 1
        )
        self[["oldInternSeries"]] <- `oldInternSeries`
      }
      if (!missing(`oldInternErathem`)) {
        stopifnot(
          is.character(`oldInternErathem`),
          length(`oldInternErathem`) == 1
        )
        self[["oldInternErathem"]] <- `oldInternErathem`
      }
      if (!missing(`oldInternEonothem`)) {
        stopifnot(
          is.character(`oldInternEonothem`),
          length(`oldInternEonothem`) == 1
        )
        self[["oldInternEonothem"]] <- `oldInternEonothem`
      }
      if (!missing(`oldChronoName`)) {
        stopifnot(
          is.character(`oldChronoName`),
          length(`oldChronoName`) == 1
        )
        self[["oldChronoName"]] <- `oldChronoName`
      }
      if (!missing(`chronoIdentifier`)) {
        stopifnot(
          is.character(`chronoIdentifier`),
          length(`chronoIdentifier`) == 1
        )
        self[["chronoIdentifier"]] <- `chronoIdentifier`
      }
      if (!missing(`oldCertainty`)) {
        stopifnot(
          is.character(`oldCertainty`),
          length(`oldCertainty`) == 1
        )
        self[["oldCertainty"]] <- `oldCertainty`
      }
    },
    toList = function() {
      ChronoStratigraphyList <- list()
      if (!is.null(self[["youngRegionalSubstage"]])) {
        ChronoStratigraphyList[["youngRegionalSubstage"]] <-
          self[["youngRegionalSubstage"]]
      }
      if (!is.null(self[["youngRegionalStage"]])) {
        ChronoStratigraphyList[["youngRegionalStage"]] <-
          self[["youngRegionalStage"]]
      }
      if (!is.null(self[["youngRegionalSeries"]])) {
        ChronoStratigraphyList[["youngRegionalSeries"]] <-
          self[["youngRegionalSeries"]]
      }
      if (!is.null(self[["youngDatingQualifier"]])) {
        ChronoStratigraphyList[["youngDatingQualifier"]] <-
          self[["youngDatingQualifier"]]
      }
      if (!is.null(self[["youngInternSystem"]])) {
        ChronoStratigraphyList[["youngInternSystem"]] <-
          self[["youngInternSystem"]]
      }
      if (!is.null(self[["youngInternSubstage"]])) {
        ChronoStratigraphyList[["youngInternSubstage"]] <-
          self[["youngInternSubstage"]]
      }
      if (!is.null(self[["youngInternStage"]])) {
        ChronoStratigraphyList[["youngInternStage"]] <-
          self[["youngInternStage"]]
      }
      if (!is.null(self[["youngInternSeries"]])) {
        ChronoStratigraphyList[["youngInternSeries"]] <-
          self[["youngInternSeries"]]
      }
      if (!is.null(self[["youngInternErathem"]])) {
        ChronoStratigraphyList[["youngInternErathem"]] <-
          self[["youngInternErathem"]]
      }
      if (!is.null(self[["youngInternEonothem"]])) {
        ChronoStratigraphyList[["youngInternEonothem"]] <-
          self[["youngInternEonothem"]]
      }
      if (!is.null(self[["youngChronoName"]])) {
        ChronoStratigraphyList[["youngChronoName"]] <-
          self[["youngChronoName"]]
      }
      if (!is.null(self[["youngCertainty"]])) {
        ChronoStratigraphyList[["youngCertainty"]] <-
          self[["youngCertainty"]]
      }
      if (!is.null(self[["oldDatingQualifier"]])) {
        ChronoStratigraphyList[["oldDatingQualifier"]] <-
          self[["oldDatingQualifier"]]
      }
      if (!is.null(self[["chronoPreferredFlag"]])) {
        ChronoStratigraphyList[["chronoPreferredFlag"]] <-
          self[["chronoPreferredFlag"]]
      }
      if (!is.null(self[["oldRegionalSubstage"]])) {
        ChronoStratigraphyList[["oldRegionalSubstage"]] <-
          self[["oldRegionalSubstage"]]
      }
      if (!is.null(self[["oldRegionalStage"]])) {
        ChronoStratigraphyList[["oldRegionalStage"]] <-
          self[["oldRegionalStage"]]
      }
      if (!is.null(self[["oldRegionalSeries"]])) {
        ChronoStratigraphyList[["oldRegionalSeries"]] <-
          self[["oldRegionalSeries"]]
      }
      if (!is.null(self[["oldInternSystem"]])) {
        ChronoStratigraphyList[["oldInternSystem"]] <-
          self[["oldInternSystem"]]
      }
      if (!is.null(self[["oldInternSubstage"]])) {
        ChronoStratigraphyList[["oldInternSubstage"]] <-
          self[["oldInternSubstage"]]
      }
      if (!is.null(self[["oldInternStage"]])) {
        ChronoStratigraphyList[["oldInternStage"]] <-
          self[["oldInternStage"]]
      }
      if (!is.null(self[["oldInternSeries"]])) {
        ChronoStratigraphyList[["oldInternSeries"]] <-
          self[["oldInternSeries"]]
      }
      if (!is.null(self[["oldInternErathem"]])) {
        ChronoStratigraphyList[["oldInternErathem"]] <-
          self[["oldInternErathem"]]
      }
      if (!is.null(self[["oldInternEonothem"]])) {
        ChronoStratigraphyList[["oldInternEonothem"]] <-
          self[["oldInternEonothem"]]
      }
      if (!is.null(self[["oldChronoName"]])) {
        ChronoStratigraphyList[["oldChronoName"]] <-
          self[["oldChronoName"]]
      }
      if (!is.null(self[["chronoIdentifier"]])) {
        ChronoStratigraphyList[["chronoIdentifier"]] <-
          self[["chronoIdentifier"]]
      }
      if (!is.null(self[["oldCertainty"]])) {
        ChronoStratigraphyList[["oldCertainty"]] <-
          self[["oldCertainty"]]
      }
      ## omit empty nested lists in returned list
      ChronoStratigraphyList[vapply(
        ChronoStratigraphyList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(ChronoStratigraphyList,
                            typeMapping = NULL) {
      self[["youngRegionalSubstage"]] <-
        ChronoStratigraphyList[["youngRegionalSubstage"]]
      self[["youngRegionalStage"]] <-
        ChronoStratigraphyList[["youngRegionalStage"]]
      self[["youngRegionalSeries"]] <-
        ChronoStratigraphyList[["youngRegionalSeries"]]
      self[["youngDatingQualifier"]] <-
        ChronoStratigraphyList[["youngDatingQualifier"]]
      self[["youngInternSystem"]] <-
        ChronoStratigraphyList[["youngInternSystem"]]
      self[["youngInternSubstage"]] <-
        ChronoStratigraphyList[["youngInternSubstage"]]
      self[["youngInternStage"]] <-
        ChronoStratigraphyList[["youngInternStage"]]
      self[["youngInternSeries"]] <-
        ChronoStratigraphyList[["youngInternSeries"]]
      self[["youngInternErathem"]] <-
        ChronoStratigraphyList[["youngInternErathem"]]
      self[["youngInternEonothem"]] <-
        ChronoStratigraphyList[["youngInternEonothem"]]
      self[["youngChronoName"]] <-
        ChronoStratigraphyList[["youngChronoName"]]
      self[["youngCertainty"]] <-
        ChronoStratigraphyList[["youngCertainty"]]
      self[["oldDatingQualifier"]] <-
        ChronoStratigraphyList[["oldDatingQualifier"]]
      self[["chronoPreferredFlag"]] <-
        ChronoStratigraphyList[["chronoPreferredFlag"]]
      self[["oldRegionalSubstage"]] <-
        ChronoStratigraphyList[["oldRegionalSubstage"]]
      self[["oldRegionalStage"]] <-
        ChronoStratigraphyList[["oldRegionalStage"]]
      self[["oldRegionalSeries"]] <-
        ChronoStratigraphyList[["oldRegionalSeries"]]
      self[["oldInternSystem"]] <-
        ChronoStratigraphyList[["oldInternSystem"]]
      self[["oldInternSubstage"]] <-
        ChronoStratigraphyList[["oldInternSubstage"]]
      self[["oldInternStage"]] <-
        ChronoStratigraphyList[["oldInternStage"]]
      self[["oldInternSeries"]] <-
        ChronoStratigraphyList[["oldInternSeries"]]
      self[["oldInternErathem"]] <-
        ChronoStratigraphyList[["oldInternErathem"]]
      self[["oldInternEonothem"]] <-
        ChronoStratigraphyList[["oldInternEonothem"]]
      self[["oldChronoName"]] <-
        ChronoStratigraphyList[["oldChronoName"]]
      self[["chronoIdentifier"]] <-
        ChronoStratigraphyList[["chronoIdentifier"]]
      self[["oldCertainty"]] <-
        ChronoStratigraphyList[["oldCertainty"]]
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
    fromJSONString = function(ChronoStratigraphyJson,
                                  typeMapping = NULL) {
      ChronoStratigraphyList <- jsonlite::fromJSON(
        ChronoStratigraphyJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(ChronoStratigraphyList)
      #        self[["youngRegionalSubstage"]] <-
      #                ChronoStratigraphyList[["youngRegionalSubstage"]]
      #        self[["youngRegionalStage"]] <-
      #                ChronoStratigraphyList[["youngRegionalStage"]]
      #        self[["youngRegionalSeries"]] <-
      #                ChronoStratigraphyList[["youngRegionalSeries"]]
      #        self[["youngDatingQualifier"]] <-
      #                ChronoStratigraphyList[["youngDatingQualifier"]]
      #        self[["youngInternSystem"]] <-
      #                ChronoStratigraphyList[["youngInternSystem"]]
      #        self[["youngInternSubstage"]] <-
      #                ChronoStratigraphyList[["youngInternSubstage"]]
      #        self[["youngInternStage"]] <-
      #                ChronoStratigraphyList[["youngInternStage"]]
      #        self[["youngInternSeries"]] <-
      #                ChronoStratigraphyList[["youngInternSeries"]]
      #        self[["youngInternErathem"]] <-
      #                ChronoStratigraphyList[["youngInternErathem"]]
      #        self[["youngInternEonothem"]] <-
      #                ChronoStratigraphyList[["youngInternEonothem"]]
      #        self[["youngChronoName"]] <-
      #                ChronoStratigraphyList[["youngChronoName"]]
      #        self[["youngCertainty"]] <-
      #                ChronoStratigraphyList[["youngCertainty"]]
      #        self[["oldDatingQualifier"]] <-
      #                ChronoStratigraphyList[["oldDatingQualifier"]]
      #        self[["chronoPreferredFlag"]] <-
      #                ChronoStratigraphyList[["chronoPreferredFlag"]]
      #        self[["oldRegionalSubstage"]] <-
      #                ChronoStratigraphyList[["oldRegionalSubstage"]]
      #        self[["oldRegionalStage"]] <-
      #                ChronoStratigraphyList[["oldRegionalStage"]]
      #        self[["oldRegionalSeries"]] <-
      #                ChronoStratigraphyList[["oldRegionalSeries"]]
      #        self[["oldInternSystem"]] <-
      #                ChronoStratigraphyList[["oldInternSystem"]]
      #        self[["oldInternSubstage"]] <-
      #                ChronoStratigraphyList[["oldInternSubstage"]]
      #        self[["oldInternStage"]] <-
      #                ChronoStratigraphyList[["oldInternStage"]]
      #        self[["oldInternSeries"]] <-
      #                ChronoStratigraphyList[["oldInternSeries"]]
      #        self[["oldInternErathem"]] <-
      #                ChronoStratigraphyList[["oldInternErathem"]]
      #        self[["oldInternEonothem"]] <-
      #                ChronoStratigraphyList[["oldInternEonothem"]]
      #        self[["oldChronoName"]] <-
      #                ChronoStratigraphyList[["oldChronoName"]]
      #        self[["chronoIdentifier"]] <-
      #                ChronoStratigraphyList[["chronoIdentifier"]]
      #        self[["oldCertainty"]] <-
      #                ChronoStratigraphyList[["oldCertainty"]]
      invisible(self)
    }
  )
)
