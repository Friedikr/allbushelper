#' Plot East/West Verteilung
#'
#' Plottet die Häufigkeit der East/West Variable (1 = Ost, 2 = West).
#'
#' @param data Ein Dataframe (ALLBUS Datensatz)
#' @param var Name der East/West Spalte (z. B. "eastwest")
#' @export
plot_eastwest <- function(data, var = "eastwest") {
  # Variable als Faktor mit Labels definieren
  data[[var]] <- factor(data[[var]],
                        levels = c(1, 2),
                        labels = c("Ost", "West"))

  ggplot2::ggplot(data, ggplot2::aes(x = .data[[var]])) +
    ggplot2::geom_bar(fill = "steelblue") +
    ggplot2::labs(
      title = "ALLBUS 2023: Verteilung Ost/West",
      x = NULL,  # Keine X-Achsen-Beschriftung
      y = "Anzahl"
    ) +
    ggplot2::theme_minimal()
}



