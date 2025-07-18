#' Load ALLBUS data
#'
#' Lädt den ALLBUS-Datensatz von einem lokalen Pfad.
#'
#' @param path Pfad zur ALLBUS-Datei (.sav, .dta)
#' @return Dataframe
#' @export
load_allbus <- function(path) {
  if (!requireNamespace("haven", quietly = TRUE)) {
    stop("Bitte installiere das Paket 'haven'.")
  }

  message("ALLBUS wird geladen...")

  if (grepl("\\.sav$", path)) {
    df <- haven::read_sav(path)
  } else if (grepl("\\.dta$", path)) {
    df <- haven::read_dta(path)
  } else {
    stop("Dateiformat nicht unterstützt. Bitte .sav oder .dta verwenden.")
  }

  message("ALLBUS erfolgreich geladen.")
  return(df)
}

