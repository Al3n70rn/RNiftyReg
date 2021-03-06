% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xform.R
\name{voxelToWorld}
\alias{voxelToWorld}
\alias{worldToVoxel}
\title{Transform points between voxel and ``world'' coordinates}
\usage{
voxelToWorld(points, image, simple = FALSE, ...)

worldToVoxel(points, image, simple = FALSE, ...)
}
\arguments{
\item{points}{A vector giving the coordinates of a point, or a matrix with
one point per row.}

\item{image}{The image in whose space the points are given.}

\item{simple}{A logical value: if \code{TRUE} then the transformation is
performed simply by rescaling the points according to the voxel dimensions
recorded in the \code{image}. Otherwise the full xform matrix is used.}

\item{...}{Additional arguments to \code{\link{xform}}.}
}
\value{
A vector or matrix of transformed points.
}
\description{
These functions are used to transform points from dimensionless pixel or
voxel coordinates to ``real-world'' coordinates, typically in millimetres,
and back. Actual pixel units can be obtained using the
\code{\link{pixunits}} function.
}
\note{
Voxel coordinates are assumed by these functions to use R's indexing
  convention, beginning from 1.
}
\author{
Jon Clayden <code@clayden.org>
}
\seealso{
\code{\link{xform}}, \code{\link{pixdim}}, \code{\link{pixunits}}
}

