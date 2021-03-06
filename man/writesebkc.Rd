% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rsebWrite.R
\name{writesebkc}
\alias{writesebkc}
\title{Writing sebkc object to a folder}
\usage{
writesebkc(object, folder = NULL, xy = NULL, overwrite = TRUE)
}
\arguments{
\item{object}{sebkc object}

\item{folder}{Folder the files should be written to.If it is set to NULL,
it is written to the input folder of sebkc object.}

\item{xy}{A dataframe of of xy coordinates in in decimal degrees or 
meters in the order of c(x,y). If it is not set NULL,
 the corresponding values are extracted and written to the folder}

\item{overwrite}{logical whether the file should be over written}
}
\value{
Writes output to a folder
}
\description{
This function writes spatial output of the following functions
\code{\link{sebal}}, \code{\link{sebi}},\code{\link{ssebi}},
\code{\link{wdi}},\code{\link{sebs}},\code{\link{sseb}},
\code{\link{tseb}} and \code{\link{landsat578}}
}
\examples{
\dontrun{
folder=system.file("extdata","stack",package="sebkc")
stack=landsat578(data=folder, welev=362)
writesebkc(stack)
sebaloutput=sebal(folder = folder,welev = 317)
writesebkc(sebaloutput)

}
}

