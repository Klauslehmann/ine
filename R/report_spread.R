#Función para crear base spread. Recibe un reporte completo y devuelve una base de datos en formato spread con todas las reglas
report_spread <- function(report) {
  report_df <- as.data.frame(report)
  report_spread <- report_df %>%
    select(-expression) %>%
    spread(name, value)
  return(report_spread)
}
