% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spm.r
\name{spmproj}
\alias{spmproj}
\title{spmproj calculates biomass trajectories for replicate parameters}
\usage{
spmproj(
  parmat,
  indat,
  constC,
  projyr = 10,
  year = "year",
  cats = "catch",
  index = "cpue"
)
}
\arguments{
\item{parmat}{a matrix of N parameter vectors obtained from either 
asymptotic errors (parasympt), bootstraps (bootpar), or from a
Bayesian analysis (parsbayes).}

\item{indat}{the fisheries data used during model fitting}

\item{constC}{the constant catch level imposed in the projection years}

\item{projyr}{the number of years of projection, default = 10}

\item{year}{name of the year variable within indat, default=year}

\item{cats}{name of the catch variable within indat, default=catch}

\item{index}{name of the cpue variable within indat, default=cpue}
}
\value{
an N x years matrix of biomass trajectories, one for each
    parameter vector
}
\description{
spmproj uses a matrix of parameter vectors to project 
    surplus production dynamics forward including future projection 
    years under constant catches. This is used to conduct risk 
    assessments for different constant catches allowing a search for
    optimum future catch levels.
}
\examples{
  data(abdat)
  schf <- FALSE
  param <- log(c(r=0.3,K=11500,Binit=3300,sigma=0.05))
  bestmod <- nlm(f=negLL1,p=param,funk=simpspm,logobs=log(abdat$cpue),
                 indat=abdat,typsize=magnitude(param),iterlim=1000,
                 schaefer=schf,hessian = TRUE)
  out <- spm(bestmod$estimate,indat=abdat,schaefer=schf)
  matpar <- parasympt(bestmod,10) # normally use 1000 or more
  projs <- spmproj(matpar,abdat,projyr=10,constC=900)
  plotproj(projs,out)
}
