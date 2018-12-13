# Step 1: Install miniCRAN
# Set the repo for use throughout
cran <- "https://cran.rstudio.org"

# Install
if(!require(miniCRAN)){ 
  install.packages("miniCRAN", repos = cran)
}

# Step 2: Mimic having local R packages
library(miniCRAN)

# Config variables
tempdir <- tempdir()
pkg <- "AnomalyDetection"
pkgs <- c(pkg, "curl")
getwd()
# Doesn't use miniCRAN::addPackage as it'd get all the deps
dir.create(tempdir)
utils::download.packages(pkgs, tempdir, repos= cran)

# Step 3. Make a CRAN structure

mCRAN <- "myminiCRAN"
dir.create(mCRAN)
# Use NULL to create an empty structure
miniCRAN::makeRepo(NULL, mCRAN
                   , repos = cran, type="source")

#Step 4: Move my R packages to my miniCRAN
file.copy(list.files(tempdir,pattern = "*.tar.gz"
                     , full.names = TRUE)
          , file.path(mCRAN, "src", "contrib"))
getwd()
#Step 5. Update the miniCRAN index

miniCRAN::updateRepoIndex(mCRAN)

# Step: 6 Get the file directory URI for correct referencing
uriCRAN <- paste0("file:///"
                  , file.path(getwd(), mCRAN))
getwd()
#Step 7 : Identify all the dependencies for a package [Only need this step to get all dependencies into miniCRAN from CRAN]
deps <- miniCRAN::pkgDep(pkg
                         , repos = uriCRAN
                         , suggests = FALSE)
# Exclude locally available packages
deps <- setdiff(deps, pkgs)

#Step 8: Get all available dependencies from CRAN [Only need this step to get all dependencies into miniCRAN]

miniCRAN::addPackage(deps, mCRAN
                     , repos = cran
                     , writePACKAGES = TRUE
                     # Deps already captured
                     , deps = FALSE)

#Step 9 : Install the internal package
install.packages(pkg, repos = uriCRAN
                 , type="source")

install.packages(memor, repos = uriCRAN
                 , type="source")
#Step 10: Adding new packages from CRAN
addPackage("tuneR", path = "D:/R/R-3.5.0/library/myminiCRAN/src/contrib/", repos = uriCRAN, type = "source")

