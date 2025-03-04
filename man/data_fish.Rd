% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_fish.R
\docType{data}
\name{data_fish}
\alias{data_fish}
\title{Fish survey data collected by NEON}
\format{
A data frame (also a tibble) with the following columns:
\itemize{
\item \code{location_id}: Location id.
\item \code{siteID}: NEON site code.
\item \code{plotID}: Plot identifier (NEON site code_XXX).
\item \code{pointID}: Sampling point identifier.
\item \code{unique_sample_id}: Identity of unique samples, usually it has location and date information.
\item \code{observation_datetime}: Observation date and time.
\item \code{taxon_id}: Accepted species code, based on one or more sources.
\item \code{taxon_name}:	Scientific name, associated with the taxonID. This is the name
of the lowest level taxonomic rank that can be determined.
\item \code{taxon_rank}: The lowest level taxonomic rank that can be determined for the individual or specimen.
\item \code{variable_name}: The variable name(s) represented by the \code{value} column.
\item \code{value}: Value of the variable(s) specified by \code{variable_name}.
\item \code{unit}: Unit of the values in the \code{value} column.
\item \code{reachID}: An identifier for the set of information associated with the reach.
\item \code{samplerType}: Type of sampler used to collect the sample.
\item \code{fixedRandomReach}:	An indication of whether the reach is fixed or random.
\item \code{measuredReachLength}:	The length of the reach as measured by the technicians when the reach was established (meters).
\item \code{efTime}: Operational time of the electrofisher (second).
\item \code{passStartTime}: The start time of the pass.
\item \code{passEndTime}:	The end time of the pass.
\item \code{mean_efishtime}: Average efish time (in second).
\item \code{release}:	Version of data release by NEON.
\item \code{netSetTime}: Time the net was set.
\item \code{netEndTime}: Time the net was pulled.
\item \code{netDeploymentTime}:	Total time of deployment of the net (hours).
\item \code{netLength}: Length of the net (meter).
\item \code{netDepth}:	Deployment depth of the net (meter).
\item \code{efTime2}:	Operational time of the electrofisher for the second electrofisher (second).
\item \code{latitude}: The geographic latitude (in decimal degrees, WGS84) of the geographic center of the reference area.
\item \code{longitude}: The geographic longitude (in decimal degrees, WGS84) of the geographic center of the reference area.
\item \code{elevation}: Elevation (in meters) above sea level.
}
}
\source{
\url{https://data.neonscience.org}; https://data.neonscience.org/data-products/DP1.20107.001#collectionAndProcessing
#' @referencesJensen, Jensen, B., S. Parker, and C. Scott. 2017. Neon user guide to fish electrofishing, gill netting, and fyke netting counts (NEON.DP1.20107). NEON, National Ecological Observatory Network, Boulder, CO, USA.
}
\usage{
data_fish
}
\description{
This dataset was derived from \href{https://data.neonscience.org}{NEON data portal} with data product ID 'DP1.20107.001'. Details about this data product can be found at \url{https://data.neonscience.org/data-products/DP1.20107.001}.
Sampling methods and the design are detailed here: https://www.neonscience.org/data-collection/fish and https://www.neonscience.org/observatory/observatory-blog/one-fish-two-fish-learn-how-neon-samples-fish
We downloaded all fish data (i.e., fsh_perPass, fsh_fieldData, fsh_bulkCount, fsh_perFish), including the complete taxon table for fish, for both stream and lake sites surveyed via the NEON API. We joined the ‘fsh_perPass’, ‘fsh_fieldData’, and ‘fsh_bulkCount’ datasets to produce a table with bulk-processed data that merged ‘fsh_perPass’, ‘fsh_fieldData’, and ‘fsh_perFish’ to concatenate individual-level data. Finally both individual-level and bulk-processed datasets were appended into a single table. If ‘fsh_bulkCount’ dataset does not have a ‘taxonRank’ column, we added that information based on data stored in ‘scientificName’ column particularly to separate species level identifications. For each finer-resolution taxon in the individual-level dataset, we considered the relative abundance as one since each row represented a single individual fish. Whenever possible, we substituted missing data by cross-referencing other data columns, omitted completely redundant data columns, and retained records with species-level taxonomic resolution. For the appended dataset, we also calculated the relative abundance for each species per sampling reach or segment at a given site. To calculate species-specific catch per unit effort ('catch_per_effort'), we normalized the relative abundance by either average electrofishing time (i.e., ‘efTime’, ‘efTime2’) or trap deployment time (i.e., the difference between ‘netEndTime’ and ‘netSetTime’). In this case, we assumed that size of the traps used, water depths, number of netters used, and the reach lengths (a significant proportion of bouts had reach lengths missing) to be comparable across different sampling reaches and segments.
}
\note{
Details of locations (e.g. latitude/longitude coordinates can be found in \link{neon_location}).
}
\author{
Stephanie Parker, Thilina Surasinghe
}
\keyword{datasets}
