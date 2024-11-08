% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iccmulti.R
\name{iccmulti}
\alias{iccmulti}
\title{Estimate ICC for nominal or ordinal categorical response data}
\usage{
iccmulti(
  cid,
  y,
  data,
  alpha = 0.05,
  method = c("rm", "mom"),
  binmethod = c("aov", "aovs", "keq", "kpr", "keqs", "kprs", "stab", "ub", "fc", "mak",
    "peq", "pgp", "ppr", "rm", "lin", "sim"),
  ci.type = c("aov", "wal", "fc", "peq", "rm"),
  kappa = 0.45,
  nAGQ = 1,
  M = 1000,
  nowarnings = FALSE
)
}
\arguments{
\item{cid}{Cluster id variable.}

\item{y}{Categorical response variable.}

\item{data}{Dataframe containing 'cid' and 'y'.}

\item{alpha}{Significance level for confidence interval computation. Default is 0.05.}

\item{method}{Method used to estimate categorical ICC. A single method or multiple methods can be specified. Default is both resampling and moments estimators. See iccmult::iccmulti for more details.}

\item{binmethod}{Method used to estimate binary ICC. A single or multiple methods can be specified. By default all 16 methods are returned. See full details in ICCbin::iccbin().}

\item{ci.type}{Type of confidence interval to be computed for binary ICC. By default, all 5 types will be returned See full details in ICCbin::iccbin() for more.}

\item{kappa}{Value of Kappa to be used in computing Stabilized ICC when the binary response method 'stab' is chosen. Default value is 0.45.}

\item{nAGQ}{An integer scaler, as in lme4::glmer(), denoting the number of points per axis for evaluating the adaptive Gauss-Hermite approximation to the log-likelihood. Used when the binary response method 'lin' is chosen. Default value is 1.}

\item{M}{Number of Monte Carlo replicates used in binary ICC computation method 'sim'. Default is 1000.}

\item{nowarnings}{Flag to turn off estimation warnings. Default is False.}
}
\value{
Data frame or list of data frames with single column estimate of ICC, se(ICC), and lower and upper CI bounds.
}
\description{
Estimate ICC for nominal or ordinal categorical response data
}
\examples{
iccdat4 <- rccat(rho=0.15, prop=c(0.15,0.25,0.20,0.40), noc=10, csize=25)
iccmulti(cid=cid, y=y, data=iccdat4)
iccdat3 <- rccat(rho=0.10, prop=c(0.30,0.25,0.45), noc=15, csize=50)
iccmulti(cid=cid, y=y, data=iccdat3)
}
