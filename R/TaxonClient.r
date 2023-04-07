# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Taxon operations
#' @description This client connects to all Taxon-related endpoints
#' of the NBA. Each endpoint is available as a class method
#' (see section 'Methods' below). Optionally, a custom URL
#' pointing to a NBA server and a user Agent can be specified
#' by the user (see section 'Fields' below).
#'
#' @docType class
#'
#' @format R6 class
#'
#' @field basePath Stores url path of the request, defaults to http://api.biodiversitydata.nl/v2
#' @field userAgent Set the user agent of the request, defaults to nbaR/0.1.0
#'
#' @importFrom R6 R6Class
#'
#' @usage
#' # client <- TaxonClient$new()
#'
#' @section Methods:
#' \describe{
#' \item{\code{ count }}{
#'
#'   Get the number of taxa matching a given condition;
#'   Conditions given as query parameters or a querySpec JSON.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ source_system_code } : Example query param
#'
#'         \item \code{ queryParams } : named list or vector with query parameters
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ integer }
#' }
#' \item{\code{ count_distinct_values }}{
#'
#'   Count the distinct number of values that exist for a given field;
#'   .
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ field } : name of field in the taxon object
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ count_distinct_values_per_group }}{
#'
#'   Count the distinct number of field values that exist per the given field to group by;
#'   .
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ group } : name of field in the taxon object you want to group by \item \code{ field } : name of field in the taxon object
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ download_query }}{
#'
#'   Dynamic download service: Query for taxa and return result as a stream ...;
#'   Query with query parameters or querySpec JSON. ....
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ source_system_code } : Example query param
#'
#'         \item \code{ queryParams } : named list or vector with query parameters
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{  }
#' }
#' \item{\code{ dwca_get_data_set }}{
#'
#'   Download dataset as Darwin Core Archive File;
#'   Available datasets can be queried with /taxon/dwca/getDataSetNames. Response saved to &lt;datasetname&gt;-&lt;yyyymmdd&gt;.dwca.zip.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ dataset } : name of dataset
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{  }
#' }
#' \item{\code{ dwca_get_data_set_names }}{
#'
#'   Retrieve the names of all available datasets;
#'   Individual datasets can then be downloaded with /dwca/getDataSet/{dataset}.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ dwca_query }}{
#'
#'   Dynamic download service: Query for taxa and return result as Darwin Core Archive File;
#'   Query with query parameters or querySpec JSON. Response saved to nba-taxa.dwca.zip.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ source_system_code } : Example query param
#'
#'         \item \code{ queryParams } : named list or vector with query parameters
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{  }
#' }
#' \item{\code{ find }}{
#'
#'   Find a taxon by id;
#'   If found, returns a single taxon.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ id } : id of taxon
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Taxon }
#' }
#' \item{\code{ find_by_ids }}{
#'
#'   Find taxa by ids;
#'   Given multiple ids, returns a list of taxa.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ids } : ids of multiple taxa, separated by comma
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Taxon }
#' }
#' \item{\code{ get_distinct_values }}{
#'
#'   Get all different values that can be found for one field;
#'   A list of all fields for taxon documents can be retrieved with /metadata/getFieldInfo.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ field } : name of field in a taxon object
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_distinct_values_per_group }}{
#'
#'   Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by;
#'   .
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ group } : name of field in the taxon object you want to group by \item \code{ field } : name of field in the taxon object
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_field_info }}{
#'
#'   Returns extended information for each field of a specimen document;
#'   Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_paths }}{
#'
#'   Returns the full path of all fields within a document;
#'   See also metadata/getFieldInfo for all allowed operators per field.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_settings }}{
#'
#'   List all publicly available configuration settings for the NBA;
#'   The value of a specific setting can be queried with metadata/getSetting/{name}.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_settings }}{
#'
#'   Get the value of an NBA setting;
#'   All settings can be queried with /metadata/getSettings.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ name } : name of setting
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ group_by_scientific_name }}{
#'
#'   Aggregates Taxon and Specimen documents according to their scientific names;
#'   Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ default_classification_family } : Example query param
#'
#'         \item \code{ queryParams } : named list or vector with query parameters
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ QueryResult }
#' }
#' \item{\code{ is_operator_allowed }}{
#'
#'   Checks if a given operator is allowed for a given field;
#'   See also metadata/getFieldInfo.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ field } : specimen document field \item \code{ operator } : operator
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ query }}{
#'
#'   Query for taxa;
#'   Search for taxa (GET) using query parameters or a querySpec JSON.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ default_classification_genus } : Example query param
#'
#'         \item \code{ queryParams } : named list or vector with query parameters
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ QueryResult }
#' }
#' }
#'
#' @export
TaxonClient <- R6::R6Class(
  "TaxonClient",
  inherit = ApiClient,
  public = list(
    initialize = function(basePath, userAgent) {
      super$initialize(basePath, userAgent)
    },
    count = function(sourceSystem.code = NULL,
                     queryParams = list(),
                     ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`sourceSystem.code`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`sourceSystem.code`) == "environment",
          `sourceSystem.code`$toJSONString(),
          `sourceSystem.code`
        )
        queryParams["sourceSystem.code"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- sub(
        "\\.querySpec",
        paste0("_", "querySpec"), # tweak to not transform .querySpec
        names(queryParams)
      )

      urlPath <- "/taxon/count"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.integer(httr::content(response))
        Response$new(result, response)
      }
    },
    count_distinct_values = function(field = NULL,
                                     ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/countDistinctValues/{field}"

      if (!missing(`field`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    count_distinct_values_per_group = function(group = NULL,
                                               field = NULL,
                                               ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/countDistinctValuesPerGroup/{group}/{field}"

      if (!missing(`group`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "group", "\\}"), `group`, urlPath)
      }


      if (!missing(`field`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    download_query = function(sourceSystem.code = NULL,
                              queryParams = list(),
                              ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`sourceSystem.code`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`sourceSystem.code`) == "environment",
          `sourceSystem.code`$toJSONString(),
          `sourceSystem.code`
        )
        queryParams["sourceSystem.code"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- sub(
        "\\.querySpec",
        paste0("_", "querySpec"), # tweak to not transform .querySpec
        names(queryParams)
      )

      urlPath <- "/taxon/download"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## empty response, e.g. when file is downloaded
        result <- NULL
        Response$new(result, response)
      }
    },
    dwca_get_data_set = function(dataset = NULL,
                                 ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/dwca/getDataSet/{dataset}"

      if (!missing(`dataset`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "dataset", "\\}"), `dataset`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## empty response, e.g. when file is downloaded
        result <- NULL
        Response$new(result, response)
      }
    },
    dwca_get_data_set_names = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/dwca/getDataSetNames"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    dwca_query = function(sourceSystem.code = NULL,
                          queryParams = list(),
                          ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`sourceSystem.code`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`sourceSystem.code`) == "environment",
          `sourceSystem.code`$toJSONString(),
          `sourceSystem.code`
        )
        queryParams["sourceSystem.code"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- sub(
        "\\.querySpec",
        paste0("_", "querySpec"), # tweak to not transform .querySpec
        names(queryParams)
      )

      urlPath <- "/taxon/dwca/query"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## empty response, e.g. when file is downloaded
        result <- NULL
        Response$new(result, response)
      }
    },
    find = function(id = NULL,
                    ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/find/{id}"

      if (!missing(`id`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "id", "\\}"), `id`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- Taxon$new()
        ## if API call result is QueryResult,
        ## list items must be mapped to model class
        result <- returnObject$fromList(
          httr::content(response),
          typeMapping = list(item = private$getBaseDataType())
        )
        Response$new(result, response)
      }
    },
    find_by_ids = function(ids = NULL,
                           ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/findByIds/{ids}"

      if (!missing(`ids`)) {
        ## build URL for path param
        ## input can be vector or string with comma separated items
        ## API takes string, so translate vector, if present
        if (length(`ids`) > 1) {
          ids <- paste(ids, collapse = ",")
        }
        urlPath <- gsub(paste0("\\{", "ids", "\\}"), `ids`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- Taxon$new()
        ## API call result is "list container"
        result <- lapply(
          httr::content(response),
          function(x) {
            cl <- returnObject$clone()
            cl$fromList(x,
              typeMapping = list(item = private$getBaseDataType())
            )
          }
        )
        Response$new(result, response)
      }
    },
    get_distinct_values = function(field = NULL,
                                   ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/getDistinctValues/{field}"

      if (!missing(`field`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    get_distinct_values_per_group = function(group = NULL,
                                             field = NULL,
                                             ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/getDistinctValuesPerGroup/{group}/{field}"

      if (!missing(`group`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "group", "\\}"), `group`, urlPath)
      }


      if (!missing(`field`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.list(httr::content(response))
        Response$new(result, response)
      }
    },
    get_field_info = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getFieldInfo"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    get_paths = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getPaths"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_settings = function(...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getSettings"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    get_setting = function(name = NULL,
                            ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getSetting/{name}"

      if (!missing(`name`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.list(httr::content(response))
        Response$new(result, response)
      }
    },
    group_by_scientific_name = function(defaultClassification.family = NULL,
                                        queryParams = list(),
                                        ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`defaultClassification.family`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`defaultClassification.family`) == "environment",
          `defaultClassification.family`$toJSONString(),
          `defaultClassification.family`
        )
        queryParams["defaultClassification.family"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- sub(
        "\\.querySpec",
        paste0("_", "querySpec"), # tweak to not transform .querySpec
        names(queryParams)
      )

      urlPath <- "/taxon/groupByScientificName"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- QueryResult$new()
        ## if API call result is QueryResult,
        ## list items must be mapped to model class
        result <- returnObject$fromList(
          httr::content(response),
          typeMapping = list(item = private$getBaseDataType())
        )
        Response$new(result, response)
      }
    },
    is_operator_allowed = function(field = NULL,
                                   operator = NULL,
                                   ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/isOperatorAllowed/{field}/{operator}"

      if (!missing(`field`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }


      if (!missing(`operator`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "operator", "\\}"), `operator`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    query = function(defaultClassification.genus = NULL,
                     queryParams = list(),
                     ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`defaultClassification.genus`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`defaultClassification.genus`) == "environment",
          `defaultClassification.genus`$toJSONString(),
          `defaultClassification.genus`
        )
        queryParams["defaultClassification.genus"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- sub(
        "\\.querySpec",
        paste0("_", "querySpec"), # tweak to not transform .querySpec
        names(queryParams)
      )

      urlPath <- "/taxon/query"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) %/% 100 != 2) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- QueryResult$new()
        ## if API call result is QueryResult,
        ## list items must be mapped to model class
        result <- returnObject$fromList(
          httr::content(response),
          typeMapping = list(item = private$getBaseDataType())
        )
        Response$new(result, response)
      }
    },
    print = function(...) {
      ## print class name
      cat("<TaxonClient>\n")
      cat("\tInherits from: <ApiClient>\n\n")
      ## print all members with values
      cat("Fields:\n")
      cat("\tbasePath:\t", self$basePath, "\n")
      cat("\tuserAgent:\t", self$userAgent, "\n")
      ## print all methods
      cat("Methods:\n")
      cat("\tcount", "\n")
      cat("\tcount_distinct_values", "\n")
      cat("\tcount_distinct_values_per_group", "\n")
      cat("\tdownload_query", "\n")
      cat("\tdwca_get_data_set", "\n")
      cat("\tdwca_get_data_set_names", "\n")
      cat("\tdwca_query", "\n")
      cat("\tfind", "\n")
      cat("\tfind_by_ids", "\n")
      cat("\tget_distinct_values", "\n")
      cat("\tget_distinct_values_per_group", "\n")
      cat("\tget_field_info", "\n")
      cat("\tget_paths", "\n")
      cat("\tget_setting", "\n")
      cat("\tget_settings", "\n")
      cat("\tgroup_by_scientific_name", "\n")
      cat("\tis_operator_allowed", "\n")
      cat("\tquery", "\n")
      cat("\tping\n")
      invisible(self)
    }
  )
)
