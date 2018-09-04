<!-- README.md is generated from README.Rmd. Please edit that file -->
Interact with the Te Papa Collections API within R
==================================================

tepapar
=======

This is a stem of a project on working with the [Te Papa collections API](https://blog.tepapa.govt.nz/2018/08/30/make-cool-stuff-with-our-collections-using-our-api/) from within R. At the moment it only includes some basic functions to generate user keys and make simple requests. If you'd like to help make it better please do so!

Example
-------

If you want to play around with this

At present teh onyl 'high-level' function is `tp_taxon` which is for searching for taxonomy records:

``` r
library(tepapar)
tiny_snails <- tp_taxon("allodiscus")
tiny_snails
#> Data on 67 taxa from Te Papa. Includes:
#>   $results: individual records for each matching taxon
#>   $_metadata: metadata pertaining to each taxon
```

As the printed information suggests, the `results` object contains information on all of these matches

``` r
head(tiny_snails$results,3)
#> [[1]]
#> Taxon data for Allodiscus(Genus in Mollusca)
#> 
#> [[2]]
#> Taxon data for Allodiscus tullia(Species in Mollusca)
#> 
#> [[3]]
#> Taxon data for Flammulina (Allodiscus)(Subgenus in Mollusca)
```
