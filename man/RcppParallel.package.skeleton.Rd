\name{RcppParallel.package.skeleton}
\alias{RcppParallel.package.skeleton}
\title{
Create a skeleton for a new package depending on RcppParallel
}
\description{
	\code{RcppParallel.package.skeleton} automates the creation of 
	a new source package that intends to use features of RcppParallel. 
	
	It is based on the \link[utils]{package.skeleton} function
	which it executes first.
}
\usage{
RcppParallel.package.skeleton(
    name = "anRpackage",
    example_code = TRUE,
    ...
)
}
\arguments{
	\item{name}{The name of your R package.}
	\item{example_code}{If \code{TRUE}, example C++ code using RcppParallel is added to the package.}
	\item{...}{Optional arguments passed to \link[Rcpp]{Rcpp.package.skeleton}.}
}
\details{
	In addition to \link[Rcpp]{Rcpp.package.skeleton} :
	
	The \samp{DESCRIPTION} file gains an Imports line requesting that 
	the package depends on RcppParallel and a LinkingTo line so that the package
	finds RcppParallel header files.
	
	The \samp{NAMESPACE} gains a \code{useDynLib} directive as well
	as an \code{importFrom(RcppParallel, evalCpp} to ensure instantiation of RcppParallel.
	
	The \samp{src} directory is created if it does not exists and 
	a \samp{Makevars} file is added setting the environment variables
	\samp{PKG_LIBS} to accomodate the necessary flags to link with the RcppParallel library. 
	
	If the \code{example_code} argument is set to \code{TRUE}, 
	example files \samp{vector-sum.cpp} is created in the \samp{src} directory.
	\code{Rcpp::compileAttributes()} is then called to generate \code{src/RcppExports.cpp} and
	\code{R/RcppExports.R}. These files are given as an example and should 
	eventually by removed from the generated package.
}
\value{
Nothing, used for its side effects
}
\seealso{
\link[utils]{package.skeleton}
}
\references{
Read the \emph{Writing R Extensions} manual for more details.

Once you have created a \emph{source} package you need to install it:
see the \emph{R Installation and Administration} manual,
\code{\link{INSTALL}} and \code{\link{install.packages}}.
}
\examples{
\dontrun{
# simple package
RcppParallel.package.skeleton( "foobar" )
}
}
\keyword{ programming }

