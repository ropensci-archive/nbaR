#' Response Class
#'
#' @title Response Class
#'
#' @description
#' The Response object is a generic object returned by any query
#' function of one of the nbaR client classes.

#'
#' @details
#' This class contains two fields (see also section 'Fields' below):
#' The field \code{content} contains the query result parsed from
#' the JSON response of the request. Depending on the query, this
#' can be an object such as e.g. a \code{ResultSet}, or a \code{Specimen} or
#' \code{Taxon} or a primitive data type. The field \code{reponse}
#' is the actual response from the \code{httr} package that is used
#' to perform the http request. It contains information such as the request and response headers,
#' status code, URL, and the raw response.
#' See also \link{https://cran.r-project.org/web/packages/httr/vignettes/quickstart.html} for further details.
#'
#' @format
#'
#' @usage
#'
#'
#' @field content Parsed response of the query call
#' @field response Response object from package \code{httr}
#'
#' @export
Response <- R6::R6Class(
  "Response",
  public = list(
    content = NULL,
    response = NULL,
    initialize = function(content, response) {
      self$content <- content
      self$response <- response
    },
    print = function(...) {
      ## print class name
      cat("<Response>\n")
      cat("Fields:\n")
      cat("\tcontent: object of class", paste0("<", class(self$content)[1], ">"), "\n")
      cat("\tresponse: object of class", paste0("<", class(self$response)[1], "> (httr package)"), "\n")
      invisible(self)
    }
  )
)
