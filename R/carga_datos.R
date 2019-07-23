#' carga_datos
#'
#' @return carga_datos
#' @export
#'
#' @importFrom RSQLite dbWriteTable
#'

carga_datos<-function(){

  datos_sicop <- dbConnect(RSQLite::SQLite(), "datos_sicop.sqlite")
  dbDisconnect(datos_sicop)
  unlink("datos_sicop.sqlite")
# Read CSV into R

data_sicop<- read.csv(file="datos_sicop.csv",header=TRUE, sep=";")
drv <- dbDriver("SQLite")
con <- dbConnect(drv, "datos_sicop")
dbWriteTable(con, "datos_sicop", data_sicop)
unlink("datos_sicop.sqlite")
}


