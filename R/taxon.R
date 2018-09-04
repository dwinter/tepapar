##' @export 
tp_taxon <- function(query){
    raw <- GET_tepapa("taxon", query)
    res <- add_class(httr::content(raw), "taxon_search")
    res[[1]] <- sapply(res[[1]], add_class, "taxon")    
    res
}

print.taxon_search <- function(x, ...){
    n <- length(x[[1]])
    cat("Data on", n, "taxa from Te Papa. Includes:\n")    
    cat("  $results: individual records for each matching taxon\n")
    cat("  $_metadata: metadata pertaining to each taxon\n")

}

print.taxon <- function(x, ...){
    cat("Taxon data for ", x[["title"]], "(", x[["taxonRank"]], " in ", x[["phylum"]], ")\n", sep="")
}
