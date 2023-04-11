## -----------------------------------------------------------------------------
library(nbaR)

# instantiate specimen client
sc <- SpecimenClient$new()

# specify query params in named list
qp <-
  list(
    identifications.defaultClassification.family = "Ebenaceae",
    gatheringEvent.continent = "Europe"
  )

# query
res <- sc$query(queryParams = qp)

## -----------------------------------------------------------------------------
sapply(res$content$resultSet, function(x) x$item$gatheringEvent$country)

## -----------------------------------------------------------------------------
# get all specimens with genus name starting with 'Hydro'
qc <-
  QueryCondition$new(
    field = "identifications.defaultClassification.genus",
    operator = "STARTS_WITH",
    value = "Hydro"
  )
qs <- QuerySpec$new(conditions = list(qc))
res <- sc$query(qs)

## ----eval=FALSE---------------------------------------------------------------
#  ## get the first 100000 specimen objects (not possible with query method)
#  res <- sc$download_query(QuerySpec$new(size = 100000))

## -----------------------------------------------------------------------------
# Example with QuerySpec:
# how many specimens are there in the 'Botany' collection?
qc <- QueryCondition$new(field = "collectionType", operator = "EQUALS", value = "Botany")
qs <- QuerySpec$new(conditions = list(qc))

# get the number of specimens
sc$count(qs)$content

## -----------------------------------------------------------------------------
# use SpecimenClient instantiated above
res <- sc$exists("ZMA.INS.1255440")

# content is boolean
res$content

## -----------------------------------------------------------------------------
id <- "RMNH.MAM.17209.B@CRS"
res <- sc$find(id)

# content is single specimen object
res$content

