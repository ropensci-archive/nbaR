#' A molecular phylogeny of the sharks
#'
#' An (uncalibrated) phylogenetic tree with 231 species from the eight
#' extant shark orders. Number of edges: 463. Branch lengths correspond
#' to molecular distances. Tips are labelled as follows: Genus_species.
#' Can be processed using the package \code{ape}. The data were kindly
#' provided by Ximena Vélez-Zuazo.
#'
#' @name shark_tree
#' @format An object of class \code{phylo}
#' @docType data
#' @keywords datasets phylogeny sharks
#' @references Vélez-Zuazo & Agnarsson. Shark tales: A molecular species-level
#' phylogeny of sharks (Selachimorpha, Chondrichthyes).
#' Molecular Phylogenetics and Evolution 58:2, 207-217
#' (\href{http://www.sciencedirect.com/science/article/pii/S1055790310004537}{Link})
#' @examples
#' data(shark_tree)
#' plot(shark_tree, cex=0.1)
"shark_tree"
