# Programming for Data Analysis
# Tutorial 1: Programming Environment and Package Installation
#
# Topics Covered:
#       1. Install R & RStudio
#       2. Install package
#       3. Load package
#       4. Check installed/loaded package
#       5. Unload package
#       6. Uninstall package

# Link for downloading R and RStudio
# R:        https://cran.r-project.org/
# RStudio:  https://rstudio.com/products/rstudio/download/#download
    

# ~~~~~~~~~~~~~~~~~~~~~~ Question 1 ~~~~~~~~~~~~~~~~~~~~~~
# Install package RSQLite
# ====================== Answer ==========================
install.packages("ggplot2")

# ~~~~~~~~~~~~~~~~~~~~~~ Question 2 ~~~~~~~~~~~~~~~~~~~~~~
# Load package RSQLite
# ====================== Answer ==========================

library(ggplot2)

# ~~~~~~~~~~~~~~~~~~~~~~ Question 3 ~~~~~~~~~~~~~~~~~~~~~~
# Check installed/loaded package RSQLite
# ====================== Answer ==========================
sessionInfo()
installed.packages()

# ~~~~~~~~~~~~~~~~~~~~~~ Question 4 ~~~~~~~~~~~~~~~~~~~~~~
# Unload package RSQLite
# ====================== Answer ==========================
detach("package:ggplot2", unload = TRUE)

# ~~~~~~~~~~~~~~~~~~~~~~ Question 5 ~~~~~~~~~~~~~~~~~~~~~~
# Uninstall package RSQLite
# ====================== Answer ==========================
remove.packages("ggplot2")

# ~~~~~~~~~~~~~~~~~~~~~~ Question 6 ~~~~~~~~~~~~~~~~~~~~~~
# Identify same function name with different package
# ====================== Answer ==========================

# arm::coefplot()
# coefplot::coefplot()


emp <- c(140, 253, 137, 358, 279)

num= 1
while ( emp[num] <= length(emp)){
  print(emp[num])
  firstDigit =as.integer(emp[num]/100)
  if(firstDigit == 1){
    print(emp[num], 'in red color')
  }else if(firstDigit == 2){
    paste(print(emp[num], 'in green color'))
  }else if(firstDigit == 3){
    paste(print(emp[num], 'in blue color'))
  }
  num=num+1
}
