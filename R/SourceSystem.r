# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SourceSystem Class
#'
#' @field code
#' @field name
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SourceSystem <- R6::R6Class(
  "SourceSystem",
  public = list(
    `code` = NULL,
    `name` = NULL,
    initialize = function(
                              `code`,
                              `name`) {
      if (!missing(`code`)) {
        stopifnot(
          is.character(`code`),
          length(`code`) == 1
        )
        self[["code"]] <- `code`
      }
      if (!missing(`name`)) {
        stopifnot(
          is.character(`name`),
          length(`name`) == 1
        )
        self[["name"]] <- `name`
      }
    },

    toList = function() {
      SourceSystemList <- list()
      if (!is.null(self[["code"]])) {
        SourceSystemList[["code"]] <-
          self[["code"]]
      }
      if (!is.null(self[["name"]])) {
        SourceSystemList[["name"]] <-
          self[["name"]]
      }
      ## omit empty nested lists in returned list
      SourceSystemList[vapply(SourceSystemList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },

    fromList = function(SourceSystemList, typeMapping = NULL) {
      if (is.null(typeMapping[["code"]])) {
        self[["code"]] <-
          SourceSystemList[["code"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["code"]], "$new()")
        ))
        self[["code"]] <- obj$fromList(
          SourceSystemList[["code"]],
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["name"]])) {
        self[["name"]] <-
          SourceSystemList[["name"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["name"]], "$new()")
        ))
        self[["name"]] <- obj$fromList(
          SourceSystemList[["name"]],
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

    fromJSONString = function(SourceSystemJson,
                                  typeMapping = NULL) {
      SourceSystemList <- jsonlite::fromJSON(
        SourceSystemJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["code"]])) {
        self[["code"]] <-
          SourceSystemList[["code"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["code"]], "$new()")
        ))
        self[["code"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SourceSystemList[["code"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["name"]])) {
        self[["name"]] <-
          SourceSystemList[["name"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["name"]], "$new()")
        ))
        self[["name"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SourceSystemList[["name"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
