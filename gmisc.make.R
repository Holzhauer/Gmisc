library(roxygen2)
library("devtools")
full <- FALSE

# has_devel() 	# does not work because of 'C:\Program' is not recognized as an internal or 
# external command, operable program or batch file.

pkgsName <- "Gmisc2"
setwd("C:/Users/sholzhau/git/")

#create(pkgsName)


#devtools::use_vignette("descriptives")
#devtools::use_vignette("craftyr-raster")

devtools::build(pkgsName)
# args=c("--no-R", "--no-data", "--no-help", "--no-demo", "--no-inst", "--no-docs", "--no-exec", "--no-test-load")

if (full) {
	setwd("./Gmisc2")
	document()
	setwd("..")
}



if (full) {
	devtools::build_vignettes(pkgsName)
}


install(pkgsName)
# devtools::install_github("Holzhauer/Gmisc", ref="multi_transition_plot", args="--library='/exports/home/sholzhau/R/x86_64-unknown-linux-gnu-library/3.1'")
#devtools::install_github("Holzhauer/Gmisc", ref="multi_transition_plot")
