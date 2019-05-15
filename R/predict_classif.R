#' Predcit function for classif tasks made in Python
#' @param model - trained model that predcitions we are look for
#' @param newdata - test dataset
#'
#' @export
#'


predict_classif <- function(model, newdata) {
  model$predict_proba(newdata)[, 2]
}
