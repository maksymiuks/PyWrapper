#' Predcit function for regr tasks made in Python
#' @param model - trained model that predcitions we are look for
#' @param newdata - test dataset
#'
#' @export
#'


predict_regr <- function(model, newdata) {
  model$predict(newdata)
}
