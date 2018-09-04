set_guest_key <- function(){
    req <- httr::GET( paste0(base_url(), "object"))
    Sys.setenv(TEPAPA_GUEST_KEY = httr::content(req)[[2]])
}

key_header <- function(){
    if(Sys.getenv("TEPAPA_KEY") != ""){
        return( add_headers("x-api-key" = Sys.getenv("TEPAPA_KEY")))
    } else {         
        if(Sys.getenv("TEPAPA_GUEST_KEY") == ""){ #No guest key yet, so set one
            set_guest_key()
        }
    }
    httr::add_headers("Authorization" = paste("Bearer", Sys.getenv("TEPAPA_GUEST_KEY")))
}


