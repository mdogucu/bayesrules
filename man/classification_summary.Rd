% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classification_summary.R
\name{classification_summary}
\alias{classification_summary}
\title{Posterior Classification Summaries}
\usage{
classification_summary(model, data, cutoff = 0.5)
}
\arguments{
\item{model}{an rstanreg model object with binary y}

\item{data}{data frame including the variables in the model, both response y and predictors x}

\item{cutoff}{probability cutoff to classify a new case as positive (0.5 is the default)}
}
\value{
a list
}
\description{
Given a set of observed data including a binary response variable y 
and an rstanreg model of y, 
this function returns summaries of the model's posterior classification quality.
These summaries include a confusion matrix as well as estimates of the model's
sensitivity, specificity, and overall accuracy.
}
\examples{
x <- rnorm(20)
z <- 3*x
prob <- 1/(1+exp(-z))
y <- rbinom(20, 1, prob)
example_data <- data.frame(x = x, y = y)
example_model <- rstanarm::stan_glm(y ~ x, data = example_data, family = binomial)
classification_summary(model = example_model, data = example_data, cutoff = 0.5)                   
}
