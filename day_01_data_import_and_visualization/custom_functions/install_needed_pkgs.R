install_needed_pkgs <- function(needed_packages) {
  
  # logical vector flagging which of these packages you already have installed
  # installed.packages() outputs a matrix information about each installed packages
  # rownames are names of packages
  # use rownames() to get a vector of already installed packages from the matrix outpitted from
  # installed.packages()
  # read: which of need_packages is in the rownames of installed.packages()
  have_packages <- needed_packages %in% rownames(installed.packages())
  
  # if you don't have any of the needed packages, install them
  if(any(have_packages == FALSE) == TRUE)
    install.packages(needed_packages[have_packages == FALSE])
  
  # lapply stands for "list" apply and it applies a function (this case, the library function) over a list of objects or a vector (in this case, the vector of character vector of package names)
  # I can give it an argument from the library function
  lapply(needed_packages, library, character.only = TRUE)
  
}