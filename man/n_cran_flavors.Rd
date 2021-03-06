% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cran_flavors.R
\name{n_cran_flavors}
\alias{n_cran_flavors}
\title{The number of CRAN flavors}
\usage{
n_cran_flavors(
  use_cache = getOption("foghorn.use_cache", TRUE),
  force_default = getOption("foghorn.force_default", FALSE),
  n_flavors = getOption("foghorn.n_flavors", 14L)
)
}
\arguments{
\item{use_cache}{Should the value for the number of flavors be read to/
written from the cache? (default: \code{TRUE})}

\item{force_default}{Should the default value be used? (default: \code{FALSE}).
When \code{TRUE}, the number of flavors is read from the Internet.}

\item{n_flavors}{What is the default number of flavors? (default: \code{14L})}
}
\value{
The number of CRAN check flavors (as an integer).
}
\description{
The CRAN flavors, the systems on which CRAN tests all packages regularly,
are listed \url{https://cran.r-project.org/web/checks/check_flavors.html}. To
get the correct results, foghorn needs to know how many flavors CRAN uses.
This function reads the number of flavors that CRAN currently uses, and
caches it (per session, in the \code{tempdir()} folder). Arguments control
caching, fall back, and default values.
}
\details{
The default values for the arguments are read from options. Given that
\code{n_cran_flavors} function is relied on internally to provide accurate
information to the user, using options allows you to control how the
function behaves directly. In general, the default values should not be
changed. They are provided in case you have issues connecting to the web
page listing the number of flavors, or you do not want to use caching.

The options can be set:
\itemize{
\item by session, using, for instance,\code{options("foghorn.use_cache" = FALSE)}.
\item permanently, by adding \code{options("foghorn.use_cache" = FALSE)} in your
\code{.Rprofile}.
\item for a specific call, using the \code{withr} package:
\code{withr::with_options(foghorn.use_cache = FALSE,  ...)}.
}
}
