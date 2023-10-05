#'@title remove low counts
#'
#'@description remove departments with counts below 5
#'
#'@return department list (character)
#'

remove_low_counts <- function(departments) {
  
  dep_counts <- table(departments)
  filter_list <- names(dep_counts[dep_counts >= 5])
  
  filtered_departments <- departments[departments %in% filter_list]
  
  return(filtered_departments)
}


#' @title Filter data to divisons
#'
#' @description Take full data set and filter to only ONS divsions
#'
#' @param data full dataset
#'
#' @return filtered CARS dataset
#'
#' @export

filter_divisons <- function(data) {
  
  divisons <- data$Q5..Which.directorate.do.you.belong.to.[3:length(data$Q5..Which.directorate.do.you.belong.to.)]
  
  return(divisons)
}

