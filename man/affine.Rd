% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/affine.R
\name{isAffine}
\alias{affine}
\alias{asAffine}
\alias{isAffine}
\alias{print.affine}
\title{Create, test for and print affine matrices}
\usage{
isAffine(object, strict = FALSE)

asAffine(object, source = NULL, target = NULL)

\method{print}{affine}(x, ...)
}
\arguments{
\item{object}{An R object.}

\item{strict}{If \code{TRUE}, this function just tests whether the object is
of class \code{"affine"}. Otherwise it also tests for an affine-like 4x4
matrix.}

\item{source, target}{Source and target images for the transformation.}

\item{x}{An \code{"affine"} object.}

\item{...}{Additional parameters to methods. Currently unused.}
}
\value{
A logical value, which is \code{TRUE} if \code{object} appears to be
  an affine matrix.
}
\description{
\code{isAffine} returns a logical value indicating whether its argument is,
or resembles, a 4x4 affine matrix. \code{asAffine} converts a suitable
matrix to the affine class, attaching the source and target images as
attributes. Affine transformations are a class of linear transformations
which preserve points, straight lines and planes, and may consist of a
combination of rotation, translation, scale and skew operations.
}
\details{
NiftyReg's convention is for affine matrices to transform world coordinates
(in the sense of \code{voxelToWorld}) from TARGET to SOURCE space, although
transforms are logically applied the other way.
}
\note{
2D affines are a subset of 3D affines, and are stored in a 4x4 matrix
  for internal consistency, even though a 3x3 matrix would suffice.
}
\author{
Jon Clayden <code@clayden.org>
}

