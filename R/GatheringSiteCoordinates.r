# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GatheringSiteCoordinates Class
#'
#' @field longitudeDecimal 
#' @field latitudeDecimal 
#' @field gridCellSystem 
#' @field gridLatitudeDecimal 
#' @field gridLongitudeDecimal 
#' @field gridCellCode 
#' @field gridQualifier 
#' @field geoShape 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GatheringSiteCoordinates <- R6::R6Class(
  'GatheringSiteCoordinates',
  public = list(
    `longitudeDecimal` = NULL,
    `latitudeDecimal` = NULL,
    `gridCellSystem` = NULL,
    `gridLatitudeDecimal` = NULL,
    `gridLongitudeDecimal` = NULL,
    `gridCellCode` = NULL,
    `gridQualifier` = NULL,
    `geoShape` = NULL,
    initialize = function(`longitudeDecimal`, `latitudeDecimal`, `gridCellSystem`, `gridLatitudeDecimal`, `gridLongitudeDecimal`, `gridCellCode`, `gridQualifier`, `geoShape`){
      if (!missing(`longitudeDecimal`)) {
        stopifnot(is.numeric(`longitudeDecimal`), length(`longitudeDecimal`) == 1)
        self[["longitudeDecimal"]] <- `longitudeDecimal`
      }
      if (!missing(`latitudeDecimal`)) {
        stopifnot(is.numeric(`latitudeDecimal`), length(`latitudeDecimal`) == 1)
        self[["latitudeDecimal"]] <- `latitudeDecimal`
      }
      if (!missing(`gridCellSystem`)) {
        stopifnot(is.character(`gridCellSystem`), length(`gridCellSystem`) == 1)
        self[["gridCellSystem"]] <- `gridCellSystem`
      }
      if (!missing(`gridLatitudeDecimal`)) {
        stopifnot(is.numeric(`gridLatitudeDecimal`), length(`gridLatitudeDecimal`) == 1)
        self[["gridLatitudeDecimal"]] <- `gridLatitudeDecimal`
      }
      if (!missing(`gridLongitudeDecimal`)) {
        stopifnot(is.numeric(`gridLongitudeDecimal`), length(`gridLongitudeDecimal`) == 1)
        self[["gridLongitudeDecimal"]] <- `gridLongitudeDecimal`
      }
      if (!missing(`gridCellCode`)) {
        stopifnot(is.character(`gridCellCode`), length(`gridCellCode`) == 1)
        self[["gridCellCode"]] <- `gridCellCode`
      }
      if (!missing(`gridQualifier`)) {
        stopifnot(is.character(`gridQualifier`), length(`gridQualifier`) == 1)
        self[["gridQualifier"]] <- `gridQualifier`
      }
      if (!missing(`geoShape`)) {
        stopifnot(R6::is.R6(`geoShape`))
        self[["geoShape"]] <- `geoShape`
      }
    },

    toList = function() {
      GatheringSiteCoordinatesList <- list()
        if (!is.null(self[["longitudeDecimal"]])) {
        GatheringSiteCoordinatesList[["longitudeDecimal"]] <- self[["longitudeDecimal"]]
      }
        if (!is.null(self[["latitudeDecimal"]])) {
        GatheringSiteCoordinatesList[["latitudeDecimal"]] <- self[["latitudeDecimal"]]
      }
        if (!is.null(self[["gridCellSystem"]])) {
        GatheringSiteCoordinatesList[["gridCellSystem"]] <- self[["gridCellSystem"]]
      }
        if (!is.null(self[["gridLatitudeDecimal"]])) {
        GatheringSiteCoordinatesList[["gridLatitudeDecimal"]] <- self[["gridLatitudeDecimal"]]
      }
        if (!is.null(self[["gridLongitudeDecimal"]])) {
        GatheringSiteCoordinatesList[["gridLongitudeDecimal"]] <- self[["gridLongitudeDecimal"]]
      }
        if (!is.null(self[["gridCellCode"]])) {
        GatheringSiteCoordinatesList[["gridCellCode"]] <- self[["gridCellCode"]]
      }
        if (!is.null(self[["gridQualifier"]])) {
        GatheringSiteCoordinatesList[["gridQualifier"]] <- self[["gridQualifier"]]
      }
        if (!is.null(self[["geoShape"]])) {
        GatheringSiteCoordinatesList[["geoShape"]] <- self[["geoShape"]]$toList()
      }
      ## omit empty nested lists in returned list
      GatheringSiteCoordinatesList[sapply(GatheringSiteCoordinatesList, length) > 0]
      },

    fromList = function(GatheringSiteCoordinatesList, typeMapping=NULL) {
      if (is.null(typeMapping[["longitudeDecimal"]])) {
          self[["longitudeDecimal"]] <- GatheringSiteCoordinatesList[["longitudeDecimal"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["longitudeDecimal"]], "$new()")))
          self[["longitudeDecimal"]] <- obj$fromList(GatheringSiteCoordinatesList[["longitudeDecimal"]], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["latitudeDecimal"]])) {
          self[["latitudeDecimal"]] <- GatheringSiteCoordinatesList[["latitudeDecimal"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["latitudeDecimal"]], "$new()")))
          self[["latitudeDecimal"]] <- obj$fromList(GatheringSiteCoordinatesList[["latitudeDecimal"]], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridCellSystem"]])) {
          self[["gridCellSystem"]] <- GatheringSiteCoordinatesList[["gridCellSystem"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridCellSystem"]], "$new()")))
          self[["gridCellSystem"]] <- obj$fromList(GatheringSiteCoordinatesList[["gridCellSystem"]], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridLatitudeDecimal"]])) {
          self[["gridLatitudeDecimal"]] <- GatheringSiteCoordinatesList[["gridLatitudeDecimal"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridLatitudeDecimal"]], "$new()")))
          self[["gridLatitudeDecimal"]] <- obj$fromList(GatheringSiteCoordinatesList[["gridLatitudeDecimal"]], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridLongitudeDecimal"]])) {
          self[["gridLongitudeDecimal"]] <- GatheringSiteCoordinatesList[["gridLongitudeDecimal"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridLongitudeDecimal"]], "$new()")))
          self[["gridLongitudeDecimal"]] <- obj$fromList(GatheringSiteCoordinatesList[["gridLongitudeDecimal"]], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridCellCode"]])) {
          self[["gridCellCode"]] <- GatheringSiteCoordinatesList[["gridCellCode"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridCellCode"]], "$new()")))
          self[["gridCellCode"]] <- obj$fromList(GatheringSiteCoordinatesList[["gridCellCode"]], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridQualifier"]])) {
          self[["gridQualifier"]] <- GatheringSiteCoordinatesList[["gridQualifier"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridQualifier"]], "$new()")))
          self[["gridQualifier"]] <- obj$fromList(GatheringSiteCoordinatesList[["gridQualifier"]], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["geoShape"]])) {
          self[["geoShape"]] <- Point$new()$fromList(GatheringSiteCoordinatesList[["geoShape"]], typeMapping=typeMapping) 
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["geoShape"]], "$new()")))
          self[["geoShape"]] <- obj$fromList(GatheringSiteCoordinatesList[["geoShape"]], typeMapping=typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(GatheringSiteCoordinatesJson, typeMapping=NULL) {
      GatheringSiteCoordinatesList <- jsonlite::fromJSON(GatheringSiteCoordinatesJson, simplifyVector=F)
      if (is.null(typeMapping[["longitudeDecimal"]])) {
          self[["longitudeDecimal"]] <- GatheringSiteCoordinatesList[["longitudeDecimal"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["longitudeDecimal"]], "$new()")))
          self[["longitudeDecimal"]] <- obj$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["longitudeDecimal"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["latitudeDecimal"]])) {
          self[["latitudeDecimal"]] <- GatheringSiteCoordinatesList[["latitudeDecimal"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["latitudeDecimal"]], "$new()")))
          self[["latitudeDecimal"]] <- obj$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["latitudeDecimal"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridCellSystem"]])) {
          self[["gridCellSystem"]] <- GatheringSiteCoordinatesList[["gridCellSystem"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridCellSystem"]], "$new()")))
          self[["gridCellSystem"]] <- obj$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["gridCellSystem"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridLatitudeDecimal"]])) {
          self[["gridLatitudeDecimal"]] <- GatheringSiteCoordinatesList[["gridLatitudeDecimal"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridLatitudeDecimal"]], "$new()")))
          self[["gridLatitudeDecimal"]] <- obj$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["gridLatitudeDecimal"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridLongitudeDecimal"]])) {
          self[["gridLongitudeDecimal"]] <- GatheringSiteCoordinatesList[["gridLongitudeDecimal"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridLongitudeDecimal"]], "$new()")))
          self[["gridLongitudeDecimal"]] <- obj$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["gridLongitudeDecimal"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridCellCode"]])) {
          self[["gridCellCode"]] <- GatheringSiteCoordinatesList[["gridCellCode"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridCellCode"]], "$new()")))
          self[["gridCellCode"]] <- obj$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["gridCellCode"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["gridQualifier"]])) {
          self[["gridQualifier"]] <- GatheringSiteCoordinatesList[["gridQualifier"]]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["gridQualifier"]], "$new()")))
          self[["gridQualifier"]] <- obj$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["gridQualifier"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["geoShape"]])) {
          self[["geoShape"]] <- Point$new()$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["geoShape"]], auto_unbox = TRUE), typeMapping=typeMapping) 
      } else {
          obj <- eval(parse(text=paste0(typeMapping[["geoShape"]], "$new()")))
          self[["geoShape"]] <- obj$fromJSONString(jsonlite::toJSON(GatheringSiteCoordinatesList[["geoShape"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      invisible(self)
    }
  )
)
