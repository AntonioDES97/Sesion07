install.packages("rjson")
library(rjson)


samplej <- fromJSON(file="https://tools.learningcontainer.com/sample-json-file.json")

samplej


install.packages("XML")
library(XML)

leerxml <- "http://www-db.deis.unibo.it/courses/TW/DOCS/w3schools/xml/cd_catalog.xml"
infoxml <- (xmlParse(file=leerxml ))
infoxml
 xmldf <- xmlToDataFrame(leerxml)
xmldf

install.packages("rvest")
library(rvest)

theurl <- "https://solarviews.com/span/data2.htm"
file <- read_html(theurl)    # Leemos el html

tables <- html_nodes(file, "table")  


table1 <- html_table(tables[4], fill = TRUE)

table <- na.omit(as.data.frame(table1))   # Quitamos NA´s que meten filas extras y convertimos la lista en un data frame para su manipulación con R

str(table)  # Vemos la naturaleza de las variables


table$Albedo <- as.numeric(table$Albedo)
str(table)

table %>%  class()


table1 %>%  class()
