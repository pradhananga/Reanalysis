% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WATCHgetWFDarealPrecip.R
\name{WATCHgetWFDarealPrecip}
\alias{WATCHgetWFDarealPrecip}
\title{Extracts the WATCH WFD precipitation for a specified domain}
\usage{
WATCHgetWFDarealPrecip(ncdfFile = "", minLon = 0, maxLon = 0,
  minLat = 0, maxLat = 0, logfile = "")
}
\arguments{
\item{ncdfFile}{Required. NetCDF file containing monthly WATCH WFD precipitation (rainfall or snowfall). The file name must begin with the precipitation type (i.e. \option{Rainf} or \option{Snowf} and must end with the year and month, as in \option{190101}.}

\item{minLon}{Required. Minimum longitude for area to be extracted.}

\item{maxLon}{Required. Maximum longitude for area to be extracted.}

\item{minLat}{Required. Minimum latitude for area to be extracted.}

\item{maxLat}{Required. Maximum latitude for area to be extracted.}

\item{logfile}{Optional. Name of the file to be used for logging the action. Normally not used}
}
\value{
If successful, returns a data frame containing all of the precipitation values. The rows contain the values for each location for all time intervals. The first 2 columns contain the Longitude and Latitude, respectively for each location within the domain. The following columns contain the precipitation rate for each time interval. The names of these columns are the time intervals, e.g. \option{1901-01-01_00:00} (note the underscore) in GMT.
}
\description{
Extacts the WATCH WFD precipitation (rainfall or snowfall) from a monthly netCDF file for a specified domain.
}
\examples{
\dontrun{
monthly_rain <- WATCHgetWFDarealPrecip('Rainf_WFD_CRU_190101.nc',
 minLon=-105, maxLon=-95, minLat = 49, maxLat = 56)}
}
\author{
Kevin Shook
}
