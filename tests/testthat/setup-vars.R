library("nbaR")
library("testthat")

data_dir <- testthat::test_path("data")

## initialise client classes
basePath <- "http://api.biodiversitydata.nl/v2"
ac <- ApiClient$new(basePath = basePath)
sc <- SpecimenClient$new(basePath = basePath)
tc <- TaxonClient$new(basePath = basePath)
mc <- MultimediaClient$new(basePath = basePath)
gc <- GeoClient$new(basePath = basePath) # not a good name, gc() is a function 
mdc <- MetadataClient$new(basePath = basePath)

## test if NBA is up and running
if (!ac$ping()) {
  skip("NBA not available, skipping test")
}

# Return a character string made of random letters (upper or lower case) and
# a random number of characters (between 1 and 20)
random_string <- function(nmax = 20) {
  paste(sample(c(LETTERS, letters), sample(seq_len(nmax), 1)), collapse = "")
}
# Return a list of rando strings
random_string_list <- function() {
  replicate(sample(5:10, 1), random_string(10), simplify = FALSE)
}
# Return a random date
random_date <- function() {
  as.character(sample(seq(as.Date("1600/01/01"),
    as.Date("2018/06/04"),
    by = "day"
  ), 1))
}
## random seed
set.seed(111)
