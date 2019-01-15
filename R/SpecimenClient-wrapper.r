# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Specimen client wrapper
#' for nbaR.Specimen objects


specimen_count <- function(
                           queryParams = list(),
                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$count(
    queryParams = queryParams,
    ...
  )
  result <- res$content
  return(result)
}
specimen_count_distinct_values <- function(
                                           field = NULL,
                                           queryParams = list(),
                                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$count_distinct_values(
    field,
    queryParams = queryParams,
    ...
  )
  result <- res$content
  return(result)
}
specimen_count_distinct_values_per_group <- function(
                                                     group = NULL,
                                                     field = NULL,
                                                     ...) {
  sc <- SpecimenClient$new()
  res <- sc$count_distinct_values_per_group(
    group,
    field,

    ...
  )
  result <- res$content
  return(result)
}
specimen_download_query <- function(
                                    queryParams = list(),
                                    ...) {
  sc <- SpecimenClient$new()
  res <- sc$download_query(
    queryParams = queryParams,
    ...
  )
  result <- lapply(res$content, function(x) if (is.object(x)) {
      x$toList()
    } else {
      x
    })
  return(result)
}
specimen_dwca_get_data_set <- function(
                                       dataset = NULL,
                                       filename = format(
                                         Sys.time(),
                                         "download-%Y-%m-%dT%H:%m.zip"
                                       ),
                                       ...) {
  sc <- SpecimenClient$new()
  res <- sc$dwca_get_data_set(
    dataset,

    ...
  )
  return(result)
}
specimen_dwca_get_data_set_names <- function(
                                             ...) {
  sc <- SpecimenClient$new()
  res <- sc$dwca_get_data_set_names(
    ...
  )
  result <- res$content
  return(result)
}
specimen_dwca_query <- function(
                                queryParams = list(),
                                filename = format(
                                  Sys.time(),
                                  "download-%Y-%m-%dT%H:%m.zip"
                                ),
                                ...) {
  sc <- SpecimenClient$new()
  res <- sc$dwca_query(
    queryParams = queryParams,
    ...
  )
  return(result)
}
specimen_exists <- function(
                            unitID = NULL,
                            ...) {
  sc <- SpecimenClient$new()
  res <- sc$exists(
    unitID,

    ...
  )
  result <- res$content
  return(result)
}
specimen_find <- function(
                          id = NULL,
                          ...) {
  sc <- SpecimenClient$new()
  res <- sc$find(
    id,

    ...
  )
  result <- lapply(res$content, function(x) if (is.object(x)) {
      x$toList()
    } else {
      x
    })
  return(result)
}
specimen_find_by_ids <- function(
                                 ids = NULL,
                                 ...) {
  sc <- SpecimenClient$new()
  res <- sc$find_by_ids(
    ids,

    ...
  )
  result <- lapply(res$content, function(x) if (is.object(x)) {
      x$toList()
    } else {
      x
    })
  return(result)
}
specimen_find_by_unit_id <- function(
                                     unitID = NULL,
                                     ...) {
  sc <- SpecimenClient$new()
  res <- sc$find_by_unit_id(
    unitID,

    ...
  )
  result <- lapply(res$content, function(x) if (is.object(x)) {
      x$toList()
    } else {
      x
    })
  return(result)
}
specimen_get_distinct_values <- function(
                                         field = NULL,
                                         queryParams = list(),
                                         ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_distinct_values(
    field,
    queryParams = queryParams,
    ...
  )
  result <- res$content
  return(result)
}
specimen_get_distinct_values_per_group <- function(
                                                   group = NULL,
                                                   field = NULL,
                                                   ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_distinct_values_per_group(
    group,
    field,

    ...
  )
  result <- res$content
  return(result)
}
specimen_get_field_info <- function(
                                    ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_field_info(
    ...
  )
  result <- res$content
  return(result)
}
specimen_get_ids_in_collection <- function(
                                           name = NULL,
                                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_ids_in_collection(
    name,

    ...
  )
  result <- res$content
  return(result)
}
specimen_get_named_collections <- function(
                                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_named_collections(
    ...
  )
  result <- res$content
  return(result)
}
specimen_get_paths <- function(
                               ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_paths(
    ...
  )
  result <- res$content
  return(result)
}
specimen_get_setting <- function(
                                 name = NULL,
                                 ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_setting(
    name,

    ...
  )
  result <- res$content
  return(result)
}
specimen_get_settings <- function(
                                  ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_settings(
    ...
  )
  result <- res$content
  return(result)
}
specimen_group_by_scientific_name <- function(
                                              queryParams = list(),
                                              ...) {
  sc <- SpecimenClient$new()
  res <- sc$group_by_scientific_name(
    queryParams = queryParams,
    ...
  )
  result <- lapply(res$content, function(x) if (is.object(x)) {
      x$toList()
    } else {
      x
    })
  return(result)
}
specimen_is_operator_allowed <- function(
                                         field = NULL,
                                         operator = NULL,
                                         ...) {
  sc <- SpecimenClient$new()
  res <- sc$is_operator_allowed(
    field,
    operator,

    ...
  )
  result <- res$content
  return(result)
}
specimen_query <- function(
                           queryParams = list(),
                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$query(
    queryParams = queryParams,
    ...
  )
  result <- lapply(res$content, function(x) if (is.object(x)) {
      x$toList()
    } else {
      x
    })
  return(result)
}
