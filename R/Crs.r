# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' 
#' @docType class
#'
#' @format R6 class
#'
#' @usage
#' # Crs$new()
#'
#' @format
#' R6 class
#' 
#' @title Crs Class
#'
#' @description 
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for Crs objects. 
#'
#'
#' @field type  character
#'           
#' @field properties  list
#'           
#'
#'
#' @section Methods:
#' \describe{
#' 
#' \item{\code{$new()}}{
#'
#'   Constructor Crs object.
#'
#' }
#' \item{\code{$fromList(CrsList)}}{
#'
#'   Create Crs object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Crs.
#' 
#' }
#' \item{\code{fromJSONString(CrsJson)}}{
#'
#'   Create Crs object from JSON.
#' 
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#' 
#'   Get JSON representation of Crs.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Crs <- R6::R6Class(
  'Crs',
  public = list(
    `type` = NULL,
    `properties` = NULL,
    initialize = function(
    `type`,
        `properties`
    ){
      if (!missing(`type`)) {
        stopifnot(is.character(`type`),
                  length(`type`) == 1)
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
      CrsList[vapply(
                            CrsList,
                            length,
                            FUN.VALUE=integer(1)) > 0]
      },
    fromList = function(CrsList,
                        typeMapping = NULL) {
            self[["type"]] <-
                CrsList[["type"]]        
            self[["properties"]] <-
                CrsList[["properties"]]        
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
          self$toList(),
          simplifyVector = TRUE,
          auto_unbox = TRUE,
          pretty = pretty)
    },
    fromJSONString = function(CrsJson,
                              typeMapping = NULL) {
      CrsList <- jsonlite::fromJSON(
          CrsJson,
          simplifyVector = FALSE)
      self <- self$fromList(CrsList)
      invisible(self)
    },
    print = function(...) {
       ## print class name
       cat("<Crs>\n")    
       ## print all members with values
       cat("Fields:\n")
           if (typeof(self$type) == "environment") {
               cat("\ttype:\tobject of class", paste0("<", class(self$type)[1], ">"), "\n")
           }
           else if (typeof(self$type) == "list") {
               cat("\ttype:\tlist of length", length(self$type), "\n")
           }
           else {
               cat("\ttype:\t", self$type, "\n")
           }           
           if (typeof(self$properties) == "environment") {
               cat("\tproperties:\tobject of class", paste0("<", class(self$properties)[1], ">"), "\n")
           }
           else if (typeof(self$properties) == "list") {
               cat("\tproperties:\tlist of length", length(self$properties), "\n")
           }
           else {
               cat("\tproperties:\t", self$properties, "\n")
           }           
       ## print all methods
       cat("Methods:\n")
       cat("\tfromJSONString\n")
       cat("\ttoJSONString\n")
       cat("\tfromList\n")
       cat("\ttoList\n")
       cat("\tprint\n")
       invisible(self)
    }  
  )
)
