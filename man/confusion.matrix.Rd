\name{confusion.matrix}
\alias{confusion.matrix}

\title{ Confusion Matrix }
\description{
\code{confusion.matrix} calculates a confusion matrix.

Note: this method will exclude any missing data
}
\usage{
confusion.matrix(obs,pred,threshold=0.5)
}

\arguments{
  \item{obs}{a vector of observed values which must be 0 for absences and 1 for occurrences}
  \item{pred}{a vector of the same length as \code{obs} representing the predicted values.
  Values must be between 0 & 1 prepresenting a likelihood.}
  \item{threshold}{a single threshold value between 0 & 1}
}
\value{
returns a confusion matrix (table) of class 'confusion.matrix' representing counts
of true & false presences and absences.
}
\author{Jeremy VanDerWal \email{jjvanderwal@gmail.com}}
\examples{

#create some data
obs = c(sample(c(0,1),20,replace=TRUE),NA); obs = obs[order(obs)]
pred = runif(length(obs),0,1); pred = pred[order(pred)]

#calculate the confusion matrix
confusion.matrix(obs,pred,threshold=0.5)

}