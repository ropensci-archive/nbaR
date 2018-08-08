# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' NamedArea Class
#'
#' @field areaClass
#' @field areaName
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NamedArea <- R6::R6Class(
  "NamedArea",
  public = list(
    `areaClass` = NULL,
    `areaName` = NULL,
    initialize = function(
                              `areaClass`,
                              `areaName`) {
      if (!missing(`areaClass`)) {
        stopifnot(
          is.character(`areaClass`),
          length(`areaClass`) == 1
        )
        self[["areaClass"]] <- `areaClass`
      }
      if (!missing(`areaName`)) {
        stopifnot(
          is.character(`areaName`),
          length(`areaName`) == 1
        )
        self[["areaName"]] <- `areaName`
      }
    },

    toList = function() {
      NamedAreaList <- list()
      if (!is.null(self[["areaClass"]])) {
        NamedAreaList[["areaClass"]] <-
          self[["areaClass"]]
      }
      if (!is.null(self[["areaName"]])) {
        NamedAreaList[["areaName"]] <-
          self[["areaName"]]
      }
      ## omit empty nested lists in returned list
      NamedAreaList[vapply(NamedAreaList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },

    fromList = function(NamedAreaList, typeMapping = NULL) {
      if (is.null(typeMapping[["areaClass"]])) {
        self[["areaClass"]] <-
          NamedAreaList[["areaClass"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["areaClass"]], "$new()")
        ))
        self[["areaClass"]] <- obj$fromList(
          NamedAreaList[["areaClass"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["areaName"]])) {
        self[["areaName"]] <-
          NamedAreaList[["areaName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["areaName"]], "$new()")
        ))
        self[["areaName"]] <- obj$fromList(
          NamedAreaList[["areaName"]],
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

    fromJSONString = function(NamedAreaJson,
                                  typeMapping = NULL) {
      NamedAreaList <- jsonlite::fromJSON(
        NamedAreaJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["areaClass"]])) {
        self[["areaClass"]] <-
          NamedAreaList[["areaClass"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["areaClass"]], "$new()")
        ))
        self[["areaClass"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            NamedAreaList[["areaClass"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["areaName"]])) {
        self[["areaName"]] <-
          NamedAreaList[["areaName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["areaName"]], "$new()")
        ))
        self[["areaName"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            NamedAreaList[["areaName"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
