install.packages("DBI")
install.packages("RMySQL")

library(DBI)
library(RMySQL)



MyDataBase <- dbConnect(
  drv = RMySQL::MySQL(),
  dbname = "shinydemo",
  host = "shiny-demo.csa7qlmguqrf.us-east-1.rds.amazonaws.com",
  username = "guest",
  password = "guest")



dbListTables(MyDataBase)
dbListFields(MyDataBase, 'City')

DataDB <- dbGetQuery(MyDataBase, "select * from CountryLanguage")
DataDB


