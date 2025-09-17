# Get all packages used in the Rmd files
needed_packages <- attachment::att_from_rmds(".")

# Check which ones are not installed
missing_packages <- needed_packages[!(needed_packages %in% installed.packages()[,"Package"])]

# Install the missing ones
if (length(missing_packages) > 0) {
  install.packages(missing_packages)
}