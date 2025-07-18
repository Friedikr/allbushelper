#' Plot East/West Verteilung
#'
#' Plottet die Häufigkeit der East/West Variable (1 = East, 2 = West).
#'
#' @param data Ein Dataframe (ALLBUS Datensatz)
#' @param var Name der East/West Spalte (z. B. "eastwest")
#' @export
plot_eastwest <- function(data, var = "eastwest") {
  # Variable als Faktor behandeln, damit 1 und 2 als Kategorien angezeigt werden
  data[[var]] <- as.factor(data[[var]])

  ggplot2::ggplot(data, ggplot2::aes(x = .data[[var]])) +
    ggplot2::geom_bar(fill = "steelblue") +
    ggplot2::labs(
      title = "East/West Verteilung",
      x = "Region (1 = East, 2 = West)",
      y = "Anzahl"
    ) +
    ggplot2::theme_minimal()
}


