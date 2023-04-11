## -----------------------------------------------------------------------------
# load nbaR
library(nbaR)

# instanciate specimen object
spec <- Specimen$new()

# represent data as JSON or list
spec$toJSONString()
spec$toList()

## -----------------------------------------------------------------------------
# initialize client
client <- SpecimenClient$new()

## -----------------------------------------------------------------------------
# specify two query conditions
l <- list(identifications.typeStatus = "holotype", sex = "female")

# run query
res <- client$query(queryParams = l)

## -----------------------------------------------------------------------------
# get first element of results
spec <- res$content$resultSet[[1]]$item

# object should be of type Specimen
class(spec)

## -----------------------------------------------------------------------------
# make specimen client instance
client <- SpecimenClient$new()

# specify search in QueryCondition object
qc <-
  QueryCondition$new(
    field = "unitID",
    operator = "EQUALS",
    value = "L.4304195"
  )

## -----------------------------------------------------------------------------
# build QuerySpec using above conditions
qs <- QuerySpec$new(conditions = list(qc))

# do the query
res <- client$query(querySpec = qs)

## -----------------------------------------------------------------------------
# specify multiple conditions
q1 <- QueryCondition$new(
  field = "sex",
  operator = "EQUALS",
  value = "female"
)
q2 <-
  QueryCondition$new(
    field = "identifications.defaultClassification.family",
    operator = "EQUALS",
    value = "Equidae"
  )
q3 <- QueryCondition$new(
  field = "identifications.taxonRank",
  operator = "EQUALS",
  value = "species"
)

## -----------------------------------------------------------------------------
# logical conjunction using 'or' method
q3$or <- list(QueryCondition$new(
  field = "identifications.taxonRank",
  operator = "EQUALS",
  value = "subspecies"
))

# build QuerySpec from QueryConditions
qs <- QuerySpec$new(conditions = list(q1, q2, q3))

# call API
res <- client$query(querySpec = qs)

## -----------------------------------------------------------------------------
res <- client$query()
res$content$totalSize

## -----------------------------------------------------------------------------
length(res$content$resultSet)

## -----------------------------------------------------------------------------
qs <- QuerySpec$new(size = 1000)
res <- client$query(querySpec = qs)
length(res$content$resultSet)

## -----------------------------------------------------------------------------
## search for specimens of genus 'musa'
qc <- QueryCondition$new(
  field = "identifications.defaultClassification.genus",
  operator = "EQUALS",
  value = "musa"
)
qs <- QuerySpec$new(conditions = list(qc))
res <- client$query(querySpec = qs)

## how many hits?
res$content$totalSize

## no hits! But: Genus names are capitalised, so
## we will ignore the case using operator EQUALS_IC
qc <- QueryCondition$new(
  field = "identifications.defaultClassification.genus",
  operator = "EQUALS_IC",
  value = "musa"
)
qs <- QuerySpec$new(conditions = list(qc))
res <- client$query(querySpec = qs)

## do we have more hits now?
res$content$totalSize

## -----------------------------------------------------------------------------
client$get_field_info()$
  content$identifications.defaultClassification.genus$
  allowedOperators

## -----------------------------------------------------------------------------
qc <- QueryCondition$new(
  field = "identifications.defaultClassification.genus",
  operator = "IN",
  value = c("Phoenix", "Trachycarpus")
)
qs <- QuerySpec$new(conditions = list(qc))

## print QuerySpec JSON representation
qs$toJSONString()

## -----------------------------------------------------------------------------
## operators for gatheringEvent.dateTimeBegin
client$get_field_info()$
  content$gatheringEvent.dateTimeBegin$
  allowedOperators

## how many specimens were collected between 1600 and 1700?
qc <- QueryCondition$new(
  field = "gatheringEvent.dateTimeBegin",
  operator = "BETWEEN",
  value = c("1600", "1700")
)
qs <- QuerySpec$new(conditions = list(qc))
client$count(querySpec = qs)$content

