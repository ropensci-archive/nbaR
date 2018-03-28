require(nbaR)
options(error=recover)

ac <- ApiClient$new(basePath="http://api.biodiversitydata.nl/v2")
api <- SpecimenClient$new(ac)
##res <- api$query_http_get2()

qc <- QueryCondition$new(field="unitID", operator="EQUALS", value="L.4304195")
qs <- QuerySpec$new(conditions=list(qc))

res <- api$query_http_get2(query_spec=qs)


