# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ScientificName Class
#'
#' @field fullScientificName
#' @field taxonomicStatus
#' @field genusOrMonomial
#' @field subgenus
#' @field specificEpithet
#' @field infraspecificEpithet
#' @field infraspecificMarker
#' @field nameAddendum
#' @field authorshipVerbatim
#' @field author
#' @field year
#' @field scientificNameGroup
#' @field references
#' @field experts
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScientificName <- R6::R6Class(
  "ScientificName",
  public = list(
    `fullScientificName` = NULL,
    `taxonomicStatus` = NULL,
    `genusOrMonomial` = NULL,
    `subgenus` = NULL,
    `specificEpithet` = NULL,
    `infraspecificEpithet` = NULL,
    `infraspecificMarker` = NULL,
    `nameAddendum` = NULL,
    `authorshipVerbatim` = NULL,
    `author` = NULL,
    `year` = NULL,
    `scientificNameGroup` = NULL,
    `references` = NULL,
    `experts` = NULL,
    initialize = function(
                              `fullScientificName`,
                              `taxonomicStatus`,
                              `genusOrMonomial`,
                              `subgenus`,
                              `specificEpithet`,
                              `infraspecificEpithet`,
                              `infraspecificMarker`,
                              `nameAddendum`,
                              `authorshipVerbatim`,
                              `author`,
                              `year`,
                              `scientificNameGroup`,
                              `references`,
                              `experts`) {
      if (!missing(`fullScientificName`)) {
        stopifnot(
          is.character(`fullScientificName`),
          length(`fullScientificName`) == 1
        )
        self[["fullScientificName"]] <- `fullScientificName`
      }
      if (!missing(`taxonomicStatus`)) {
        stopifnot(
          is.character(`taxonomicStatus`),
          length(`taxonomicStatus`) == 1
        )
        self[["taxonomicStatus"]] <- `taxonomicStatus`
      }
      if (!missing(`genusOrMonomial`)) {
        stopifnot(
          is.character(`genusOrMonomial`),
          length(`genusOrMonomial`) == 1
        )
        self[["genusOrMonomial"]] <- `genusOrMonomial`
      }
      if (!missing(`subgenus`)) {
        stopifnot(
          is.character(`subgenus`),
          length(`subgenus`) == 1
        )
        self[["subgenus"]] <- `subgenus`
      }
      if (!missing(`specificEpithet`)) {
        stopifnot(
          is.character(`specificEpithet`),
          length(`specificEpithet`) == 1
        )
        self[["specificEpithet"]] <- `specificEpithet`
      }
      if (!missing(`infraspecificEpithet`)) {
        stopifnot(
          is.character(`infraspecificEpithet`),
          length(`infraspecificEpithet`) == 1
        )
        self[["infraspecificEpithet"]] <- `infraspecificEpithet`
      }
      if (!missing(`infraspecificMarker`)) {
        stopifnot(
          is.character(`infraspecificMarker`),
          length(`infraspecificMarker`) == 1
        )
        self[["infraspecificMarker"]] <- `infraspecificMarker`
      }
      if (!missing(`nameAddendum`)) {
        stopifnot(
          is.character(`nameAddendum`),
          length(`nameAddendum`) == 1
        )
        self[["nameAddendum"]] <- `nameAddendum`
      }
      if (!missing(`authorshipVerbatim`)) {
        stopifnot(
          is.character(`authorshipVerbatim`),
          length(`authorshipVerbatim`) == 1
        )
        self[["authorshipVerbatim"]] <- `authorshipVerbatim`
      }
      if (!missing(`author`)) {
        stopifnot(
          is.character(`author`),
          length(`author`) == 1
        )
        self[["author"]] <- `author`
      }
      if (!missing(`year`)) {
        stopifnot(
          is.character(`year`),
          length(`year`) == 1
        )
        self[["year"]] <- `year`
      }
      if (!missing(`scientificNameGroup`)) {
        stopifnot(
          is.character(`scientificNameGroup`),
          length(`scientificNameGroup`) == 1
        )
        self[["scientificNameGroup"]] <- `scientificNameGroup`
      }
      if (!missing(`references`)) {
        stopifnot(
          is.list(`references`),
          length(`references`) != 0
        )
        lapply(
          `references`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["references"]] <- `references`
      }
      if (!missing(`experts`)) {
        stopifnot(
          is.list(`experts`),
          length(`experts`) != 0
        )
        lapply(
          `experts`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["experts"]] <- `experts`
      }
    },
    toList = function() {
      ScientificNameList <- list()
      if (!is.null(self[["fullScientificName"]])) {
        ScientificNameList[["fullScientificName"]] <-
          self[["fullScientificName"]]
      }
      if (!is.null(self[["taxonomicStatus"]])) {
        ScientificNameList[["taxonomicStatus"]] <-
          self[["taxonomicStatus"]]
      }
      if (!is.null(self[["genusOrMonomial"]])) {
        ScientificNameList[["genusOrMonomial"]] <-
          self[["genusOrMonomial"]]
      }
      if (!is.null(self[["subgenus"]])) {
        ScientificNameList[["subgenus"]] <-
          self[["subgenus"]]
      }
      if (!is.null(self[["specificEpithet"]])) {
        ScientificNameList[["specificEpithet"]] <-
          self[["specificEpithet"]]
      }
      if (!is.null(self[["infraspecificEpithet"]])) {
        ScientificNameList[["infraspecificEpithet"]] <-
          self[["infraspecificEpithet"]]
      }
      if (!is.null(self[["infraspecificMarker"]])) {
        ScientificNameList[["infraspecificMarker"]] <-
          self[["infraspecificMarker"]]
      }
      if (!is.null(self[["nameAddendum"]])) {
        ScientificNameList[["nameAddendum"]] <-
          self[["nameAddendum"]]
      }
      if (!is.null(self[["authorshipVerbatim"]])) {
        ScientificNameList[["authorshipVerbatim"]] <-
          self[["authorshipVerbatim"]]
      }
      if (!is.null(self[["author"]])) {
        ScientificNameList[["author"]] <-
          self[["author"]]
      }
      if (!is.null(self[["year"]])) {
        ScientificNameList[["year"]] <-
          self[["year"]]
      }
      if (!is.null(self[["scientificNameGroup"]])) {
        ScientificNameList[["scientificNameGroup"]] <-
          self[["scientificNameGroup"]]
      }
      if (!is.null(self[["references"]])) {
        ScientificNameList[["references"]] <-
          lapply(self[["references"]], function(x) x$toList())
      }
      if (!is.null(self[["experts"]])) {
        ScientificNameList[["experts"]] <-
          lapply(self[["experts"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      ScientificNameList[vapply(
        ScientificNameList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(ScientificNameList,
                            typeMapping = NULL) {
      self[["fullScientificName"]] <-
        ScientificNameList[["fullScientificName"]]
      self[["taxonomicStatus"]] <-
        ScientificNameList[["taxonomicStatus"]]
      self[["genusOrMonomial"]] <-
        ScientificNameList[["genusOrMonomial"]]
      self[["subgenus"]] <-
        ScientificNameList[["subgenus"]]
      self[["specificEpithet"]] <-
        ScientificNameList[["specificEpithet"]]
      self[["infraspecificEpithet"]] <-
        ScientificNameList[["infraspecificEpithet"]]
      self[["infraspecificMarker"]] <-
        ScientificNameList[["infraspecificMarker"]]
      self[["nameAddendum"]] <-
        ScientificNameList[["nameAddendum"]]
      self[["authorshipVerbatim"]] <-
        ScientificNameList[["authorshipVerbatim"]]
      self[["author"]] <-
        ScientificNameList[["author"]]
      self[["year"]] <-
        ScientificNameList[["year"]]
      self[["scientificNameGroup"]] <-
        ScientificNameList[["scientificNameGroup"]]
      self[["references"]] <- lapply(
        ScientificNameList[["references"]],
        function(x) {
          Reference$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["experts"]] <- lapply(
        ScientificNameList[["experts"]],
        function(x) {
          Expert$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
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
    fromJSONString = function(ScientificNameJson,
                                  typeMapping = NULL) {
      ScientificNameList <- jsonlite::fromJSON(
        ScientificNameJson,
        simplifyVector = FALSE
      )
      self[["fullScientificName"]] <-
        ScientificNameList[["fullScientificName"]]
      self[["taxonomicStatus"]] <-
        ScientificNameList[["taxonomicStatus"]]
      self[["genusOrMonomial"]] <-
        ScientificNameList[["genusOrMonomial"]]
      self[["subgenus"]] <-
        ScientificNameList[["subgenus"]]
      self[["specificEpithet"]] <-
        ScientificNameList[["specificEpithet"]]
      self[["infraspecificEpithet"]] <-
        ScientificNameList[["infraspecificEpithet"]]
      self[["infraspecificMarker"]] <-
        ScientificNameList[["infraspecificMarker"]]
      self[["nameAddendum"]] <-
        ScientificNameList[["nameAddendum"]]
      self[["authorshipVerbatim"]] <-
        ScientificNameList[["authorshipVerbatim"]]
      self[["author"]] <-
        ScientificNameList[["author"]]
      self[["year"]] <-
        ScientificNameList[["year"]]
      self[["scientificNameGroup"]] <-
        ScientificNameList[["scientificNameGroup"]]
      self[["references"]] <- lapply(
        ScientificNameList[["references"]],
        function(x) {
          Reference$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["experts"]] <- lapply(
        ScientificNameList[["experts"]],
        function(x) {
          Expert$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      invisible(self)
    }
  )
)
