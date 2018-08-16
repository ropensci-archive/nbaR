
## Function to get a geological age range from
## unit can be Eon, Era, System/Period, Series/Epoch
get_geo_age_range <- function(geo_unit) {
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
        warning("Timeout reached while retreiving values for geo unit ",
                geo_unit, " from earthlifeconsortium.org")
        NULL
    }
    )
    
    if (is.null(res) || res$status_code != 200) {
        warning("Could not retreive values for geo unit ",
                geo_unit, " from earthlifeconsortium.org")
        return(list(early_age=NA, late_age=NA))
    }
    
    resultList <- httr::content(res)        
    
    return(list(early_age = resultList[['records']][['early_age']],
                late_age = resultList[['records']][['late_age']]))
}

