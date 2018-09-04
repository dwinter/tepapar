
base_url <- function() "https://data.tepapa.govt.nz/collection/"

GET_tepapa <- function(end_point, query=NULL, ...){
    httr::GET(paste0(base_url(), end_point), query= list(q=query) , key_header(), ...)
}

add_class <- function (x, new_class) {
    class(x) <- c(new_class, class(x))
    x
}





