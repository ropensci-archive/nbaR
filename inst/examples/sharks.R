library(nbaR)
library(ape)

## instantiate specimen client
sc <- SpecimenClient$new()


## read data
path <- system.file('extdata', 'shark_tree.nex', package='nbaR')
tree <- read.nexus(path)

## plot the tree
plot(tree, cex=0.3)

## get shark orders
shark_orders <- c("Carcharhiniformes",
                  "Heterodontiformes",
                  "Hexanchiformes",
                  "Lamniformes",
                  "Orectolobiformes",
                  "Pristiophoriformes",
                  "Squaliformes",
                  "Squatiniformes")

## make query condition for shark orders
qc <- QueryCondition$new(field="identifications.defaultClassification.order", operator="IN", value=shark_orders)

## formulate query conditions for fields to be non-empty
qc2 <- QueryCondition$new(field="gatheringEvent.chronoStratigraphy.youngChronoName", operator="NOT_EQUALS", value="")
qc3 <- QueryCondition$new(field="gatheringEvent.chronoStratigraphy.oldChronoName", operator="NOT_EQUALS", value="")

## join qc2 and qc3 with operator OR
qc2$or <- list(qc3)

## instantiate QuerySpec, give size
qs <- QuerySpec$new(conditions=list(qc, qc3), size=5000)
res <- sc$query(querySpec = qs)

## how many hits?
res$content$totalSize

## load all specimens
specimens <- lapply(res$content$resultSet, function(x)x$item)

## check the fields youngCronoName and oldChronoName
unique(unlist(lapply(specimens, function(x)x$gatheringEvent$chronoStratigraphy[[1]]$youngChronoName)))
unique(unlist(lapply(specimens, function(x)x$gatheringEvent$chronoStratigraphy[[1]]$oldChronoName)))

## make table with counts for each order
tab <- table(unlist(lapply(specimens, function(x)x$identifications[[1]]$defaultClassification$order)))
par(mar=c(5.1, 8, 4.1, 2.1))
barplot(sort(tab), horiz=T, las=2, xlab="Number of specimens")

## get the specimens which have a preferred identification
ident <- sapply(specimens, function(s)any(sapply(s$identifications, function(i)i$preferred)))

## how many do not have a preferred identification?
sum(!ident)

## filter specimens
specimens <- specimens[ident]

## get the upper chrono name for the first specimen
name <- specimens[[1]]$gatheringEvent$chronoStratigraphy[[1]]$oldChronoName
name

## get the lower and upper bounds for this division
geo_age(name)

## make calibration table on genus level
calibration_table <- chronos_calib(specimens, tree, "genus")

calibration_table

## clean up: one rogue taxon in genus "Squatina"! Skip this genus
calibration_table <- calibration_table[calibration_table$taxon != "Squatina",]
  
## run ape's chronos
chronogram <- chronos(tree, calibration=calibration_table)
  
## plot tree with time axis
plot(chronogram, cex=0.3)
axisPhylo()
  
## plot calibrated genera
nodelabels(calibration_table$taxon, calibration_table$node)

## make calibration table on family level
calibration_table <- chronos_calib(specimens, tree, "family")
  
  ## run ape's chronos
chronogram <- chronos(tree, calibration=calibration_table)
  
## plot tree with time axis
plot(chronogram, cex=0.3)
axisPhylo()
  
## plot calibrated families
nodelabels(calibration_table$taxon, calibration_table$node)

