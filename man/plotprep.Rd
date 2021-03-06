% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotfuns.R
\name{plotprep}
\alias{plotprep}
\title{plotprep sets up a window and the par values for plotting}
\usage{
plotprep(
  width = 6,
  height = 3.7,
  usefont = 7,
  cex = 0.75,
  newdev = FALSE,
  filename = "",
  resol = 300,
  verbose = FALSE
)
}
\arguments{
\item{width}{defaults to 6 inches = 15.24cm - width of plot}

\item{height}{defaults to 3.7 inches = 9.38cm - height of plot}

\item{usefont}{default=7 (bold Times) 1=sans serif, 2=sans serif bold}

\item{cex}{default=0.75, size of font used for text within the plots}

\item{newdev}{reuse a previously defined graphics device or make a 
new one; default=FALSE}

\item{filename}{default="" ie do not save to a filename. If filename 
is defined it makes that file as a png file with resolution resol}

\item{resol}{resolution of the png file, if defined, default=300}

\item{verbose}{set this to TRUE to turn on the reminder to 
include a graphics.off() command after tsaving a png file. Default=FALSE}
}
\value{
sets up a graphics device, if needed, and resets the default 
    plotting par values. This changes the current plotting options! 
    The original par values are returned invisibly.
}
\description{
plotprep sets up a window and changes the par values 
    for plots. This is simply a utility function to save typing the
    standard syntax. Some of the defaults can be changed. Typing 
    the name without () will provide a template for modification. 
    If different par values are wanted then just include a par 
    statement after plotprep(). Calling plotprep saves the current 
    par settings and returns them invisibly. So to recover the 
    original par settings use oldpar <- plotprep(), and, once you have 
    completed your plot, you can include a par(oldpar) to recover 
    your original settings. The default ratio of width to height 
    approximates the golden ratio = (width x height)/width
}
\examples{
 x <- rnorm(1000,mean=0,sd=1.0)
 plotprep(newdev=TRUE)
 hist(x,breaks=30,main="",col=2)
 oldpar <- plotprep(width=6,height=5,newdev=FALSE)
 par(mfrow = c(2,1)) # can run parset() or change the par settings
 hist(x,breaks=20,main="",col=2)
 hist(x,breaks=30,main="",col=3)
 par(oldpar)
}
