require(nbaR)
ac <- ApiClient$new(basePath="http://api.biodiversitydata.nl/v2")
api <- SpecimenApi$new(ac)
api$query()
