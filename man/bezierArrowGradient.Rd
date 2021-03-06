% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/bezierArrowGradient.R
\name{bezierArrowGradient}
\alias{bezierArrowGradient}
\title{A bezier arrow with gradient}
\usage{
bezierArrowGradient(width = 0.05, clr = "#000000", default.units = "npc",
  align_2_axis = TRUE, grdt_type = c("triangle"),
  grdt_decrease_prop = 0.4, grdt_start_prop = 0.4, grdt_clr_prop = 0.7,
  grdt_line_width = NA, grdt_clr = "#2F4F2F", vp = NULL, gp = gpar(),
  ...)
}
\arguments{
  \item{width}{The width of the arrow, either a numeric
  single number or a unit. \strong{Note:} The arrow does
  not rely on lwd but on actual width.}

  \item{clr}{The color of the arrow. This is the main color
  of the arrow and not the gradient color.}

  \item{default.units}{A string indicating the default
  units to use if \code{x} or \code{y} are only given as
  numeric vectors.}

  \item{align_2_axis}{Indicates if the arrow should be
  vertically/horizontally aligned. This is useful for
  instance if the arrow attaches to a box.}

  \item{grdt_type}{The type of growth and gradient that is
  to be used, currently it only supports triangle (I'm
  considering adding bezier curves but currently I'm a
  little tired of coding)}

  \item{grdt_decrease_prop}{The proportion of the full
  length that should be decreasing.}

  \item{grdt_start_prop}{The proportion of the full length
  that should be a constant color before decreasing.}

  \item{grdt_clr_prop}{The proportion of the gradient that
  should be decreasing. This is a proportion of the
  grdt_decrease_prop and the grdt_start_prop combined.}

  \item{grdt_line_width}{The width of the border line. If
  not specified it defaults to 5 \% of the original width,
  note the gradient's width is thus 90 \%.}

  \item{grdt_clr}{The color of the gradient. It is the
  color that transits into the clr of the arrow.}

  \item{vp}{A Grid viewport object (or NULL).}

  \item{gp}{An object of class \code{gpar}, typically the
  output from a call to the function \code{gpar}.  This is
  basically a list of graphical parameter settings.}

  \item{...}{Passed on to \code{\link{bezierArrowSmpl}}}
}
\value{
\code{grid::gList()} A grob of
\code{\link[grid]{gList}}-type
}
\description{
This is an experimental addition to the original
\code{\link{bezierArrowSmpl}} with the addition of a
gradient in the center of the arrow that fades.
}
\section{Note}{
  The triangle section of the arrow is not currently
  included in the gradient.
}
\examples{
library(grid)
grid.newpage()
arrowGrob <- bezierArrowGradient(x = c(.1,.3,.6,.9),
                                     y = c(0.2, 0.2, 0.9, 0.9))
grid.draw(arrowGrob)
}

