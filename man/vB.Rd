% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fisheries.r
\name{vB}
\alias{vB}
\title{vB calculates the predicted von Bertalanffy length at age}
\usage{
vB(p, ages)
}
\arguments{
\item{p}{is a vector the first three cells of which are Linf, K, and t0
for the vB curve.}

\item{ages}{is a vector of ages; could be a single number}
}
\value{
a vector of predicted lengths for the vector of ages in 'ages'
}
\description{
vB calculates length at age for the von Bertalanffy curve.
}
\examples{
ages <- seq(0,20,1)   # sigma is ignored here
pars <- c(Linf=50,K=0.3,t0=-1.0,sigma=1.0) # Linf, K, t0, sigma
oldpar <- par(no.readonly=TRUE)
plot1(ages,vB(pars,ages),xlab="Age",ylab="Length",lwd=2)
par(oldpar)
}
