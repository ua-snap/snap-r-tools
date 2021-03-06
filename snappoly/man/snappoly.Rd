% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{package}
\name{snappoly}
\alias{snappoly}
\alias{snappoly-package}
\title{snappoly: Common SNAP geographic polygon units in SpatialPolygonsDataFrame format.}
\description{
The snappoly package contains a collection of spatial polygons maps focused on
Alaska and Canada, including political boundaries, ecological regions, fire management zones,
terrestrial protected areas under jurisdiction and management
of various governmental agencies and more.
}
\details{
snappoly is a member package in the data sector of the SNAPverse.
All maps are in the NAD83 Alaska Albers Equal Area Conic projection for convenience and conformity,
but due to the disparate sources of the maps other attributes are not intended to conform.

There are eight available maps:
\describe{
\item{\code{alaska}}{State of Alaska}
\item{\code{canada}}{Canadian provinces}
\item{\code{ecoreg}}{Alaska ecological regions (ecoregions)}
\item{\code{aklcc}}{Alaska Landscape Conservation Cooperative}
\item{\code{lcc}}{Alaska and Canada Landscape Conservation Cooperative}
\item{\code{cavm}}{Circumpolar Arctic Vegetation (Alaska)}
\item{\code{fmz}}{Alaska Fire Service fire management zones}
\item{\code{tpa}}{Terrestrial protected areas}
}
}
