#' 
#'
#' @export
geo_age <- function (geo_unit) {    
    as.data.frame(vapply(geo_unit, .geo_age, FUN.VALUE=list(early_age=NA, late_age=NA)))
}

## Function to get a geological age range from
## unit can be Eon, Era, System/Period, Series/Epoch
.geo_age <- function(geo_unit) {
    if (is.null(geo_unit)) {
        return(list(early_age=NA, late_age=NA))
    }
    if (is.na(geo_unit)) {
        return(list(early_age=NA, late_age=NA))
    }    
    unit <- tolower(geo_unit)
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
    error=function(cond) {
        warning("Timeout reached while retreiving values for geo unit \"",
                geo_unit, "\" from earthlifeconsortium.org")
        NULL
    }
    )
    
    if (is.null(res) || res$status_code != 200) {
        warning("Could not retreive values for geo unit \"",
                geo_unit, "\" from earthlifeconsortium.org")
        return(list(early_age=NA, late_age=NA))
    }
    
    resultList <- httr::content(res)        
    
    return(list(early_age = resultList[['records']][['early_age']],
                late_age = resultList[['records']][['late_age']]))
}


chronos_calib <- function(specimens, tree, level="genus") {

    ## gather taxonomic data and chronostratigraphy data
    data <- do.call(rbind, lapply(specimens, function(x) {
        order <- x$identifications[[1]]$defaultClassification$order
        if (is.null(order)) order <- NA
        family <- x$identifications[[1]]$defaultClassification$family        
        if (is.null(family)) family <- NA
        genus <- x$identifications[[1]]$defaultClassification$genus
        if (is.null(genus)) genus <- NA
        specificEpithet <- x$identifications[[1]]$defaultClassification$specificEpithet
        if (is.null(specificEpithet)) specificEpithet <- NA
        youngChronoName <- x$gatheringEvent$chronoStratigraphy[[1]]$youngChronoName
        if (is.null(youngChronoName)) youngChronoName <- NA
        oldChronoName <- x$gatheringEvent$chronoStratigraphy[[1]]$oldChronoName                
        if (is.null(oldChronoName)) oldChronoName <- NA
        c(order=order, family=family, genus=genus, specificEpithet=specificEpithet, youngChronoName=youngChronoName, oldChronoName=oldChronoName)
    }))
    data <- as.data.frame(data)
    ## translate the geological periods to mya
    times <- geo_age(unique(c(as.character(data$youngChronoName), as.character(data$oldChronoName))))
    data$young_age <- sapply(data$youngChronoName, function(x)ifelse(is.na(x), NA, unlist(times['late_age', as.character(x)])))
    data$old_age <- sapply(data$oldChronoName, function(x)ifelse(is.na(x), NA, unlist(times['early_age', as.character(x)])))
    
    ## filter for the ones that have data
    data <- data[! (is.na(data$young_age) & is.na(data$old_age)), ]
    
    ## filter out duplicates
    data <- unique(data)

    tree_genera <- sapply(strsplit(tree$tip.label, "_"), `[`, 1)
    tree_species <- sapply(strsplit(tree$tip.label, "_"), `[`, 2)
   
    tree_taxa <- vector()
    if (level == "genus") {
        tree_taxa <- tree_genera
    } else {
        tree_taxa <- as.character(mapply(function(x,y)get_higher_taxon(x,y, level), genera, species))
    }
        
    ## filter out taxa that are not in our tree
    data_filtered <- data[data[, level] %in% tree_taxa,]
    
    taxa_ages <- aggregate(data_filtered[c('young_age', 'old_age')], by=list(data_filtered[, level]), FUN=mean, na.rm=T)
    taxa_ages <- taxa_ages[complete.cases(taxa_ages),]
    if (nrow(taxa_ages) == 0) {
        warning("Could not find calibration points")
        return (NULL)
    }
    
    ## get corresponding nodes for taxa in tree
    taxa_ages$node <- sapply(taxa_ages[,1], function(taxon) {
        tips <- tree$tip.label[tree_taxa == taxon]
        tips <- tips[!is.na(tips)]
        ## tips <- grep(paste0("^", taxon, "_"), tree$tip.label)
        mrca <- getMRCA(tree, tips)
        ifelse(is.null(mrca), NA, mrca)
    })
    
    taxa_ages <- taxa_ages[complete.cases(taxa_ages),]
    calib <- makeChronosCalib(tree, taxa_ages$node, age.min=taxa_ages$young_age, age.max=taxa_ages$old_age)
    
    ## add group that will be calibrated to calibration point data frame
    calib <- cbind(calib, taxon=taxa_ages[,1])
    calib    
}

get_higher_taxon <- function(genus, specificEpithet, rank) {
    tc <- TaxonClient$new(basePath="http://145.136.242.167:8080/v2")
    res <- tc$query(queryParams=list(acceptedName.genusOrMonomial=genus, acceptedName.specificEpithet=specificEpithet))
    if (res$content$totalSize==0) {
        warning("Could not get higher level taxon for: ", genus, "", specificEpithet)
        return(NA)
    }
    if (res$content$totalSize>1) {
        warning("More than one taxon record found for : ", genus, specificEpithet, ". Taking first hit")
    }
    result <- res$content$resultSet[[1]]$item$defaultClassification[[rank]]
    result
}

