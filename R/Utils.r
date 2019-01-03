#' @importFrom stats aggregate complete.cases
#' @importFrom ape getMRCA read.nexus makeChronosCalib

#' @name geo_age
#' @family utils
#' @title Geological Age
#' @description Get early and late age for geological time span
#' @details Uses the API from earthlifeconsortium.org to retrieve
#' upper and lower bound for a geological age range (e.g. 'miocene').
#' Unit can be can be Eon, Era, System/Period, Series/Epoch.
#' Returns a list with items early_age and late_age. Gives a warning
#' if age range no found or if the API call times out.
#' @return list
#' @param geo_time character giving a Geological timespan
#' @examples
#' geo_age('lower miocene')
#' # vectorised
#' geo_age(c("Miocene", "Pliocene"))
#' @export
geo_age <- function(geo_time) {
  as.data.frame(vapply(geo_time, .geo_age,
    FUN.VALUE = list(early_age = NA, late_age = NA)
  ))
}

#' @noRd
#' @param geo_time character giving a Geological timespan
#' Internal Function to get a geological age range from unit,
#' calling the API from earthlifeconsortium
.geo_age <- function(geo_time) {
  if (is.null(geo_time)) {
    return(list(early_age = NA, late_age = NA))
  }
  if (is.na(geo_time)) {
    return(list(early_age = NA, late_age = NA))
  }
  unit <- tolower(geo_time)
  unit <- sub("u\\.", "late", unit)
  unit <- sub("l\\.", "early", unit)
  unit <- sub("upper", "late", unit)
  unit <- sub("lower", "early", unit)
  unit <- sub("\\s", "+", unit)

  base <- "http://earthlifeconsortium.org/api_v1/"
  path <- "misc/timebound"
  fullPath <- paste0(base, path, "?", "agerange=", unit)

  res <- tryCatch({
    httr::GET(fullPath, httr::timeout(10))
  },
  error = function(cond) {
    warning(
      "Timeout reached while retrieving values for geo unit \"",
      geo_time, "\" from earthlifeconsortium.org"
    )
    NULL
  }
  )

  if (is.null(res) || res$status_code != 200) {
    warning(
      "Could not retrieve values for geo unit \"",
      geo_time, "\" from earthlifeconsortium.org"
    )
    return(list(early_age = NA, late_age = NA))
  }

  resultList <- httr::content(res)

  return(list(
    early_age = resultList[["records"]][["early_age"]],
    late_age = resultList[["records"]][["late_age"]]
  ))
}


#' @name chronos_calib
#' @family utils
#' @title Make calibration table
#' @description Make calibration table compatible with ape's 'chronos'
#' @details Given a list of specimen objects, and a phylogenetic tree,
#' makes a calibration table that is compatible with the 'chronos'
#' function from the 'ape' package. This can be done for various
#' taxonomic levels
#' @param specimens list of objects of class Specimen, must have
#' chronostratigraphy information
#' @param tree object of class 'phylo'
#' @param level character giving taxonomic level
#' @examples
#' # get specimen with chronostratigraphic data
#' sc <- SpecimenClient$new()
#' sp <- sc$find_by_unit_id("RGM.156532")$content
#' # load tree
#' library('ape')
#' path <- system.file('extdata', 'shark_tree.nex', package='nbaR')
#' tree <- read.nexus(path)
#' # make calibration table
#' chronos_calib(sp, tree, "genus")
#' @export
chronos_calib <- function(specimens, tree, level = "genus") {

  ## gather taxonomic data and chronostratigraphy data
  data <- do.call(rbind, lapply(specimens, function(x) {
    order <- x$identifications[[1]]$defaultClassification$order
    if (is.null(order)) order <- NA
    family <- x$identifications[[1]]$defaultClassification$family
    if (is.null(family)) family <- NA
    genus <- x$identifications[[1]]$defaultClassification$genus
    if (is.null(genus)) genus <- NA
    specificEpithet <-
      x$identifications[[1]]$defaultClassification$specificEpithet
    if (is.null(specificEpithet)) specificEpithet <- NA
    youngChronoName <- x$gatheringEvent$chronoStratigraphy[[1]]$youngChronoName
    if (is.null(youngChronoName)) youngChronoName <- NA
    oldChronoName <- x$gatheringEvent$chronoStratigraphy[[1]]$oldChronoName
    if (is.null(oldChronoName)) oldChronoName <- NA
    c(
      order = order, family = family, genus = genus,
      specificEpithet = specificEpithet,
      youngChronoName = youngChronoName,
      oldChronoName = oldChronoName
    )
  }))
  data <- as.data.frame(data)
  ## translate the geological periods to mya
  times <- geo_age(unique(c(
    as.character(data$youngChronoName),
    as.character(data$oldChronoName)
  )))

  data$young_age <- vapply(data$youngChronoName,
    function(x) {
      ifelse(is.na(x),
        NA,
        unlist(times["late_age", as.character(x)])
      )
    },
    FUN.VALUE = numeric(1)
  )

  data$old_age <- vapply(data$oldChronoName,
    function(x) {
      ifelse(is.na(x),
        NA,
        unlist(times["early_age", as.character(x)])
      )
    },
    FUN.VALUE = numeric(1)
  )

  ## filter for the ones that have data
  data <- data[!(is.na(data$young_age) & is.na(data$old_age)), ]

  ## filter out duplicates
  data <- unique(data)

  tree_genera <- vapply(strsplit(tree$tip.label, "_"),
    `[`, 1,
    FUN.VALUE = character(1)
  )
  tree_species <- vapply(strsplit(tree$tip.label, "_"),
    `[`, 2,
    FUN.VALUE = character(1)
  )

  tree_taxa <- vector()
  if (level == "genus") {
    tree_taxa <- tree_genera
  } else {
    tree_taxa <- as.character(mapply(function(x, y)
      .get_higher_taxon(x, y, level), tree_genera, tree_species))
  }
  ## filter out taxa that are not in our tree
  data_filtered <- data[data[, level] %in% tree_taxa, ]

  taxa_ages <- aggregate(data_filtered[c("young_age", "old_age")],
    by = list(data_filtered[, level]),
    FUN = mean,
    na.rm = TRUE
  )
  taxa_ages <- taxa_ages[complete.cases(taxa_ages), ]
  if (nrow(taxa_ages) == 0) {
    warning("Could not find calibration points")
    return(NULL)
  }
  ## get corresponding nodes for taxa in tree
  taxa_ages$node <- vapply(taxa_ages[, 1], function(taxon) {
    tips <- tree$tip.label[tree_taxa == taxon]
    tips <- tips[!is.na(tips)]
    ## tips <- grep(paste0("^", taxon, "_"), tree$tip.label)
    mrca <- getMRCA(tree, tips)
    ifelse(is.null(mrca), NA, mrca)
  }, FUN.VALUE = numeric(1))

  taxa_ages <- taxa_ages[complete.cases(taxa_ages), ]
  calib <- makeChronosCalib(tree,
    taxa_ages$node,
    age.min = taxa_ages$young_age,
    age.max = taxa_ages$old_age
  )

  ## add group that will be calibrated to calibration point data frame
  calib <- cbind(calib, taxon = taxa_ages[, 1])
  calib
}

#' @noRd
#' @param genus genus of the taxon to get higher level for
#' @param specificEpithet species of the taxon to get higher level for
#' @param rank rank to be returned
#' Internal Function to get the higher-level taxon of a species,
#' given its genus and species name
.get_higher_taxon <- function(genus, specificEpithet, rank) {
  tc <- TaxonClient$new()
  res <- tc$query(
    queryParams = list(
      acceptedName.genusOrMonomial = genus,
      acceptedName.specificEpithet = specificEpithet
    )
  )
  if (res$content$totalSize == 0) {
    warning(
      "Could not get higher level taxon for: ",
      genus, "", specificEpithet
    )
    return(NA)
  }
  if (res$content$totalSize > 1) {
    warning(
      "More than one taxon record found for : ",
      genus, specificEpithet, ". Taking first hit"
    )
  }
  result <- res$content$resultSet[[1]]$item$defaultClassification[[rank]]
  result
}
