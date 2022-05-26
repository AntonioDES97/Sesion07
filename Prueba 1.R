install.packages("dplyr")
library(dplyr)
autos <- mtcars 

head (autos)

autos %>% select (mpg)
