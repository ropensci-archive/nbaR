# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GatheringEvent Class
#'
#' @field projectTitle
#' @field worldRegion
#' @field continent
#' @field country
#' @field iso3166Code
#' @field provinceState
#' @field island
#' @field locality
#' @field city
#' @field sublocality
#' @field localityText
#' @field dateTimeBegin
#' @field dateTimeEnd
#' @field method
#' @field altitude
#' @field altitudeUnifOfMeasurement
#' @field biotopeText
#' @field depth
#' @field depthUnitOfMeasurement
#' @field gatheringPersons
#' @field gatheringOrganizations
#' @field siteCoordinates
#' @field namedAreas
#' @field associatedTaxa
#' @field chronoStratigraphy
#' @field lithoStratigraphy
#' @field bioStratigraphic
#'
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
    `method` = NULL,
    `altitude` = NULL,
    `altitudeUnifOfMeasurement` = NULL,
    `biotopeText` = NULL,
    `depth` = NULL,
    `depthUnitOfMeasurement` = NULL,
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
                              `method`,
                              `altitude`,
                              `altitudeUnifOfMeasurement`,
                              `biotopeText`,
                              `depth`,
                              `depthUnitOfMeasurement`,
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
      if (!missing(`gatheringPersons`)) {
        stopifnot(
          is.list(`gatheringPersons`),
          length(`gatheringPersons`) != 0
        )
        lapply(`gatheringPersons`, function(x) stopifnot(R6::is.R6(x)))
        self[["gatheringPersons"]] <- `gatheringPersons`
      }
      if (!missing(`gatheringOrganizations`)) {
        stopifnot(
          is.list(`gatheringOrganizations`),
          length(`gatheringOrganizations`) != 0
        )
        lapply(`gatheringOrganizations`, function(x) stopifnot(R6::is.R6(x)))
        self[["gatheringOrganizations"]] <- `gatheringOrganizations`
      }
      if (!missing(`siteCoordinates`)) {
        stopifnot(
          is.list(`siteCoordinates`),
          length(`siteCoordinates`) != 0
        )
        lapply(`siteCoordinates`, function(x) stopifnot(R6::is.R6(x)))
        self[["siteCoordinates"]] <- `siteCoordinates`
      }
      if (!missing(`namedAreas`)) {
        stopifnot(
          is.list(`namedAreas`),
          length(`namedAreas`) != 0
        )
        lapply(`namedAreas`, function(x) stopifnot(R6::is.R6(x)))
        self[["namedAreas"]] <- `namedAreas`
      }
      if (!missing(`associatedTaxa`)) {
        stopifnot(
          is.list(`associatedTaxa`),
          length(`associatedTaxa`) != 0
        )
        lapply(`associatedTaxa`, function(x) stopifnot(R6::is.R6(x)))
        self[["associatedTaxa"]] <- `associatedTaxa`
      }
      if (!missing(`chronoStratigraphy`)) {
        stopifnot(
          is.list(`chronoStratigraphy`),
          length(`chronoStratigraphy`) != 0
        )
        lapply(`chronoStratigraphy`, function(x) stopifnot(R6::is.R6(x)))
        self[["chronoStratigraphy"]] <- `chronoStratigraphy`
      }
      if (!missing(`lithoStratigraphy`)) {
        stopifnot(
          is.list(`lithoStratigraphy`),
          length(`lithoStratigraphy`) != 0
        )
        lapply(`lithoStratigraphy`, function(x) stopifnot(R6::is.R6(x)))
        self[["lithoStratigraphy"]] <- `lithoStratigraphy`
      }
      if (!missing(`bioStratigraphic`)) {
        stopifnot(
          is.list(`bioStratigraphic`),
          length(`bioStratigraphic`) != 0
        )
        lapply(`bioStratigraphic`, function(x) stopifnot(R6::is.R6(x)))
        self[["bioStratigraphic"]] <- `bioStratigraphic`
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
      GatheringEventList[vapply(GatheringEventList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },

    fromList = function(GatheringEventList, typeMapping = NULL) {
      if (is.null(typeMapping[["projectTitle"]])) {
        self[["projectTitle"]] <-
          GatheringEventList[["projectTitle"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["projectTitle"]], "$new()")
        ))
        self[["projectTitle"]] <- obj$fromList(
          GatheringEventList[["projectTitle"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["worldRegion"]])) {
        self[["worldRegion"]] <-
          GatheringEventList[["worldRegion"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["worldRegion"]], "$new()")
        ))
        self[["worldRegion"]] <- obj$fromList(
          GatheringEventList[["worldRegion"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["continent"]])) {
        self[["continent"]] <-
          GatheringEventList[["continent"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["continent"]], "$new()")
        ))
        self[["continent"]] <- obj$fromList(
          GatheringEventList[["continent"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["country"]])) {
        self[["country"]] <-
          GatheringEventList[["country"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["country"]], "$new()")
        ))
        self[["country"]] <- obj$fromList(
          GatheringEventList[["country"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["iso3166Code"]])) {
        self[["iso3166Code"]] <-
          GatheringEventList[["iso3166Code"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["iso3166Code"]], "$new()")
        ))
        self[["iso3166Code"]] <- obj$fromList(
          GatheringEventList[["iso3166Code"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["provinceState"]])) {
        self[["provinceState"]] <-
          GatheringEventList[["provinceState"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["provinceState"]], "$new()")
        ))
        self[["provinceState"]] <- obj$fromList(
          GatheringEventList[["provinceState"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["island"]])) {
        self[["island"]] <-
          GatheringEventList[["island"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["island"]], "$new()")
        ))
        self[["island"]] <- obj$fromList(
          GatheringEventList[["island"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["locality"]])) {
        self[["locality"]] <-
          GatheringEventList[["locality"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["locality"]], "$new()")
        ))
        self[["locality"]] <- obj$fromList(
          GatheringEventList[["locality"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["city"]])) {
        self[["city"]] <-
          GatheringEventList[["city"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["city"]], "$new()")
        ))
        self[["city"]] <- obj$fromList(
          GatheringEventList[["city"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["sublocality"]])) {
        self[["sublocality"]] <-
          GatheringEventList[["sublocality"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["sublocality"]], "$new()")
        ))
        self[["sublocality"]] <- obj$fromList(
          GatheringEventList[["sublocality"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["localityText"]])) {
        self[["localityText"]] <-
          GatheringEventList[["localityText"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["localityText"]], "$new()")
        ))
        self[["localityText"]] <- obj$fromList(
          GatheringEventList[["localityText"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["dateTimeBegin"]])) {
        self[["dateTimeBegin"]] <-
          GatheringEventList[["dateTimeBegin"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["dateTimeBegin"]], "$new()")
        ))
        self[["dateTimeBegin"]] <- obj$fromList(
          GatheringEventList[["dateTimeBegin"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["dateTimeEnd"]])) {
        self[["dateTimeEnd"]] <-
          GatheringEventList[["dateTimeEnd"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["dateTimeEnd"]], "$new()")
        ))
        self[["dateTimeEnd"]] <- obj$fromList(
          GatheringEventList[["dateTimeEnd"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["method"]])) {
        self[["method"]] <-
          GatheringEventList[["method"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["method"]], "$new()")
        ))
        self[["method"]] <- obj$fromList(
          GatheringEventList[["method"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["altitude"]])) {
        self[["altitude"]] <-
          GatheringEventList[["altitude"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["altitude"]], "$new()")
        ))
        self[["altitude"]] <- obj$fromList(
          GatheringEventList[["altitude"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["altitudeUnifOfMeasurement"]])) {
        self[["altitudeUnifOfMeasurement"]] <-
          GatheringEventList[["altitudeUnifOfMeasurement"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["altitudeUnifOfMeasurement"]], "$new()")
        ))
        self[["altitudeUnifOfMeasurement"]] <- obj$fromList(
          GatheringEventList[["altitudeUnifOfMeasurement"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["biotopeText"]])) {
        self[["biotopeText"]] <-
          GatheringEventList[["biotopeText"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["biotopeText"]], "$new()")
        ))
        self[["biotopeText"]] <- obj$fromList(
          GatheringEventList[["biotopeText"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["depth"]])) {
        self[["depth"]] <-
          GatheringEventList[["depth"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["depth"]], "$new()")
        ))
        self[["depth"]] <- obj$fromList(
          GatheringEventList[["depth"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["depthUnitOfMeasurement"]])) {
        self[["depthUnitOfMeasurement"]] <-
          GatheringEventList[["depthUnitOfMeasurement"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["depthUnitOfMeasurement"]], "$new()")
        ))
        self[["depthUnitOfMeasurement"]] <- obj$fromList(
          GatheringEventList[["depthUnitOfMeasurement"]],
          typeMapping = typeMapping
        )
      }
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
      if (is.null(typeMapping[["projectTitle"]])) {
        self[["projectTitle"]] <-
          GatheringEventList[["projectTitle"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["projectTitle"]], "$new()")
        ))
        self[["projectTitle"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["projectTitle"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["worldRegion"]])) {
        self[["worldRegion"]] <-
          GatheringEventList[["worldRegion"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["worldRegion"]], "$new()")
        ))
        self[["worldRegion"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["worldRegion"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["continent"]])) {
        self[["continent"]] <-
          GatheringEventList[["continent"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["continent"]], "$new()")
        ))
        self[["continent"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["continent"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["country"]])) {
        self[["country"]] <-
          GatheringEventList[["country"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["country"]], "$new()")
        ))
        self[["country"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["country"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["iso3166Code"]])) {
        self[["iso3166Code"]] <-
          GatheringEventList[["iso3166Code"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["iso3166Code"]], "$new()")
        ))
        self[["iso3166Code"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["iso3166Code"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["provinceState"]])) {
        self[["provinceState"]] <-
          GatheringEventList[["provinceState"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["provinceState"]], "$new()")
        ))
        self[["provinceState"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["provinceState"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["island"]])) {
        self[["island"]] <-
          GatheringEventList[["island"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["island"]], "$new()")
        ))
        self[["island"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["island"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["locality"]])) {
        self[["locality"]] <-
          GatheringEventList[["locality"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["locality"]], "$new()")
        ))
        self[["locality"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["locality"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["city"]])) {
        self[["city"]] <-
          GatheringEventList[["city"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["city"]], "$new()")
        ))
        self[["city"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["city"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["sublocality"]])) {
        self[["sublocality"]] <-
          GatheringEventList[["sublocality"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["sublocality"]], "$new()")
        ))
        self[["sublocality"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["sublocality"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["localityText"]])) {
        self[["localityText"]] <-
          GatheringEventList[["localityText"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["localityText"]], "$new()")
        ))
        self[["localityText"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["localityText"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["dateTimeBegin"]])) {
        self[["dateTimeBegin"]] <-
          GatheringEventList[["dateTimeBegin"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["dateTimeBegin"]], "$new()")
        ))
        self[["dateTimeBegin"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["dateTimeBegin"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["dateTimeEnd"]])) {
        self[["dateTimeEnd"]] <-
          GatheringEventList[["dateTimeEnd"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["dateTimeEnd"]], "$new()")
        ))
        self[["dateTimeEnd"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["dateTimeEnd"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["method"]])) {
        self[["method"]] <-
          GatheringEventList[["method"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["method"]], "$new()")
        ))
        self[["method"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["method"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["altitude"]])) {
        self[["altitude"]] <-
          GatheringEventList[["altitude"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["altitude"]], "$new()")
        ))
        self[["altitude"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["altitude"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["altitudeUnifOfMeasurement"]])) {
        self[["altitudeUnifOfMeasurement"]] <-
          GatheringEventList[["altitudeUnifOfMeasurement"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["altitudeUnifOfMeasurement"]], "$new()")
        ))
        self[["altitudeUnifOfMeasurement"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["altitudeUnifOfMeasurement"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["biotopeText"]])) {
        self[["biotopeText"]] <-
          GatheringEventList[["biotopeText"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["biotopeText"]], "$new()")
        ))
        self[["biotopeText"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["biotopeText"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["depth"]])) {
        self[["depth"]] <-
          GatheringEventList[["depth"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["depth"]], "$new()")
        ))
        self[["depth"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["depth"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["depthUnitOfMeasurement"]])) {
        self[["depthUnitOfMeasurement"]] <-
          GatheringEventList[["depthUnitOfMeasurement"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["depthUnitOfMeasurement"]], "$new()")
        ))
        self[["depthUnitOfMeasurement"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            GatheringEventList[["depthUnitOfMeasurement"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      self[["gatheringPersons"]] <- lapply(
        GatheringEventList[["gatheringPersons"]],
        function(x) {
          Person$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["gatheringOrganizations"]] <- lapply(
        GatheringEventList[["gatheringOrganizations"]],
        function(x) {
          Organization$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["siteCoordinates"]] <- lapply(
        GatheringEventList[["siteCoordinates"]],
        function(x) {
          GatheringSiteCoordinates$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["namedAreas"]] <- lapply(
        GatheringEventList[["namedAreas"]],
        function(x) {
          NamedArea$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["associatedTaxa"]] <- lapply(
        GatheringEventList[["associatedTaxa"]],
        function(x) {
          AssociatedTaxon$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["chronoStratigraphy"]] <- lapply(
        GatheringEventList[["chronoStratigraphy"]],
        function(x) {
          ChronoStratigraphy$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["lithoStratigraphy"]] <- lapply(
        GatheringEventList[["lithoStratigraphy"]],
        function(x) {
          LithoStratigraphy$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["bioStratigraphic"]] <- lapply(
        GatheringEventList[["bioStratigraphic"]],
        function(x) {
          BioStratigraphy$new()$fromJSONString(
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
