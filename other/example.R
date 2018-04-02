require(nbaR)
options(error=recover)

sc <- SpecimenClient$new(basePath="http://api.biodiversitydata.nl/v2")
qc <- QueryCondition$new(field="unitID", operator="EQUALS", value="L.4304195")
qs <- QuerySpec$new(conditions=list(qc))
res <- sc$query(querySpec=qs)


