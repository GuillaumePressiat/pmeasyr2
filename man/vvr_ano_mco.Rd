% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VVR_MCO.R
\name{vvr_ano_mco}
\alias{vvr_ano_mco}
\title{~ VVR - preparer les ano pour valoriser les rsa}
\usage{
vvr_ano_mco(...)
}
\arguments{
\item{p}{Un noyau de paramètres \code{\link{noyau_pmeasyr}}}

\item{con}{Une connexion vers une db contenant les données PMSI}

\item{annee}{Dans le cas d'une con db, préciser l'année en integer sur deux caractères}
}
\value{
Un tibble contenant les variables ano
}
\description{
Importer ou collecter les variables des anohosp out nécessaires pour attribuer le caractère facturable d'un séjour
}
\details{
Deux méthodes sont disponibles : une utilisant l'import avec un noyau pmeasyr (p), l'autre utilisant les rsa stockés
dans une base de données (con)
}
\examples{
\dontrun{
# avec un noyau pmeasyr (importer les donnÃ©es)
p <- noyau_pmeasyr(
  finess   = '750712184',
  annee    = 2000 + 18,
  mois     = 4,
  path     = '~/Documents/data/mco',
  progress = FALSE,
  n_max    = Inf,
  lib      = FALSE,
  tolower_names = TRUE)

vano <- vvr_ano_mco(p)

# depuis une base de donnÃ©es (collecter les donnÃ©es)
dbdir <- "~/Documents/data/monetdb"
con <- src_monetdblite(dbdir)

vano <- vvr_ano_mco(con, 18)
}

}
\seealso{
\code{\link{epmsi_mco_sv}}, \code{\link{vvr_rsa}}, \code{\link{vvr_mco}}
}
\author{
G. Pressiat
}
