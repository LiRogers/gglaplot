% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gla_pal.R
\name{gla_pal}
\alias{gla_pal}
\title{gla_pal}
\usage{
gla_pal(gla_theme = "default", palette_type = "categorical",
  palette_name = "core", main_colours = NULL, n = 6, inc0 = FALSE,
  remove_margin = NULL)
}
\arguments{
\item{gla_theme}{One of "default" or "inverse". Default: 'default'}

\item{palette_type}{One of "categorical", "quantitative", "highlight" or "diverging", Default: 'categorical'}

\item{palette_name}{One of the strings "core", "light", "dark", "brand", Default: 'core'}

\item{main_colours}{One or more of "blue", "pink", "green", "red", "yellow", "orange", "purple" or "mayoral" as a string or list, Default: 'mayoral'}

\item{n}{Number of colours in the palette. If palette_type = "Diverging", this is the number of colours on each side of the diverging scale . If palette_type = "Highlight" gla_pal will return main_colours + (n - length(main_colours)) context colours. Default: 6}

\item{inc0}{boolean, If TRUE an additional colour representing zero will be added to a quantiative or diverging palettes, Default: FALSE}

\item{remove_margin}{Remove the edges of the palette to get a more central palette. Either 'left', 'right', 'both' or NULL, Default: NULL}
}
\value{
Returns a character vector of length n giving colour hexs.
}
\description{
Generates palettes using the GLA colours
}
\details{
DETAILS
}
\examples{
\dontrun{
if(interactive()){
 #EXAMPLE1
 }
}
}
\seealso{
\code{\link[chroma]{interp_scale}}
}
