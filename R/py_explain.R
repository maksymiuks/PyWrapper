#' DALEX is powerfull model to explain black-box models. Unfortuantely this tool is dedicated for R. This function creates
#' explainer object from DALEX package using pickle python model
#'
#' @param path - a path to pickle file
#' @param task - specify task, "regr" or "classif"
#' @param data - newdata
#' @param y - responses for newdata
#' @param label - label
#'
#' @importFrom reticulate py_load_object
#' @importFrom DALEX explain
#'
#' @examples
#' library(PyWrapper)
#' explainer <- py_explain("pickle.pkl", "classif", titanic_test, y, "Titanic explainer")
#' DALEX::model_performance(explainer)
#'
#' @export
#'

py_explain <- function(path, task, data = NULL, y = NULL, label = tail(class(model), 1)){
  model <- py_load_object(path, pickle = "pickle")
  if(task == "classif"){
    predict_function = predict_classif
  }
  if(task == "regr"){
    predict_function = predict_regr
  }
  explain(python_scikitlearn_gbm,
          data = data, y = y, label = label,
          predict_function = predict_function)


}
