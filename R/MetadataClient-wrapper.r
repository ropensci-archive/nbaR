# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Metadata client wrapper
#' for nbaR.Metadata objects


#' @name metadata_get_allowed_date_formats
#' @title Get allowed values for dates in queries
#' @description This is a wrapper function for get_allowed_date_formats
#' from class nbaR.MetadataClient.
#' @details Queries with other formatted dates will result in a query error
#' @family nbaR.MetadataClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_allowed_date_formats from class class nbaR.MetadataClient
#' @export
metadata_get_allowed_date_formats <- function(
                                              ...) {
  sc <- MetadataClient$new()
  res <- sc$get_allowed_date_formats(
    ...
  )
  result <- res$content
  return(result)
}
#' @name metadata_get_controlled_list_phase_or_stage
#' @title Get allowed values for the field &#39;PhaseOrStage&#39; in a specimen document
#' @description This is a wrapper function for get_controlled_list_phase_or_stage
#' from class nbaR.MetadataClient.
#' @details
#' @family nbaR.MetadataClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_controlled_list_phase_or_stage from class class nbaR.MetadataClient
#' @export
metadata_get_controlled_list_phase_or_stage <- function(
                                                        ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_list_phase_or_stage(
    ...
  )
  result <- res$content
  return(result)
}
#' @name metadata_get_controlled_list_sex
#' @title Get allowed values for the field &#39;Sex&#39; in a specimen document
#' @description This is a wrapper function for get_controlled_list_sex
#' from class nbaR.MetadataClient.
#' @details
#' @family nbaR.MetadataClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_controlled_list_sex from class class nbaR.MetadataClient
#' @export
metadata_get_controlled_list_sex <- function(
                                             ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_list_sex(
    ...
  )
  result <- res$content
  return(result)
}
#' @name metadata_get_controlled_list_specimen_type_status
#' @title Get allowed values for the field &#39;SpecimenTypeStatus&#39; in a specimen document
#' @description This is a wrapper function for get_controlled_list_specimen_type_status
#' from class nbaR.MetadataClient.
#' @details
#' @family nbaR.MetadataClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_controlled_list_specimen_type_status from class class nbaR.MetadataClient
#' @export
metadata_get_controlled_list_specimen_type_status <- function(
                                                              ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_list_specimen_type_status(
    ...
  )
  result <- res$content
  return(result)
}
#' @name metadata_get_controlled_list_taxonomic_status
#' @title Get allowed values for the field &#39;TaxonomicStatus&#39; in specimen and taxon documents
#' @description This is a wrapper function for get_controlled_list_taxonomic_status
#' from class nbaR.MetadataClient.
#' @details
#' @family nbaR.MetadataClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_controlled_list_taxonomic_status from class class nbaR.MetadataClient
#' @export
metadata_get_controlled_list_taxonomic_status <- function(
                                                          ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_list_taxonomic_status(
    ...
  )
  result <- res$content
  return(result)
}
#' @name metadata_get_controlled_lists
#' @title Get the names of fields for which a controlled vocabulary exists
#' @description This is a wrapper function for get_controlled_lists
#' from class nbaR.MetadataClient.
#' @details Possible values for fields with controlled vocabularies can be queried with metadata/getControlledList/{field}
#' @family nbaR.MetadataClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_controlled_lists from class class nbaR.MetadataClient
#' @export
metadata_get_controlled_lists <- function(
                                          ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_lists(
    ...
  )
  result <- res$content
  return(result)
}
#' @name metadata_get_rest_services
#' @title List all available REST services and their parameters
#' @description This is a wrapper function for get_rest_services
#' from class nbaR.MetadataClient.
#' @details Lists end point name, http method, response type, and URL
#' @family nbaR.MetadataClient-wrappers
#' @return list
#' @param ... additional parameters passed to get_rest_services from class class nbaR.MetadataClient
#' @export
metadata_get_rest_services <- function(
                                       ...) {
  sc <- MetadataClient$new()
  res <- sc$get_rest_services(
    ...
  )
  result <- .make_list_response(res)
  return(result)
}
#' @name metadata_get_setting
#' @title Get the value of an NBA setting
#' @description This is a wrapper function for get_setting
#' from class nbaR.MetadataClient.
#' @details All settings can be queried with /metadata/getSettings
#' @family nbaR.MetadataClient-wrappers
#' @return scalar
#' @param name name of setting, type:
#' @param ... additional parameters passed to get_setting from class class nbaR.MetadataClient
#' @export
metadata_get_setting <- function(
                                 name = NULL,
                                 ...) {
  sc <- MetadataClient$new()
  res <- sc$get_setting(
    name,

    ...
  )
  result <- res$content
  return(result)
}
#' @name metadata_get_settings
#' @title List all publicly available configuration settings for the NBA
#' @description This is a wrapper function for get_settings
#' from class nbaR.MetadataClient.
#' @details The value of a specific setting can be queried with metadata/getSetting/{name}
#' @family nbaR.MetadataClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_settings from class class nbaR.MetadataClient
#' @export
metadata_get_settings <- function(
                                  ...) {
  sc <- MetadataClient$new()
  res <- sc$get_settings(
    ...
  )
  result <- res$content
  return(result)
}
#' @name metadata_get_source_systems
#' @title Get the data sources from which the data was retrieved
#' @description This is a wrapper function for get_source_systems
#' from class nbaR.MetadataClient.
#' @details Returns code and name of all source systems
#' @family nbaR.MetadataClient-wrappers
#' @return list
#' @param ... additional parameters passed to get_source_systems from class class nbaR.MetadataClient
#' @export
metadata_get_source_systems <- function(
                                        ...) {
  sc <- MetadataClient$new()
  res <- sc$get_source_systems(
    ...
  )
  result <- .make_list_response(res)
  return(result)
}

#' @noRd
#' @param response Object of class Response
#' Internal function to convert all (nested) objects
#' in a response object to lists
.make_list_response <- function(response) {
  l <- response$content

  ## Handle return objects of class QueryResult
  if (class(l)[1] == "QueryResult") {
    l <- lapply(l$resultSet, function(x) x$item)
  }

  ## wrapper functions return lists instead of objects
  if (!is.list(l)) {
    result <- l$toList()
  } else {
    result <- lapply(
      l,
      function(x) if (is.object(x)) {
          x$toList()
        } else {
          x
        }
    )
  }

  return(result)
}
