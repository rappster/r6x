% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/r6x.r
\docType{package}
\name{r6x}
\alias{r6x}
\alias{r6x-package}
\title{Extensions to the R6 package}
\description{
Facilitates the creation of formal S4 equivalents for R6 classes
and provides a base layer object for inheritance featuring basic methods
such as `.getFieldNames()` and `.getMethodNames()` that seem to be
required often.
}
\section{Core functions/methods of this package}{

 \itemize{
   \item{\code{\link[r6x]{withFormalClass}}: }{

     Defines an R6 class with the side effect of buffering the
     respective S3 class information that can later be used by
     \code{\link[r6x]{formalizeClasses}} in order to register formal S4
     equivalents.
   }
   \item{\code{\link[r6x]{formalizeClassses}}: }{

     Takes the information produced by all calls to
     \code{\link[r6x]{withFormalClass}} in order use it accordinly in
     calls to \code{\link[methods]{setOldClass}} in order to register
     formal S4 equivalents of all R6 classes that have been defined via
     \code{\link[r6x]{withFormalClass}}.
   }
}
}

\section{The core classes of this package}{

 \itemize{
   \item{\code{\link[r6x]{Object}}: }{

     Base layer class for inheritance providing numerous methods that
     seem to be often required.
     Selected examples:
     \itemize{
       \item{\code{.getComponentNames}: } {
         List the names of all components (regardless if field or method)
       }
       \item{\code{.getComponentClasses}: } {
         List the classes of all components (regardless if field or method)
       }
       \item{\code{.getFieldNames}: } {
         List all field names
       }
       \item{\code{.getMethodNames}: } {
         List all method names
       }
       \item{\code{.getField}: } {
         Internal getter method with validation options (e.g. name)
       }
       \item{\code{.setField}: } {
         Internal setter method with validation options (e.g. name, type)
       }
       \item{\code{.message}: } {
         Method for signaling messages in a standardized format
       }
       \item{\code{.warning}: } {
         Method for signaling warnings in a standardized format
       }
       \item{\code{.error}: } {
         Method for signaling errors in a standardized format
       }
     }
   }
}
}
\author{
Janko Thyson \email{janko.thyson@gmail.com}
}
\references{
\url{http://github.com/rappster/r6x}
}

