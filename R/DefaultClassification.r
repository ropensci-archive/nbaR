# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DefaultClassification Class
#'
#'
#'
#' @field kingdom  character
#' @field phylum  character
#' @field className  character
#' @field order  character
#' @field superFamily  character
#' @field family  character
#' @field genus  character
#' @field subgenus  character
#' @field specificEpithet  character
#' @field infraspecificEpithet  character
#' @field infraspecificRank  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor DefaultClassification object.
#'
#' }
#' \item{\code{$fromList(DefaultClassificationList)}}{
#'
#'   Create DefaultClassification object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of DefaultClassification.
#'
#' }
#' \item{\code{fromJSONString(DefaultClassificationJson)}}{
#'
#'   Create DefaultClassification object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of DefaultClassification.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultClassification <- R6::R6Class(
  "DefaultClassification",
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
    initialize = function(
                              `kingdom`,
                              `phylum`,
                              `className`,
                              `order`,
                              `superFamily`,
                              `family`,
                              `genus`,
                              `subgenus`,
                              `specificEpithet`,
                              `infraspecificEpithet`,
                              `infraspecificRank`) {
      if (!missing(`kingdom`)) {
        stopifnot(
          is.character(`kingdom`),
          length(`kingdom`) == 1
        )
        self[["kingdom"]] <- `kingdom`
      }
      if (!missing(`phylum`)) {
        stopifnot(
          is.character(`phylum`),
          length(`phylum`) == 1
        )
        self[["phylum"]] <- `phylum`
      }
      if (!missing(`className`)) {
        stopifnot(
          is.character(`className`),
          length(`className`) == 1
        )
        self[["className"]] <- `className`
      }
      if (!missing(`order`)) {
        stopifnot(
          is.character(`order`),
          length(`order`) == 1
        )
        self[["order"]] <- `order`
      }
      if (!missing(`superFamily`)) {
        stopifnot(
          is.character(`superFamily`),
          length(`superFamily`) == 1
        )
        self[["superFamily"]] <- `superFamily`
      }
      if (!missing(`family`)) {
        stopifnot(
          is.character(`family`),
          length(`family`) == 1
        )
        self[["family"]] <- `family`
      }
      if (!missing(`genus`)) {
        stopifnot(
          is.character(`genus`),
          length(`genus`) == 1
        )
        self[["genus"]] <- `genus`
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
      if (!missing(`infraspecificRank`)) {
        stopifnot(
          is.character(`infraspecificRank`),
          length(`infraspecificRank`) == 1
        )
        self[["infraspecificRank"]] <- `infraspecificRank`
      }
    },
    toList = function() {
      DefaultClassificationList <- list()
      if (!is.null(self[["kingdom"]])) {
        DefaultClassificationList[["kingdom"]] <-
          self[["kingdom"]]
      }
      if (!is.null(self[["phylum"]])) {
        DefaultClassificationList[["phylum"]] <-
          self[["phylum"]]
      }
      if (!is.null(self[["className"]])) {
        DefaultClassificationList[["className"]] <-
          self[["className"]]
      }
      if (!is.null(self[["order"]])) {
        DefaultClassificationList[["order"]] <-
          self[["order"]]
      }
      if (!is.null(self[["superFamily"]])) {
        DefaultClassificationList[["superFamily"]] <-
          self[["superFamily"]]
      }
      if (!is.null(self[["family"]])) {
        DefaultClassificationList[["family"]] <-
          self[["family"]]
      }
      if (!is.null(self[["genus"]])) {
        DefaultClassificationList[["genus"]] <-
          self[["genus"]]
      }
      if (!is.null(self[["subgenus"]])) {
        DefaultClassificationList[["subgenus"]] <-
          self[["subgenus"]]
      }
      if (!is.null(self[["specificEpithet"]])) {
        DefaultClassificationList[["specificEpithet"]] <-
          self[["specificEpithet"]]
      }
      if (!is.null(self[["infraspecificEpithet"]])) {
        DefaultClassificationList[["infraspecificEpithet"]] <-
          self[["infraspecificEpithet"]]
      }
      if (!is.null(self[["infraspecificRank"]])) {
        DefaultClassificationList[["infraspecificRank"]] <-
          self[["infraspecificRank"]]
      }
      ## omit empty nested lists in returned list
      DefaultClassificationList[vapply(
        DefaultClassificationList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(DefaultClassificationList,
                            typeMapping = NULL) {
      self[["kingdom"]] <-
        DefaultClassificationList[["kingdom"]]
      self[["phylum"]] <-
        DefaultClassificationList[["phylum"]]
      self[["className"]] <-
        DefaultClassificationList[["className"]]
      self[["order"]] <-
        DefaultClassificationList[["order"]]
      self[["superFamily"]] <-
        DefaultClassificationList[["superFamily"]]
      self[["family"]] <-
        DefaultClassificationList[["family"]]
      self[["genus"]] <-
        DefaultClassificationList[["genus"]]
      self[["subgenus"]] <-
        DefaultClassificationList[["subgenus"]]
      self[["specificEpithet"]] <-
        DefaultClassificationList[["specificEpithet"]]
      self[["infraspecificEpithet"]] <-
        DefaultClassificationList[["infraspecificEpithet"]]
      self[["infraspecificRank"]] <-
        DefaultClassificationList[["infraspecificRank"]]
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
    fromJSONString = function(DefaultClassificationJson,
                                  typeMapping = NULL) {
      DefaultClassificationList <- jsonlite::fromJSON(
        DefaultClassificationJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(DefaultClassificationList)
      #        self[["kingdom"]] <-
      #                DefaultClassificationList[["kingdom"]]
      #        self[["phylum"]] <-
      #                DefaultClassificationList[["phylum"]]
      #        self[["className"]] <-
      #                DefaultClassificationList[["className"]]
      #        self[["order"]] <-
      #                DefaultClassificationList[["order"]]
      #        self[["superFamily"]] <-
      #                DefaultClassificationList[["superFamily"]]
      #        self[["family"]] <-
      #                DefaultClassificationList[["family"]]
      #        self[["genus"]] <-
      #                DefaultClassificationList[["genus"]]
      #        self[["subgenus"]] <-
      #                DefaultClassificationList[["subgenus"]]
      #        self[["specificEpithet"]] <-
      #                DefaultClassificationList[["specificEpithet"]]
      #        self[["infraspecificEpithet"]] <-
      #                DefaultClassificationList[["infraspecificEpithet"]]
      #        self[["infraspecificRank"]] <-
      #                DefaultClassificationList[["infraspecificRank"]]
      invisible(self)
    }
  )
)
