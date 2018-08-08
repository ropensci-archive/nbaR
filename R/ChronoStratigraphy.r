# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ChronoStratigraphy Class
#'
#' @field youngRegionalSubstage
#' @field youngRegionalStage
#' @field youngRegionalSeries
#' @field youngDatingQualifier
#' @field youngInternSystem
#' @field youngInternSubstage
#' @field youngInternStage
#' @field youngInternSeries
#' @field youngInternErathem
#' @field youngInternEonothem
#' @field youngChronoName
#' @field youngCertainty
#' @field oldDatingQualifier
#' @field chronoPreferredFlag
#' @field oldRegionalSubstage
#' @field oldRegionalStage
#' @field oldRegionalSeries
#' @field oldInternSystem
#' @field oldInternSubstage
#' @field oldInternStage
#' @field oldInternSeries
#' @field oldInternErathem
#' @field oldInternEonothem
#' @field oldChronoName
#' @field chronoIdentifier
#' @field oldCertainty
#'
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
      ChronoStratigraphyList[vapply(ChronoStratigraphyList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },

    fromList = function(ChronoStratigraphyList, typeMapping = NULL) {
      if (is.null(typeMapping[["youngRegionalSubstage"]])) {
        self[["youngRegionalSubstage"]] <-
          ChronoStratigraphyList[["youngRegionalSubstage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngRegionalSubstage"]], "$new()")
        ))
        self[["youngRegionalSubstage"]] <- obj$fromList(
          ChronoStratigraphyList[["youngRegionalSubstage"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngRegionalStage"]])) {
        self[["youngRegionalStage"]] <-
          ChronoStratigraphyList[["youngRegionalStage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngRegionalStage"]], "$new()")
        ))
        self[["youngRegionalStage"]] <- obj$fromList(
          ChronoStratigraphyList[["youngRegionalStage"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngRegionalSeries"]])) {
        self[["youngRegionalSeries"]] <-
          ChronoStratigraphyList[["youngRegionalSeries"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngRegionalSeries"]], "$new()")
        ))
        self[["youngRegionalSeries"]] <- obj$fromList(
          ChronoStratigraphyList[["youngRegionalSeries"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngDatingQualifier"]])) {
        self[["youngDatingQualifier"]] <-
          ChronoStratigraphyList[["youngDatingQualifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngDatingQualifier"]], "$new()")
        ))
        self[["youngDatingQualifier"]] <- obj$fromList(
          ChronoStratigraphyList[["youngDatingQualifier"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternSystem"]])) {
        self[["youngInternSystem"]] <-
          ChronoStratigraphyList[["youngInternSystem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternSystem"]], "$new()")
        ))
        self[["youngInternSystem"]] <- obj$fromList(
          ChronoStratigraphyList[["youngInternSystem"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternSubstage"]])) {
        self[["youngInternSubstage"]] <-
          ChronoStratigraphyList[["youngInternSubstage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternSubstage"]], "$new()")
        ))
        self[["youngInternSubstage"]] <- obj$fromList(
          ChronoStratigraphyList[["youngInternSubstage"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternStage"]])) {
        self[["youngInternStage"]] <-
          ChronoStratigraphyList[["youngInternStage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternStage"]], "$new()")
        ))
        self[["youngInternStage"]] <- obj$fromList(
          ChronoStratigraphyList[["youngInternStage"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternSeries"]])) {
        self[["youngInternSeries"]] <-
          ChronoStratigraphyList[["youngInternSeries"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternSeries"]], "$new()")
        ))
        self[["youngInternSeries"]] <- obj$fromList(
          ChronoStratigraphyList[["youngInternSeries"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternErathem"]])) {
        self[["youngInternErathem"]] <-
          ChronoStratigraphyList[["youngInternErathem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternErathem"]], "$new()")
        ))
        self[["youngInternErathem"]] <- obj$fromList(
          ChronoStratigraphyList[["youngInternErathem"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternEonothem"]])) {
        self[["youngInternEonothem"]] <-
          ChronoStratigraphyList[["youngInternEonothem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternEonothem"]], "$new()")
        ))
        self[["youngInternEonothem"]] <- obj$fromList(
          ChronoStratigraphyList[["youngInternEonothem"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngChronoName"]])) {
        self[["youngChronoName"]] <-
          ChronoStratigraphyList[["youngChronoName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngChronoName"]], "$new()")
        ))
        self[["youngChronoName"]] <- obj$fromList(
          ChronoStratigraphyList[["youngChronoName"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngCertainty"]])) {
        self[["youngCertainty"]] <-
          ChronoStratigraphyList[["youngCertainty"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngCertainty"]], "$new()")
        ))
        self[["youngCertainty"]] <- obj$fromList(
          ChronoStratigraphyList[["youngCertainty"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldDatingQualifier"]])) {
        self[["oldDatingQualifier"]] <-
          ChronoStratigraphyList[["oldDatingQualifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldDatingQualifier"]], "$new()")
        ))
        self[["oldDatingQualifier"]] <- obj$fromList(
          ChronoStratigraphyList[["oldDatingQualifier"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["chronoPreferredFlag"]])) {
        self[["chronoPreferredFlag"]] <-
          ChronoStratigraphyList[["chronoPreferredFlag"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["chronoPreferredFlag"]], "$new()")
        ))
        self[["chronoPreferredFlag"]] <- obj$fromList(
          ChronoStratigraphyList[["chronoPreferredFlag"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldRegionalSubstage"]])) {
        self[["oldRegionalSubstage"]] <-
          ChronoStratigraphyList[["oldRegionalSubstage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldRegionalSubstage"]], "$new()")
        ))
        self[["oldRegionalSubstage"]] <- obj$fromList(
          ChronoStratigraphyList[["oldRegionalSubstage"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldRegionalStage"]])) {
        self[["oldRegionalStage"]] <-
          ChronoStratigraphyList[["oldRegionalStage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldRegionalStage"]], "$new()")
        ))
        self[["oldRegionalStage"]] <- obj$fromList(
          ChronoStratigraphyList[["oldRegionalStage"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldRegionalSeries"]])) {
        self[["oldRegionalSeries"]] <-
          ChronoStratigraphyList[["oldRegionalSeries"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldRegionalSeries"]], "$new()")
        ))
        self[["oldRegionalSeries"]] <- obj$fromList(
          ChronoStratigraphyList[["oldRegionalSeries"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternSystem"]])) {
        self[["oldInternSystem"]] <-
          ChronoStratigraphyList[["oldInternSystem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternSystem"]], "$new()")
        ))
        self[["oldInternSystem"]] <- obj$fromList(
          ChronoStratigraphyList[["oldInternSystem"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternSubstage"]])) {
        self[["oldInternSubstage"]] <-
          ChronoStratigraphyList[["oldInternSubstage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternSubstage"]], "$new()")
        ))
        self[["oldInternSubstage"]] <- obj$fromList(
          ChronoStratigraphyList[["oldInternSubstage"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternStage"]])) {
        self[["oldInternStage"]] <-
          ChronoStratigraphyList[["oldInternStage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternStage"]], "$new()")
        ))
        self[["oldInternStage"]] <- obj$fromList(
          ChronoStratigraphyList[["oldInternStage"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternSeries"]])) {
        self[["oldInternSeries"]] <-
          ChronoStratigraphyList[["oldInternSeries"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternSeries"]], "$new()")
        ))
        self[["oldInternSeries"]] <- obj$fromList(
          ChronoStratigraphyList[["oldInternSeries"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternErathem"]])) {
        self[["oldInternErathem"]] <-
          ChronoStratigraphyList[["oldInternErathem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternErathem"]], "$new()")
        ))
        self[["oldInternErathem"]] <- obj$fromList(
          ChronoStratigraphyList[["oldInternErathem"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternEonothem"]])) {
        self[["oldInternEonothem"]] <-
          ChronoStratigraphyList[["oldInternEonothem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternEonothem"]], "$new()")
        ))
        self[["oldInternEonothem"]] <- obj$fromList(
          ChronoStratigraphyList[["oldInternEonothem"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldChronoName"]])) {
        self[["oldChronoName"]] <-
          ChronoStratigraphyList[["oldChronoName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldChronoName"]], "$new()")
        ))
        self[["oldChronoName"]] <- obj$fromList(
          ChronoStratigraphyList[["oldChronoName"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["chronoIdentifier"]])) {
        self[["chronoIdentifier"]] <-
          ChronoStratigraphyList[["chronoIdentifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["chronoIdentifier"]], "$new()")
        ))
        self[["chronoIdentifier"]] <- obj$fromList(
          ChronoStratigraphyList[["chronoIdentifier"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldCertainty"]])) {
        self[["oldCertainty"]] <-
          ChronoStratigraphyList[["oldCertainty"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldCertainty"]], "$new()")
        ))
        self[["oldCertainty"]] <- obj$fromList(
          ChronoStratigraphyList[["oldCertainty"]],
          typeMapping = typeMapping
        )
      }
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
      if (is.null(typeMapping[["youngRegionalSubstage"]])) {
        self[["youngRegionalSubstage"]] <-
          ChronoStratigraphyList[["youngRegionalSubstage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngRegionalSubstage"]], "$new()")
        ))
        self[["youngRegionalSubstage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngRegionalSubstage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngRegionalStage"]])) {
        self[["youngRegionalStage"]] <-
          ChronoStratigraphyList[["youngRegionalStage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngRegionalStage"]], "$new()")
        ))
        self[["youngRegionalStage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngRegionalStage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngRegionalSeries"]])) {
        self[["youngRegionalSeries"]] <-
          ChronoStratigraphyList[["youngRegionalSeries"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngRegionalSeries"]], "$new()")
        ))
        self[["youngRegionalSeries"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngRegionalSeries"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngDatingQualifier"]])) {
        self[["youngDatingQualifier"]] <-
          ChronoStratigraphyList[["youngDatingQualifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngDatingQualifier"]], "$new()")
        ))
        self[["youngDatingQualifier"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngDatingQualifier"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternSystem"]])) {
        self[["youngInternSystem"]] <-
          ChronoStratigraphyList[["youngInternSystem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternSystem"]], "$new()")
        ))
        self[["youngInternSystem"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngInternSystem"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternSubstage"]])) {
        self[["youngInternSubstage"]] <-
          ChronoStratigraphyList[["youngInternSubstage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternSubstage"]], "$new()")
        ))
        self[["youngInternSubstage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngInternSubstage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternStage"]])) {
        self[["youngInternStage"]] <-
          ChronoStratigraphyList[["youngInternStage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternStage"]], "$new()")
        ))
        self[["youngInternStage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngInternStage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternSeries"]])) {
        self[["youngInternSeries"]] <-
          ChronoStratigraphyList[["youngInternSeries"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternSeries"]], "$new()")
        ))
        self[["youngInternSeries"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngInternSeries"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternErathem"]])) {
        self[["youngInternErathem"]] <-
          ChronoStratigraphyList[["youngInternErathem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternErathem"]], "$new()")
        ))
        self[["youngInternErathem"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngInternErathem"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngInternEonothem"]])) {
        self[["youngInternEonothem"]] <-
          ChronoStratigraphyList[["youngInternEonothem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngInternEonothem"]], "$new()")
        ))
        self[["youngInternEonothem"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngInternEonothem"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngChronoName"]])) {
        self[["youngChronoName"]] <-
          ChronoStratigraphyList[["youngChronoName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngChronoName"]], "$new()")
        ))
        self[["youngChronoName"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngChronoName"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["youngCertainty"]])) {
        self[["youngCertainty"]] <-
          ChronoStratigraphyList[["youngCertainty"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["youngCertainty"]], "$new()")
        ))
        self[["youngCertainty"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["youngCertainty"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldDatingQualifier"]])) {
        self[["oldDatingQualifier"]] <-
          ChronoStratigraphyList[["oldDatingQualifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldDatingQualifier"]], "$new()")
        ))
        self[["oldDatingQualifier"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldDatingQualifier"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["chronoPreferredFlag"]])) {
        self[["chronoPreferredFlag"]] <-
          ChronoStratigraphyList[["chronoPreferredFlag"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["chronoPreferredFlag"]], "$new()")
        ))
        self[["chronoPreferredFlag"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["chronoPreferredFlag"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldRegionalSubstage"]])) {
        self[["oldRegionalSubstage"]] <-
          ChronoStratigraphyList[["oldRegionalSubstage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldRegionalSubstage"]], "$new()")
        ))
        self[["oldRegionalSubstage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldRegionalSubstage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldRegionalStage"]])) {
        self[["oldRegionalStage"]] <-
          ChronoStratigraphyList[["oldRegionalStage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldRegionalStage"]], "$new()")
        ))
        self[["oldRegionalStage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldRegionalStage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldRegionalSeries"]])) {
        self[["oldRegionalSeries"]] <-
          ChronoStratigraphyList[["oldRegionalSeries"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldRegionalSeries"]], "$new()")
        ))
        self[["oldRegionalSeries"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldRegionalSeries"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternSystem"]])) {
        self[["oldInternSystem"]] <-
          ChronoStratigraphyList[["oldInternSystem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternSystem"]], "$new()")
        ))
        self[["oldInternSystem"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldInternSystem"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternSubstage"]])) {
        self[["oldInternSubstage"]] <-
          ChronoStratigraphyList[["oldInternSubstage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternSubstage"]], "$new()")
        ))
        self[["oldInternSubstage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldInternSubstage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternStage"]])) {
        self[["oldInternStage"]] <-
          ChronoStratigraphyList[["oldInternStage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternStage"]], "$new()")
        ))
        self[["oldInternStage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldInternStage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternSeries"]])) {
        self[["oldInternSeries"]] <-
          ChronoStratigraphyList[["oldInternSeries"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternSeries"]], "$new()")
        ))
        self[["oldInternSeries"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldInternSeries"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternErathem"]])) {
        self[["oldInternErathem"]] <-
          ChronoStratigraphyList[["oldInternErathem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternErathem"]], "$new()")
        ))
        self[["oldInternErathem"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldInternErathem"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldInternEonothem"]])) {
        self[["oldInternEonothem"]] <-
          ChronoStratigraphyList[["oldInternEonothem"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldInternEonothem"]], "$new()")
        ))
        self[["oldInternEonothem"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldInternEonothem"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldChronoName"]])) {
        self[["oldChronoName"]] <-
          ChronoStratigraphyList[["oldChronoName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldChronoName"]], "$new()")
        ))
        self[["oldChronoName"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldChronoName"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["chronoIdentifier"]])) {
        self[["chronoIdentifier"]] <-
          ChronoStratigraphyList[["chronoIdentifier"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["chronoIdentifier"]], "$new()")
        ))
        self[["chronoIdentifier"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["chronoIdentifier"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["oldCertainty"]])) {
        self[["oldCertainty"]] <-
          ChronoStratigraphyList[["oldCertainty"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["oldCertainty"]], "$new()")
        ))
        self[["oldCertainty"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            ChronoStratigraphyList[["oldCertainty"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
