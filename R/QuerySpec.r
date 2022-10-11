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
#' # QuerySpec$new()
#'
#' @format
#' R6 class
#' 
#' @title QuerySpec Class
#'
#' @description 
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for QuerySpec objects. 
#'
#'
#' @field constantScore  logical
#'           
#' @field fields  list(character)
#'           
#' @field conditions  list(QueryCondition)
#'           
#' @field logicalOperator  character
#'           
#' @field sortFields  list(SortField)
#'           
#' @field from  integer
#'           
#' @field size  integer
#'           
#'
#'
#' @section Methods:
#' \describe{
#' 
#' \item{\code{$new()}}{
#'
#'   Constructor QuerySpec object.
#'
#' }
#' \item{\code{$fromList(QuerySpecList)}}{
#'
#'   Create QuerySpec object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of QuerySpec.
#' 
#' }
#' \item{\code{fromJSONString(QuerySpecJson)}}{
#'
#'   Create QuerySpec object from JSON.
#' 
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#' 
#'   Get JSON representation of QuerySpec.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuerySpec <- R6::R6Class(
  'QuerySpec',
  public = list(
    `constantScore` = NULL,
    `fields` = NULL,
    `conditions` = NULL,
    `logicalOperator` = NULL,
    `sortFields` = NULL,
    `from` = NULL,
    `size` = NULL,
    initialize = function(
    `constantScore`,
        `fields`,
        `conditions`,
        `logicalOperator`,
        `sortFields`,
        `from`,
        `size`
    ){
      if (!missing(`constantScore`)) {
        self[["constantScore"]] <- `constantScore`
      }
      if (!missing(`fields`)) {
        stopifnot(is.list(`fields`),
                  length(`fields`) != 0)
        lapply(`fields`,
               function(x) stopifnot(is.character(x)))
        ## omit names as they should not be part of JSON representation
        self[["fields"]] <- unname(`fields`)
      }
      if (!missing(`conditions`)) {
        stopifnot(is.list(`conditions`),
                  length(`conditions`) != 0)
        lapply(`conditions`,
               function(x) stopifnot(R6::is.R6(x)))
        ## omit names as they should not be part of JSON representation
        self[["conditions"]] <- unname(`conditions`)
      }
      if (!missing(`logicalOperator`)) {
        stopifnot(is.character(`logicalOperator`),
                  length(`logicalOperator`) == 1)
        self[["logicalOperator"]] <- `logicalOperator`
      }
      if (!missing(`sortFields`)) {
        stopifnot(is.list(`sortFields`),
                  length(`sortFields`) != 0)
        lapply(`sortFields`,
               function(x) stopifnot(R6::is.R6(x)))
        ## omit names as they should not be part of JSON representation
        self[["sortFields"]] <- unname(`sortFields`)
      }
      if (!missing(`from`)) {
        stopifnot(is.numeric(`from`),
                  length(`from`) == 1)
        self[["from"]] <- `from`
      }
      if (!missing(`size`)) {
        stopifnot(is.numeric(`size`),
                  length(`size`) == 1)
        self[["size"]] <- `size`
      }
    },
    toList = function() {
      QuerySpecList <- list()
        if (!is.null(self[["constantScore"]])) {
            QuerySpecList[["constantScore"]] <-
                  self[["constantScore"]]
      }
        if (!is.null(self[["fields"]])) {
            QuerySpecList[["fields"]] <-
                  self[["fields"]]
      }
        if (!is.null(self[["conditions"]])) {
            QuerySpecList[["conditions"]] <-
                  lapply(self[["conditions"]], function(x) x$toList())
      }
        if (!is.null(self[["logicalOperator"]])) {
            QuerySpecList[["logicalOperator"]] <-
                  self[["logicalOperator"]]
      }
        if (!is.null(self[["sortFields"]])) {
            QuerySpecList[["sortFields"]] <-
                  lapply(self[["sortFields"]], function(x) x$toList())
      }
        if (!is.null(self[["from"]])) {
            QuerySpecList[["from"]] <-
                  self[["from"]]
      }
        if (!is.null(self[["size"]])) {
            QuerySpecList[["size"]] <-
                  self[["size"]]
      }
      ## omit empty nested lists in returned list
      QuerySpecList[vapply(
                            QuerySpecList,
                            length,
                            FUN.VALUE=integer(1)) > 0]
      },
    fromList = function(QuerySpecList,
                        typeMapping = NULL) {
            self[["constantScore"]] <-
                QuerySpecList[["constantScore"]]        
            self[["fields"]] <-
                QuerySpecList[["fields"]]        
      self[["conditions"]] <- lapply(QuerySpecList[["conditions"]],
                                       function(x){
                                          QueryCondition$new()$fromList(x,
                                          typeMapping = typeMapping)
                                          })
            self[["logicalOperator"]] <-
                QuerySpecList[["logicalOperator"]]        
      self[["sortFields"]] <- lapply(QuerySpecList[["sortFields"]],
                                       function(x){
                                          SortField$new()$fromList(x,
                                          typeMapping = typeMapping)
                                          })
            self[["from"]] <-
                QuerySpecList[["from"]]        
            self[["size"]] <-
                QuerySpecList[["size"]]        
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
          self$toList(),
          simplifyVector = TRUE,
          auto_unbox = TRUE,
          pretty = pretty)
    },
    fromJSONString = function(QuerySpecJson,
                              typeMapping = NULL) {
      QuerySpecList <- jsonlite::fromJSON(
          QuerySpecJson,
          simplifyVector = FALSE)
      self <- self$fromList(QuerySpecList)
      invisible(self)
    },
    print = function(...) {
       ## print class name
       cat("<QuerySpec>\n")    
       ## print all members with values
       cat("Fields:\n")
           if (typeof(self$constantScore) == "environment") {
               cat("\tconstantScore:\tobject of class", paste0("<", class(self$constantScore)[1], ">"), "\n")
           }
           else if (typeof(self$constantScore) == "list") {
               cat("\tconstantScore:\tlist of length", length(self$constantScore), "\n")
           }
           else {
               cat("\tconstantScore:\t", self$constantScore, "\n")
           }           
           if (typeof(self$fields) == "environment") {
               cat("\tfields:\tobject of class", paste0("<", class(self$fields)[1], ">"), "\n")
           }
           else if (typeof(self$fields) == "list") {
               cat("\tfields:\tlist of length", length(self$fields), "\n")
           }
           else {
               cat("\tfields:\t", self$fields, "\n")
           }           
           if (typeof(self$conditions) == "environment") {
               cat("\tconditions:\tobject of class", paste0("<", class(self$conditions)[1], ">"), "\n")
           }
           else if (typeof(self$conditions) == "list") {
               cat("\tconditions:\tlist of length", length(self$conditions), "\n")
           }
           else {
               cat("\tconditions:\t", self$conditions, "\n")
           }           
           if (typeof(self$logicalOperator) == "environment") {
               cat("\tlogicalOperator:\tobject of class", paste0("<", class(self$logicalOperator)[1], ">"), "\n")
           }
           else if (typeof(self$logicalOperator) == "list") {
               cat("\tlogicalOperator:\tlist of length", length(self$logicalOperator), "\n")
           }
           else {
               cat("\tlogicalOperator:\t", self$logicalOperator, "\n")
           }           
           if (typeof(self$sortFields) == "environment") {
               cat("\tsortFields:\tobject of class", paste0("<", class(self$sortFields)[1], ">"), "\n")
           }
           else if (typeof(self$sortFields) == "list") {
               cat("\tsortFields:\tlist of length", length(self$sortFields), "\n")
           }
           else {
               cat("\tsortFields:\t", self$sortFields, "\n")
           }           
           if (typeof(self$from) == "environment") {
               cat("\tfrom:\tobject of class", paste0("<", class(self$from)[1], ">"), "\n")
           }
           else if (typeof(self$from) == "list") {
               cat("\tfrom:\tlist of length", length(self$from), "\n")
           }
           else {
               cat("\tfrom:\t", self$from, "\n")
           }           
           if (typeof(self$size) == "environment") {
               cat("\tsize:\tobject of class", paste0("<", class(self$size)[1], ">"), "\n")
           }
           else if (typeof(self$size) == "list") {
               cat("\tsize:\tlist of length", length(self$size), "\n")
           }
           else {
               cat("\tsize:\t", self$size, "\n")
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
