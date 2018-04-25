# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Specimen operations
#' @description nbaR.Specimen
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' query Query for specimens
#'
#' }
#'
#' @export
SpecimenClient <- R6::R6Class(
    'SpecimenClient',
    inherit=ApiClient,
    public = list(
        userAgent = "Swagger-Codegen/0.0.0/r",
        initialize = function(basePath){
        super$initialize(basePath)
    },
        
      # '@name query
      # '@title Query for specimens
      # '@description Search for specimens (GET) using query parameters or a querySpec JSON
      # '@return \code{ QueryResult }
      # '@param querySpec: \code{ QuerySpec }; Object of type QuerySpec or its JSON representation
      # '@param queryParams; \code{ list }; Additional query parameters
    query = function(querySpec=NULL, queryParams=list(), ...){
        args <- list(...)
        headerParams <- character()

        if (!is.null(querySpec) & length(queryParams) > 0) {
            stop("QuerySpec object cannot be combined with other query parameters")
        }
        
        if (! is.null(querySpec)) {
            queryParams <- list()
            if (class(querySpec)[2] != "R6" | is.na(class(querySpec)[2])) {
                queryParams['_querySpec'] <- querySpec
            } else {
                queryParams['_querySpec'] <- querySpec$toJSONString()
            }
        }

        urlPath <- "/specimen/query"
        resp <- self$callApi(url = paste0(self$basePath, urlPath),
                             method = "GET",
                             queryParams = queryParams,
                             headerParams = headerParams,
                             ## body = body,
                             ...)

        returnObject <- QueryResult$new()
        self$processResponse(resp, returnObject)        
    },

      # '@name find
      # '@title Find a specimen by id
      # '@description If found, returns a single specimen
      # '@return \code{ Specimen }
      # '@param ...; additional parameters passed to httr::GET or httr::POST
      find = function(id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/find/{id}"
      if (!missing(`id`)) {
        urlPath <- gsub(paste0("\\{", "id", "\\}"), `id`, urlPath)
      }

      resp <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)      

      returnObject <- Specimen$new()
      self$processResponse(resp, returnObject)
    },
      # '@name find_by_ids
      # '@title Find specimens by ids
      # '@description Given multiple ids, returns a list of specimen
      # '@return \code{ Specimen }
      # '@param ...; additional parameters passed to httr::GET or httr::POST
      find_by_ids = function(ids, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/findByIds/{ids}"
      if (!missing(`ids`)) {
        urlPath <- gsub(paste0("\\{", "ids", "\\}"), `ids`, urlPath)
      }

      resp <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)      

      returnObject <- Specimen$new()
      self$processResponse(resp, returnObject)
    },
      # '@name find_by_unit_id
      # '@title Find a specimen by unitID
      # '@description Get a specimen by its unitID. Returns a list of specimens since unitIDs are not strictly unique
      # '@return \code{ Specimen }
      # '@param ...; additional parameters passed to httr::GET or httr::POST
      find_by_unit_id = function(unit_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/findByUnitID/{unitID}"
      if (!missing(`unit_id`)) {
        urlPath <- gsub(paste0("\\{", "unitID", "\\}"), `unit_id`, urlPath)
      }

      resp <- self$callApi(url = paste0(self$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)      

      returnObject <- Specimen$new()
      self$processResponse(resp, returnObject)
    }

  )
)

