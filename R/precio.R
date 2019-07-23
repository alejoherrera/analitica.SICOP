#' mayor.precio.anio
#'
#' @return mayor.precio.anio
#' @export
#'
#' @importFrom RSQLite dbConnect
#' @importFrom RSQLite dbGetQuery

mayor.precio.anio<-function(anio){
mydb <- dbConnect(RSQLite::SQLite(), "datos_sicop")
consulta<-paste0("SELECT
                 *
                 FROM
                 datos_sicop
                  WHERE
                ANO_ADJUDICADO=",anio,"
                 ORDER BY
                 PRECIO_UNITARIO DESC
                 LIMIT 1;")

return(dbGetQuery(mydb,consulta ))
}



