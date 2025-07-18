#' Fasse den ALLBUS Datensatz zusammen
#'
#' Zeigt die Anzahl Zeilen, Spalten und einfache Statistiken.
#'
#' @param data Ein Dataframe (ALLBUS Datensatz)
#' @return Ein Tibble mit den Zusammenfassungen
#' @export
summary_allbus <- function(data) {
  tibble::tibble(
    Anz_Zeilen = nrow(data),
    Anz_Spalten = ncol(data),
    Gesamt_NA = sum(is.na(data)),
    Mittelwerte = purrr::map_dbl(data, ~ if (is.numeric(.)) mean(., na.rm = TRUE) else NA) |> stats::median(na.rm = TRUE)
  )
}

