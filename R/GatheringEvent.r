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
#' # GatheringEvent$new()
#'
#' @format
#' R6 class
#'
#' @title GatheringEvent Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for GatheringEvent objects.
#'
#'
#' @field projectTitle  character
#'
#' @field worldRegion  character
#'
#' @field continent  character
#'
#' @field country  character
#'
#' @field iso3166Code  character
#'
#' @field provinceState  character
#'
#' @field island  character
#'
#' @field locality  character
#'
#' @field city  character
#'
#' @field sublocality  character
#'
#' @field localityText  character
#'
#' @field dateTimeBegin  character
#'
#' @field dateTimeEnd  character
#'
#' @field dateText  character
#'
#' @field method  character
#'
#' @field altitude  character
#'
#' @field altitudeUnifOfMeasurement  character
#'
#' @field behavior  character
#'
#' @field biotopeText  character
#'
#' @field depth  character
#'
#' @field depthUnitOfMeasurement  character
#'
#' @field code  character
#'
#' @field establishmentMeans  character
#'
#' @field gatheringPersons  list(Person)
#'
#' @field gatheringOrganizations  list(Organization)
#'
#' @field siteCoordinates  list(GatheringSiteCoordinates)
#'
#' @field namedAreas  list(NamedArea)
#'
#' @field associatedTaxa  list(AssociatedTaxon)
#'
#' @field chronoStratigraphy  list(ChronoStratigraphy)
#'
#' @field lithoStratigraphy  list(LithoStratigraphy)
#'
#' @field bioStratigraphic  list(BioStratigraphy)
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor GatheringEvent object.
#'
#' }
#' \item{\code{$fromList(GatheringEventList)}}{
#'
#'   Create GatheringEvent object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of GatheringEvent.
#'
#' }
#' \item{\code{fromJSONString(GatheringEventJson)}}{
#'
#'   Create GatheringEvent object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of GatheringEvent.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GatheringEvent <- R6::R6Class(
  "GatheringEvent",
  public = list(
    `projectTitle` = NULL,
    `worldRegion` = NULL,
    `continent` = NULL,
    `country` = NULL,
    `iso3166Code` = NULL,
    `provinceState` = NULL,
    `island` = NULL,
    `locality` = NULL,
    `city` = NULL,
    `sublocality` = NULL,
    `localityText` = NULL,
    `dateTimeBegin` = NULL,
    `dateTimeEnd` = NULL,
    `dateText` = NULL,
    `method` = NULL,
    `altitude` = NULL,
    `altitudeUnifOfMeasurement` = NULL,
    `behavior` = NULL,
    `biotopeText` = NULL,
    `depth` = NULL,
    `depthUnitOfMeasurement` = NULL,
    `code` = NULL,
    `establishmentMeans` = NULL,
    `gatheringPersons` = NULL,
    `gatheringOrganizations` = NULL,
    `siteCoordinates` = NULL,
    `namedAreas` = NULL,
    `associatedTaxa` = NULL,
    `chronoStratigraphy` = NULL,
    `lithoStratigraphy` = NULL,
    `bioStratigraphic` = NULL,
    initialize = function(
        `projectTitle`,
        `worldRegion`,
        `continent`,
        `country`,
        `iso3166Code`,
        `provinceState`,
        `island`,
        `locality`,
        `city`,
        `sublocality`,
        `localityText`,
        `dateTimeBegin`,
        `dateTimeEnd`,
        `dateText`,
        `method`,
        `altitude`,
        `altitudeUnifOfMeasurement`,
        `behavior`,
        `biotopeText`,
        `depth`,
        `depthUnitOfMeasurement`,
        `code`,
        `establishmentMeans`,
        `gatheringPersons`,
        `gatheringOrganizations`,
        `siteCoordinates`,
        `namedAreas`,
        `associatedTaxa`,
        `chronoStratigraphy`,
        `lithoStratigraphy`,
        `bioStratigraphic`) {
      if (!missing(`projectTitle`)) {
        stopifnot(
          is.character(`projectTitle`),
          length(`projectTitle`) == 1
        )
        self[["projectTitle"]] <- `projectTitle`
      }
      if (!missing(`worldRegion`)) {
        stopifnot(
          is.character(`worldRegion`),
          length(`worldRegion`) == 1
        )
        self[["worldRegion"]] <- `worldRegion`
      }
      if (!missing(`continent`)) {
        stopifnot(
          is.character(`continent`),
          length(`continent`) == 1
        )
        self[["continent"]] <- `continent`
      }
      if (!missing(`country`)) {
        stopifnot(
          is.character(`country`),
          length(`country`) == 1
        )
        self[["country"]] <- `country`
      }
      if (!missing(`iso3166Code`)) {
        stopifnot(
          is.character(`iso3166Code`),
          length(`iso3166Code`) == 1
        )
        self[["iso3166Code"]] <- `iso3166Code`
      }
      if (!missing(`provinceState`)) {
        stopifnot(
          is.character(`provinceState`),
          length(`provinceState`) == 1
        )
        self[["provinceState"]] <- `provinceState`
      }
      if (!missing(`island`)) {
        stopifnot(
          is.character(`island`),
          length(`island`) == 1
        )
        self[["island"]] <- `island`
      }
      if (!missing(`locality`)) {
        stopifnot(
          is.character(`locality`),
          length(`locality`) == 1
        )
        self[["locality"]] <- `locality`
      }
      if (!missing(`city`)) {
        stopifnot(
          is.character(`city`),
          length(`city`) == 1
        )
        self[["city"]] <- `city`
      }
      if (!missing(`sublocality`)) {
        stopifnot(
          is.character(`sublocality`),
          length(`sublocality`) == 1
        )
        self[["sublocality"]] <- `sublocality`
      }
      if (!missing(`localityText`)) {
        stopifnot(
          is.character(`localityText`),
          length(`localityText`) == 1
        )
        self[["localityText"]] <- `localityText`
      }
      if (!missing(`dateTimeBegin`)) {
        stopifnot(
          is.character(`dateTimeBegin`),
          length(`dateTimeBegin`) == 1
        )
        self[["dateTimeBegin"]] <- `dateTimeBegin`
      }
      if (!missing(`dateTimeEnd`)) {
        stopifnot(
          is.character(`dateTimeEnd`),
          length(`dateTimeEnd`) == 1
        )
        self[["dateTimeEnd"]] <- `dateTimeEnd`
      }
      if (!missing(`dateText`)) {
        stopifnot(
          is.character(`dateText`),
          length(`dateText`) == 1
        )
        self[["dateText"]] <- `dateText`
      }
      if (!missing(`method`)) {
        stopifnot(
          is.character(`method`),
          length(`method`) == 1
        )
        self[["method"]] <- `method`
      }
      if (!missing(`altitude`)) {
        stopifnot(
          is.character(`altitude`),
          length(`altitude`) == 1
        )
        self[["altitude"]] <- `altitude`
      }
      if (!missing(`altitudeUnifOfMeasurement`)) {
        stopifnot(
          is.character(`altitudeUnifOfMeasurement`),
          length(`altitudeUnifOfMeasurement`) == 1
        )
        self[["altitudeUnifOfMeasurement"]] <- `altitudeUnifOfMeasurement`
      }
      if (!missing(`behavior`)) {
        stopifnot(
          is.character(`behavior`),
          length(`behavior`) == 1
        )
        self[["behavior"]] <- `behavior`
      }
      if (!missing(`biotopeText`)) {
        stopifnot(
          is.character(`biotopeText`),
          length(`biotopeText`) == 1
        )
        self[["biotopeText"]] <- `biotopeText`
      }
      if (!missing(`depth`)) {
        stopifnot(
          is.character(`depth`),
          length(`depth`) == 1
        )
        self[["depth"]] <- `depth`
      }
      if (!missing(`depthUnitOfMeasurement`)) {
        stopifnot(
          is.character(`depthUnitOfMeasurement`),
          length(`depthUnitOfMeasurement`) == 1
        )
        self[["depthUnitOfMeasurement"]] <- `depthUnitOfMeasurement`
      }
      if (!missing(`code`)) {
        stopifnot(
          is.character(`code`),
          length(`code`) == 1
        )
        self[["code"]] <- `code`
      }
      if (!missing(`establishmentMeans`)) {
        stopifnot(
          is.character(`establishmentMeans`),
          length(`establishmentMeans`) == 1
        )
        self[["establishmentMeans"]] <- `establishmentMeans`
      }
      if (!missing(`gatheringPersons`)) {
        stopifnot(
          is.list(`gatheringPersons`),
          length(`gatheringPersons`) != 0
        )
        lapply(
          `gatheringPersons`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["gatheringPersons"]] <- unname(`gatheringPersons`)
      }
      if (!missing(`gatheringOrganizations`)) {
        stopifnot(
          is.list(`gatheringOrganizations`),
          length(`gatheringOrganizations`) != 0
        )
        lapply(
          `gatheringOrganizations`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["gatheringOrganizations"]] <- unname(`gatheringOrganizations`)
      }
      if (!missing(`siteCoordinates`)) {
        stopifnot(
          is.list(`siteCoordinates`),
          length(`siteCoordinates`) != 0
        )
        lapply(
          `siteCoordinates`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["siteCoordinates"]] <- unname(`siteCoordinates`)
      }
      if (!missing(`namedAreas`)) {
        stopifnot(
          is.list(`namedAreas`),
          length(`namedAreas`) != 0
        )
        lapply(
          `namedAreas`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["namedAreas"]] <- unname(`namedAreas`)
      }
      if (!missing(`associatedTaxa`)) {
        stopifnot(
          is.list(`associatedTaxa`),
          length(`associatedTaxa`) != 0
        )
        lapply(
          `associatedTaxa`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["associatedTaxa"]] <- unname(`associatedTaxa`)
      }
      if (!missing(`chronoStratigraphy`)) {
        stopifnot(
          is.list(`chronoStratigraphy`),
          length(`chronoStratigraphy`) != 0
        )
        lapply(
          `chronoStratigraphy`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["chronoStratigraphy"]] <- unname(`chronoStratigraphy`)
      }
      if (!missing(`lithoStratigraphy`)) {
        stopifnot(
          is.list(`lithoStratigraphy`),
          length(`lithoStratigraphy`) != 0
        )
        lapply(
          `lithoStratigraphy`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["lithoStratigraphy"]] <- unname(`lithoStratigraphy`)
      }
      if (!missing(`bioStratigraphic`)) {
        stopifnot(
          is.list(`bioStratigraphic`),
          length(`bioStratigraphic`) != 0
        )
        lapply(
          `bioStratigraphic`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["bioStratigraphic"]] <- unname(`bioStratigraphic`)
      }
    },
    toList = function() {
      GatheringEventList <- list()
      if (!is.null(self[["projectTitle"]])) {
        GatheringEventList[["projectTitle"]] <-
          self[["projectTitle"]]
      }
      if (!is.null(self[["worldRegion"]])) {
        GatheringEventList[["worldRegion"]] <-
          self[["worldRegion"]]
      }
      if (!is.null(self[["continent"]])) {
        GatheringEventList[["continent"]] <-
          self[["continent"]]
      }
      if (!is.null(self[["country"]])) {
        GatheringEventList[["country"]] <-
          self[["country"]]
      }
      if (!is.null(self[["iso3166Code"]])) {
        GatheringEventList[["iso3166Code"]] <-
          self[["iso3166Code"]]
      }
      if (!is.null(self[["provinceState"]])) {
        GatheringEventList[["provinceState"]] <-
          self[["provinceState"]]
      }
      if (!is.null(self[["island"]])) {
        GatheringEventList[["island"]] <-
          self[["island"]]
      }
      if (!is.null(self[["locality"]])) {
        GatheringEventList[["locality"]] <-
          self[["locality"]]
      }
      if (!is.null(self[["city"]])) {
        GatheringEventList[["city"]] <-
          self[["city"]]
      }
      if (!is.null(self[["sublocality"]])) {
        GatheringEventList[["sublocality"]] <-
          self[["sublocality"]]
      }
      if (!is.null(self[["localityText"]])) {
        GatheringEventList[["localityText"]] <-
          self[["localityText"]]
      }
      if (!is.null(self[["dateTimeBegin"]])) {
        GatheringEventList[["dateTimeBegin"]] <-
          self[["dateTimeBegin"]]
      }
      if (!is.null(self[["dateTimeEnd"]])) {
        GatheringEventList[["dateTimeEnd"]] <-
          self[["dateTimeEnd"]]
      }
      if (!is.null(self[["dateText"]])) {
        GatheringEventList[["dateText"]] <-
          self[["dateText"]]
      }
      if (!is.null(self[["method"]])) {
        GatheringEventList[["method"]] <-
          self[["method"]]
      }
      if (!is.null(self[["altitude"]])) {
        GatheringEventList[["altitude"]] <-
          self[["altitude"]]
      }
      if (!is.null(self[["altitudeUnifOfMeasurement"]])) {
        GatheringEventList[["altitudeUnifOfMeasurement"]] <-
          self[["altitudeUnifOfMeasurement"]]
      }
      if (!is.null(self[["behavior"]])) {
        GatheringEventList[["behavior"]] <-
          self[["behavior"]]
      }
      if (!is.null(self[["biotopeText"]])) {
        GatheringEventList[["biotopeText"]] <-
          self[["biotopeText"]]
      }
      if (!is.null(self[["depth"]])) {
        GatheringEventList[["depth"]] <-
          self[["depth"]]
      }
      if (!is.null(self[["depthUnitOfMeasurement"]])) {
        GatheringEventList[["depthUnitOfMeasurement"]] <-
          self[["depthUnitOfMeasurement"]]
      }
      if (!is.null(self[["code"]])) {
        GatheringEventList[["code"]] <-
          self[["code"]]
      }
      if (!is.null(self[["establishmentMeans"]])) {
        GatheringEventList[["establishmentMeans"]] <-
          self[["establishmentMeans"]]
      }
      if (!is.null(self[["gatheringPersons"]])) {
        GatheringEventList[["gatheringPersons"]] <-
          lapply(self[["gatheringPersons"]], function(x) x$toList())
      }
      if (!is.null(self[["gatheringOrganizations"]])) {
        GatheringEventList[["gatheringOrganizations"]] <-
          lapply(self[["gatheringOrganizations"]], function(x) x$toList())
      }
      if (!is.null(self[["siteCoordinates"]])) {
        GatheringEventList[["siteCoordinates"]] <-
          lapply(self[["siteCoordinates"]], function(x) x$toList())
      }
      if (!is.null(self[["namedAreas"]])) {
        GatheringEventList[["namedAreas"]] <-
          lapply(self[["namedAreas"]], function(x) x$toList())
      }
      if (!is.null(self[["associatedTaxa"]])) {
        GatheringEventList[["associatedTaxa"]] <-
          lapply(self[["associatedTaxa"]], function(x) x$toList())
      }
      if (!is.null(self[["chronoStratigraphy"]])) {
        GatheringEventList[["chronoStratigraphy"]] <-
          lapply(self[["chronoStratigraphy"]], function(x) x$toList())
      }
      if (!is.null(self[["lithoStratigraphy"]])) {
        GatheringEventList[["lithoStratigraphy"]] <-
          lapply(self[["lithoStratigraphy"]], function(x) x$toList())
      }
      if (!is.null(self[["bioStratigraphic"]])) {
        GatheringEventList[["bioStratigraphic"]] <-
          lapply(self[["bioStratigraphic"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      GatheringEventList[vapply(
        GatheringEventList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(GatheringEventList,
                        typeMapping = NULL) {
      self[["projectTitle"]] <-
        GatheringEventList[["projectTitle"]]
      self[["worldRegion"]] <-
        GatheringEventList[["worldRegion"]]
      self[["continent"]] <-
        GatheringEventList[["continent"]]
      self[["country"]] <-
        GatheringEventList[["country"]]
      self[["iso3166Code"]] <-
        GatheringEventList[["iso3166Code"]]
      self[["provinceState"]] <-
        GatheringEventList[["provinceState"]]
      self[["island"]] <-
        GatheringEventList[["island"]]
      self[["locality"]] <-
        GatheringEventList[["locality"]]
      self[["city"]] <-
        GatheringEventList[["city"]]
      self[["sublocality"]] <-
        GatheringEventList[["sublocality"]]
      self[["localityText"]] <-
        GatheringEventList[["localityText"]]
      self[["dateTimeBegin"]] <-
        GatheringEventList[["dateTimeBegin"]]
      self[["dateTimeEnd"]] <-
        GatheringEventList[["dateTimeEnd"]]
      self[["dateText"]] <-
        GatheringEventList[["dateText"]]
      self[["method"]] <-
        GatheringEventList[["method"]]
      self[["altitude"]] <-
        GatheringEventList[["altitude"]]
      self[["altitudeUnifOfMeasurement"]] <-
        GatheringEventList[["altitudeUnifOfMeasurement"]]
      self[["behavior"]] <-
        GatheringEventList[["behavior"]]
      self[["biotopeText"]] <-
        GatheringEventList[["biotopeText"]]
      self[["depth"]] <-
        GatheringEventList[["depth"]]
      self[["depthUnitOfMeasurement"]] <-
        GatheringEventList[["depthUnitOfMeasurement"]]
      self[["code"]] <-
        GatheringEventList[["code"]]
      self[["establishmentMeans"]] <-
        GatheringEventList[["establishmentMeans"]]
      self[["gatheringPersons"]] <- lapply(
        GatheringEventList[["gatheringPersons"]],
        function(x) {
          Person$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["gatheringOrganizations"]] <- lapply(
        GatheringEventList[["gatheringOrganizations"]],
        function(x) {
          Organization$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["siteCoordinates"]] <- lapply(
        GatheringEventList[["siteCoordinates"]],
        function(x) {
          GatheringSiteCoordinates$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["namedAreas"]] <- lapply(
        GatheringEventList[["namedAreas"]],
        function(x) {
          NamedArea$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["associatedTaxa"]] <- lapply(
        GatheringEventList[["associatedTaxa"]],
        function(x) {
          AssociatedTaxon$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["chronoStratigraphy"]] <- lapply(
        GatheringEventList[["chronoStratigraphy"]],
        function(x) {
          ChronoStratigraphy$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["lithoStratigraphy"]] <- lapply(
        GatheringEventList[["lithoStratigraphy"]],
        function(x) {
          LithoStratigraphy$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["bioStratigraphic"]] <- lapply(
        GatheringEventList[["bioStratigraphic"]],
        function(x) {
          BioStratigraphy$new()$fromList(x,
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
    fromJSONString = function(GatheringEventJson,
                              typeMapping = NULL) {
      GatheringEventList <- jsonlite::fromJSON(
        GatheringEventJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(GatheringEventList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<GatheringEvent>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$projectTitle) == "environment") {
        cat("\tprojectTitle:\tobject of class", paste0("<", class(self$projectTitle)[1], ">"), "\n")
      } else if (typeof(self$projectTitle) == "list") {
        cat("\tprojectTitle:\tlist of length", length(self$projectTitle), "\n")
      } else {
        cat("\tprojectTitle:\t", self$projectTitle, "\n")
      }
      if (typeof(self$worldRegion) == "environment") {
        cat("\tworldRegion:\tobject of class", paste0("<", class(self$worldRegion)[1], ">"), "\n")
      } else if (typeof(self$worldRegion) == "list") {
        cat("\tworldRegion:\tlist of length", length(self$worldRegion), "\n")
      } else {
        cat("\tworldRegion:\t", self$worldRegion, "\n")
      }
      if (typeof(self$continent) == "environment") {
        cat("\tcontinent:\tobject of class", paste0("<", class(self$continent)[1], ">"), "\n")
      } else if (typeof(self$continent) == "list") {
        cat("\tcontinent:\tlist of length", length(self$continent), "\n")
      } else {
        cat("\tcontinent:\t", self$continent, "\n")
      }
      if (typeof(self$country) == "environment") {
        cat("\tcountry:\tobject of class", paste0("<", class(self$country)[1], ">"), "\n")
      } else if (typeof(self$country) == "list") {
        cat("\tcountry:\tlist of length", length(self$country), "\n")
      } else {
        cat("\tcountry:\t", self$country, "\n")
      }
      if (typeof(self$iso3166Code) == "environment") {
        cat("\tiso3166Code:\tobject of class", paste0("<", class(self$iso3166Code)[1], ">"), "\n")
      } else if (typeof(self$iso3166Code) == "list") {
        cat("\tiso3166Code:\tlist of length", length(self$iso3166Code), "\n")
      } else {
        cat("\tiso3166Code:\t", self$iso3166Code, "\n")
      }
      if (typeof(self$provinceState) == "environment") {
        cat("\tprovinceState:\tobject of class", paste0("<", class(self$provinceState)[1], ">"), "\n")
      } else if (typeof(self$provinceState) == "list") {
        cat("\tprovinceState:\tlist of length", length(self$provinceState), "\n")
      } else {
        cat("\tprovinceState:\t", self$provinceState, "\n")
      }
      if (typeof(self$island) == "environment") {
        cat("\tisland:\tobject of class", paste0("<", class(self$island)[1], ">"), "\n")
      } else if (typeof(self$island) == "list") {
        cat("\tisland:\tlist of length", length(self$island), "\n")
      } else {
        cat("\tisland:\t", self$island, "\n")
      }
      if (typeof(self$locality) == "environment") {
        cat("\tlocality:\tobject of class", paste0("<", class(self$locality)[1], ">"), "\n")
      } else if (typeof(self$locality) == "list") {
        cat("\tlocality:\tlist of length", length(self$locality), "\n")
      } else {
        cat("\tlocality:\t", self$locality, "\n")
      }
      if (typeof(self$city) == "environment") {
        cat("\tcity:\tobject of class", paste0("<", class(self$city)[1], ">"), "\n")
      } else if (typeof(self$city) == "list") {
        cat("\tcity:\tlist of length", length(self$city), "\n")
      } else {
        cat("\tcity:\t", self$city, "\n")
      }
      if (typeof(self$sublocality) == "environment") {
        cat("\tsublocality:\tobject of class", paste0("<", class(self$sublocality)[1], ">"), "\n")
      } else if (typeof(self$sublocality) == "list") {
        cat("\tsublocality:\tlist of length", length(self$sublocality), "\n")
      } else {
        cat("\tsublocality:\t", self$sublocality, "\n")
      }
      if (typeof(self$localityText) == "environment") {
        cat("\tlocalityText:\tobject of class", paste0("<", class(self$localityText)[1], ">"), "\n")
      } else if (typeof(self$localityText) == "list") {
        cat("\tlocalityText:\tlist of length", length(self$localityText), "\n")
      } else {
        cat("\tlocalityText:\t", self$localityText, "\n")
      }
      if (typeof(self$dateTimeBegin) == "environment") {
        cat("\tdateTimeBegin:\tobject of class", paste0("<", class(self$dateTimeBegin)[1], ">"), "\n")
      } else if (typeof(self$dateTimeBegin) == "list") {
        cat("\tdateTimeBegin:\tlist of length", length(self$dateTimeBegin), "\n")
      } else {
        cat("\tdateTimeBegin:\t", self$dateTimeBegin, "\n")
      }
      if (typeof(self$dateTimeEnd) == "environment") {
        cat("\tdateTimeEnd:\tobject of class", paste0("<", class(self$dateTimeEnd)[1], ">"), "\n")
      } else if (typeof(self$dateTimeEnd) == "list") {
        cat("\tdateTimeEnd:\tlist of length", length(self$dateTimeEnd), "\n")
      } else {
        cat("\tdateTimeEnd:\t", self$dateTimeEnd, "\n")
      }
      if (typeof(self$dateText) == "environment") {
        cat("\tdateText:\tobject of class", paste0("<", class(self$dateText)[1], ">"), "\n")
      } else if (typeof(self$dateText) == "list") {
        cat("\tdateText:\tlist of length", length(self$dateText), "\n")
      } else {
        cat("\tdateText:\t", self$dateText, "\n")
      }
      if (typeof(self$method) == "environment") {
        cat("\tmethod:\tobject of class", paste0("<", class(self$method)[1], ">"), "\n")
      } else if (typeof(self$method) == "list") {
        cat("\tmethod:\tlist of length", length(self$method), "\n")
      } else {
        cat("\tmethod:\t", self$method, "\n")
      }
      if (typeof(self$altitude) == "environment") {
        cat("\taltitude:\tobject of class", paste0("<", class(self$altitude)[1], ">"), "\n")
      } else if (typeof(self$altitude) == "list") {
        cat("\taltitude:\tlist of length", length(self$altitude), "\n")
      } else {
        cat("\taltitude:\t", self$altitude, "\n")
      }
      if (typeof(self$altitudeUnifOfMeasurement) == "environment") {
        cat("\taltitudeUnifOfMeasurement:\tobject of class", paste0("<", class(self$altitudeUnifOfMeasurement)[1], ">"), "\n")
      } else if (typeof(self$altitudeUnifOfMeasurement) == "list") {
        cat("\taltitudeUnifOfMeasurement:\tlist of length", length(self$altitudeUnifOfMeasurement), "\n")
      } else {
        cat("\taltitudeUnifOfMeasurement:\t", self$altitudeUnifOfMeasurement, "\n")
      }
      if (typeof(self$behavior) == "environment") {
        cat("\tbehavior:\tobject of class", paste0("<", class(self$behavior)[1], ">"), "\n")
      } else if (typeof(self$behavior) == "list") {
        cat("\tbehavior:\tlist of length", length(self$behavior), "\n")
      } else {
        cat("\tbehavior:\t", self$behavior, "\n")
      }
      if (typeof(self$biotopeText) == "environment") {
        cat("\tbiotopeText:\tobject of class", paste0("<", class(self$biotopeText)[1], ">"), "\n")
      } else if (typeof(self$biotopeText) == "list") {
        cat("\tbiotopeText:\tlist of length", length(self$biotopeText), "\n")
      } else {
        cat("\tbiotopeText:\t", self$biotopeText, "\n")
      }
      if (typeof(self$depth) == "environment") {
        cat("\tdepth:\tobject of class", paste0("<", class(self$depth)[1], ">"), "\n")
      } else if (typeof(self$depth) == "list") {
        cat("\tdepth:\tlist of length", length(self$depth), "\n")
      } else {
        cat("\tdepth:\t", self$depth, "\n")
      }
      if (typeof(self$depthUnitOfMeasurement) == "environment") {
        cat("\tdepthUnitOfMeasurement:\tobject of class", paste0("<", class(self$depthUnitOfMeasurement)[1], ">"), "\n")
      } else if (typeof(self$depthUnitOfMeasurement) == "list") {
        cat("\tdepthUnitOfMeasurement:\tlist of length", length(self$depthUnitOfMeasurement), "\n")
      } else {
        cat("\tdepthUnitOfMeasurement:\t", self$depthUnitOfMeasurement, "\n")
      }
      if (typeof(self$code) == "environment") {
        cat("\tcode:\tobject of class", paste0("<", class(self$code)[1], ">"), "\n")
      } else if (typeof(self$code) == "list") {
        cat("\tcode:\tlist of length", length(self$code), "\n")
      } else {
        cat("\tcode:\t", self$code, "\n")
      }
      if (typeof(self$establishmentMeans) == "environment") {
        cat("\testablishmentMeans:\tobject of class", paste0("<", class(self$establishmentMeans)[1], ">"), "\n")
      } else if (typeof(self$establishmentMeans) == "list") {
        cat("\testablishmentMeans:\tlist of length", length(self$establishmentMeans), "\n")
      } else {
        cat("\testablishmentMeans:\t", self$establishmentMeans, "\n")
      }
      if (typeof(self$gatheringPersons) == "environment") {
        cat("\tgatheringPersons:\tobject of class", paste0("<", class(self$gatheringPersons)[1], ">"), "\n")
      } else if (typeof(self$gatheringPersons) == "list") {
        cat("\tgatheringPersons:\tlist of length", length(self$gatheringPersons), "\n")
      } else {
        cat("\tgatheringPersons:\t", self$gatheringPersons, "\n")
      }
      if (typeof(self$gatheringOrganizations) == "environment") {
        cat("\tgatheringOrganizations:\tobject of class", paste0("<", class(self$gatheringOrganizations)[1], ">"), "\n")
      } else if (typeof(self$gatheringOrganizations) == "list") {
        cat("\tgatheringOrganizations:\tlist of length", length(self$gatheringOrganizations), "\n")
      } else {
        cat("\tgatheringOrganizations:\t", self$gatheringOrganizations, "\n")
      }
      if (typeof(self$siteCoordinates) == "environment") {
        cat("\tsiteCoordinates:\tobject of class", paste0("<", class(self$siteCoordinates)[1], ">"), "\n")
      } else if (typeof(self$siteCoordinates) == "list") {
        cat("\tsiteCoordinates:\tlist of length", length(self$siteCoordinates), "\n")
      } else {
        cat("\tsiteCoordinates:\t", self$siteCoordinates, "\n")
      }
      if (typeof(self$namedAreas) == "environment") {
        cat("\tnamedAreas:\tobject of class", paste0("<", class(self$namedAreas)[1], ">"), "\n")
      } else if (typeof(self$namedAreas) == "list") {
        cat("\tnamedAreas:\tlist of length", length(self$namedAreas), "\n")
      } else {
        cat("\tnamedAreas:\t", self$namedAreas, "\n")
      }
      if (typeof(self$associatedTaxa) == "environment") {
        cat("\tassociatedTaxa:\tobject of class", paste0("<", class(self$associatedTaxa)[1], ">"), "\n")
      } else if (typeof(self$associatedTaxa) == "list") {
        cat("\tassociatedTaxa:\tlist of length", length(self$associatedTaxa), "\n")
      } else {
        cat("\tassociatedTaxa:\t", self$associatedTaxa, "\n")
      }
      if (typeof(self$chronoStratigraphy) == "environment") {
        cat("\tchronoStratigraphy:\tobject of class", paste0("<", class(self$chronoStratigraphy)[1], ">"), "\n")
      } else if (typeof(self$chronoStratigraphy) == "list") {
        cat("\tchronoStratigraphy:\tlist of length", length(self$chronoStratigraphy), "\n")
      } else {
        cat("\tchronoStratigraphy:\t", self$chronoStratigraphy, "\n")
      }
      if (typeof(self$lithoStratigraphy) == "environment") {
        cat("\tlithoStratigraphy:\tobject of class", paste0("<", class(self$lithoStratigraphy)[1], ">"), "\n")
      } else if (typeof(self$lithoStratigraphy) == "list") {
        cat("\tlithoStratigraphy:\tlist of length", length(self$lithoStratigraphy), "\n")
      } else {
        cat("\tlithoStratigraphy:\t", self$lithoStratigraphy, "\n")
      }
      if (typeof(self$bioStratigraphic) == "environment") {
        cat("\tbioStratigraphic:\tobject of class", paste0("<", class(self$bioStratigraphic)[1], ">"), "\n")
      } else if (typeof(self$bioStratigraphic) == "list") {
        cat("\tbioStratigraphic:\tlist of length", length(self$bioStratigraphic), "\n")
      } else {
        cat("\tbioStratigraphic:\t", self$bioStratigraphic, "\n")
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
