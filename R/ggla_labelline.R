#' @title ggla_labelline
#' @description Add a dotted line labelled a specific point
#' @param x1 starting x-value, not needed for lines perpendicular to x-axis, Default: NULL
#' @param x2 final x-value, only needed lines which aren't perpedicular or parallel to axis, Default: NULL
#' @param y1 starting y-value, not needed for lines perpendicular to y-axis, Default: NULL
#' @param y2 final y-value, only needed lines which aren't perpedicular or parallel to axis, Default: NULL
#' @details DETAILS
#' @examples 
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso 
#'  \code{\link[ggplot2]{geom_abline}}
#'  \code{\link[ggplot2]{geom_segment}}
#' @rdname ggla_labelline
#' @export 
#' @import checkmate
#' @param gla_theme Either "default" or "inverse", Default: 'default'
ggla_labelline <- function(x1 = NULL, x2 = NULL, y1 = NULL, y2 = NULL,
                           gla_theme = "default") {

  # checks
  checkmate::assert_number(x1, null.ok = TRUE)
  checkmate::assert_number(x2, null.ok = TRUE)
  checkmate::assert_number(y1, null.ok = TRUE)
  checkmate::assert_number(y2, null.ok = TRUE)
  check <- checkmate::test_choice(gla_theme, choices = c("light", "dark"))
  if (check) {
    warning("The gla_themes have been renamed to default (light) and inverse (dark).")
    gla_theme <- ifelse(gla_theme == "light", "default", "inverse")
  }
  checkmate::assert_choice(gla_theme, c("default", "inverse"))

  colours <- get(paste0("gla_", gla_theme))
  if (is.null(x1) & is.null(x2) & is.null(y2)) {
    ggplot2::geom_hline(ggplot2::aes(yintercept = y1),
               colour = colours$`axis text & labels`,
               linetype = "dotted",
               size = 1 * mm_to_pt)
  } else if (is.null(y1) & is.null(y2) & is.null(x2)) {
    ggplot2::geom_vline(ggplot2::aes(xintercept = x1),
               colour = colours$`axis text & labels`,
               linetype = "dotted",
               size = 1 * mm_to_pt)
  } else {
  ggplot2::geom_segment(mapping = ggplot2::aes(x = x1, xend = x2, y = y1, yend = y2),
               colour = colours$`axis text & labels`,
               linetype = "dotted",
               size = 1 * mm_to_pt)
  }

}
