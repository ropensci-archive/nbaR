# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Crs Class
#'
#' @field type
#' @field properties
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Crs <- R6::R6Class(
  "Crs",
  public = list(
    `type` = NULL,
    `properties` = NULL,
    initialize = function(
                              `type`,
                              `properties`) {
      if (!missing(`type`)) {
        stopifnot(
          is.character(`type`),
          length(`type`) == 1
        )
        self[["type"]] <- `type`
      }
      if (!missing(`properties`)) {
        self[["properties"]] <- `properties`
      }
    },

    toList = function() {
      CrsList <- list()
      if (!is.null(self[["type"]])) {
        CrsList[["type"]] <-
          self[["type"]]
      }
      if (!is.null(self[["properties"]])) {
        CrsList[["properties"]] <-
          self[["properties"]]
      }
      ## omit empty nested lists in returned list
      CrsList[vapply(CrsList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },

    fromList = function(CrsList, typeMapping = NULL) {
      if (is.null(typeMapping[["type"]])) {
        self[["type"]] <-
          CrsList[["type"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["type"]], "$new()")
        ))
        self[["type"]] <- obj$fromList(
          CrsList[["type"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["properties"]])) {
        self[["properties"]] <-
          CrsList[["properties"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["properties"]], "$new()")
        ))
        self[["properties"]] <- obj$fromList(
          CrsList[["properties"]],
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

    fromJSONString = function(CrsJson,
                                  typeMapping = NULL) {
      CrsList <- jsonlite::fromJSON(
        CrsJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["type"]])) {
        self[["type"]] <-
          CrsList[["type"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["type"]], "$new()")
        ))
        self[["type"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            CrsList[["type"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["properties"]])) {
        self[["properties"]] <-
          CrsList[["properties"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["properties"]], "$new()")
        ))
        self[["properties"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            CrsList[["properties"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
