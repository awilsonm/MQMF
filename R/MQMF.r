
#' @importFrom grDevices dev.new dev.cur dev.off png palette
#' @importFrom graphics lines mtext par plot points grid title abline
#' @importFrom graphics arrows axis legend polygon segments layout text
#' @importFrom graphics contour
#' @importFrom stats qnorm rnorm dnorm runif sd quantile optim loess
#' @importFrom stats dmultinom anova ccf lm median nlm dchisq qchisq
#' @importFrom stats pnorm cor
#' @importFrom utils tail head
#' @importFrom MASS kde2d
#' @importFrom mvtnorm rmvnorm
NULL


#' @title MQMF R functions for the New Book
#'
#' @description The MQMF package provides a set of functions that
#'     enable translations into R of the main examples in the book
#'     Modelling and Quantitative Methods in Fisheries 2nd edition.
#'     Try \code{browseVignettes("MQMF")}
#'
#' @references Haddon, M. (2011) Modelling and Quantitative Methods in
#'     Fisheries 2nd edition, Chapman & Hall/ CRC Press, Boca Raton,
#'     449 p.
#'
#' @section Utility functions:
#' \describe{
#'   \item{countones}{ used in apply to count the ones in a vector}
#'   \item{countzeros}{ used in apply to count the zeros in a vector}
#'   \item{countgtzero}{ halves the height of a tall narrow data.frame}
#'   \item{countNAs}{ used in apply to count the NAs in a vector}
#'   \item{countgtone}{ used in apply to count the numbers > 1 in a vector}
#'   \item{freqMean}{ calculates the mean and st dev count data}
#'   \item{getmin}{ find the minimum of a series to help with ylim or xlim}
#'   \item{getmax}{ find the maximum of a series to help with ylim or xlim}
#'   \item{getname}{ extracts the name of a variable as character}
#'   \item{halftable}{ subdivides a table to make it shorter and wider}
#'   \item{magnitude}{ defines the relative size of parameters for use when
#'       using nlm or optim without log-transforming the parameters}
#'   \item{makelabel}{ simplifies combining a name with a vector of numbers
#'       for use as a label or a legend entry}
#'   \item{outfit}{ prints a pretty version of the results from optim, nlm,
#'       or nlminb}
#'   \item{printV}{ prints a vector of numbers vertically rather than 
#'      horizontally}
#'   \item{quants}{ used in apply to estimate quantiles across a vector}
#'   \item{which.closest}{ finds the value in a vector closest to a given
#'       value.}
#' }
#' @section Plotting and printing functions:
#' \describe{
#'   \item{addnorm}{ adds a normal distribution to the output from hist}
#'   \item{addlnorm}{ adds a log-normal distribution to output from hist}
#'   \item{inthist}{ plots a histogram of integer values more precisely
#'      than hist.}
#'   \item{newplot}{ is a bare-bones setup routine to generate a plot
#'      in RStudio using a floating window. If you want to alter the
#'      default par settings then you can use either setplot() to get
#'      suitable syntax or, more simply, use parsyn() which only give
#'      a template for the par syntax}
#'   \item{parset}{ defines the par statement for a single plot}
#'   \item{parsyn}{ types the standard syntax for the par command to
#'      the console}
#'   \item{plot1}{ simplifies the plotting of two variables in a single
#'      plot}
#'   \item{plot2}{ sets up a plotting window for two plots}
#'   \item{plotprep}{ Sets up a window and the par values for a plot.
#'      it checks to see if a graphics device is open and opens a new
#'      one if not. This is simply a utility function to save typing
#'      the standard syntax. Some of the defaults can be changed.
#'      Typing the name without () will provide a template for
#'      modification. If 'windows' is called repeatedly this will
#'      generate a new active graphics device each time leaving the
#'      older ones inactive but present. For quick exploratory plots
#'      this behaviour is not wanted, hence the check if an active
#'      device exists already or not.}
#'   \item{printV}{ returns a vector cbinded to 1:length(invect),
#'      which effectively prints the numbers vertically}
#' }
#' @section Data sets:
#' \describe{
#'   \item{abdat}{a fisheries dataset with a fish data.frame, resilience,
#'        and a spsname.}
#'   \item{fishdat}{A fisheries data set containing fisheries dependent
#'       data, biological parameters and biological properties}
#'   \item{invert}{ Fisheris dependent data, catches, cpue, etc}
#'   \item{kimura}{ Simplified length-at-age data}
#'   \item{LatA}{ A dataset containing the sex, the length and the
#'       estimated age for 576 redfish, (Centroberyx affinis) from
#'       eastern Australia sampled in 1997.}
#'   \item{plaice}{ A dataset containing the fish, glb, props, agedata,
#'       and lendata for North sea plaice. Data taken from Beverton and
#'       Holt (1957). The primary use of this data set is to illustrate
#'       the use of catch curves.}
#'   \item{tigers}{ A dataset from Penn and Caputi, 1986, containing the
#'       stock recruitment data for the fiurst example of fitting a
#'       model to data using Log-Normal Likelihoods}
#'   \item{minnow}{a dataset of weeks vs lengths of minnows for use with
#'       fitting seasonal growth curves and growth curves}
#' }
#' @docType package
#' @name MQMF
NULL



