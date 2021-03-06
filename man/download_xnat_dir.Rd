% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xnat_api.R
\name{download_xnat_dir}
\alias{download_xnat_dir}
\title{Download XNAT directory}
\usage{
download_xnat_dir(conn, ...)
}
\arguments{
\item{conn}{The XNAT connection returned by a \code{xnat_connect} call}

\item{...}{experiment_ID the experiment Id for which we need to download data
scan_type type of image scan
zipped zip the downloaded result
verbose Should progress be added to download?
error Should function error if download failed?
extract Unzip the result and return the files list (based on scan_type)}
}
\value{
Display path to the downloaded file
}
\description{
Download a full directory of data
}
\examples{
\dontrun{nitrc <- xnat_connect('https://nitrc.org/ir', xnat_name='NITRC')}
\dontrun{download_xnat_dir(nitrc, 
                           experiment_ID='NITRC_IR_E10507',
                           scan_type='T2', 
                           file_dir = tempdir(),
                           extract = TRUE)
}
}
