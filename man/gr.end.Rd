% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gUtils.R
\name{gr.end}
\alias{gr.end}
\title{Get the right ends of a \code{GRanges}}
\usage{
gr.end(x, width = 1, force = FALSE, ignore.strand = TRUE, clip = TRUE)
}
\arguments{
\item{x}{\code{GRanges} object to operate on}

\item{width}{integer Specify subranges of greater width including the start of the range. (default = 1)}

\item{force}{boolean Allows returned \code{GRanges} to have ranges outside of its \code{Seqinfo} bounds. (default = FALSE)}

\item{ignore.strand}{boolean If set to \code{FALSE}, will extend '-' strands from the other direction. (default = TRUE)}

\item{clip}{boolean Trims returned \code{GRanges} so that it does not extend beyond bounds of the input (default = TRUE)}
}
\value{
GRanges object of width = \code{width} ranges representing end of each genomic range in the input.
}
\description{
Alternative to \code{GenomicRanges::flank} that will provide end positions *within* intervals
}
\examples{
gr.end(example_dnase, width=200, clip=TRUE)
}
\author{
Marcin Imielinski
}
