getOutlierAndExtremePoint = function(variable){
  
  resume = summary(variable)
  
  QI = resume[5] - resume[2]
  
  flagExtremePointUp = resume[5] + 3 * QI
  
  flagOutliertUp = resume[5] + 1.5 * QI
  
  
  flagExtremePointDown = resume[5] - 3 * QI
  
  flagOutliertDown = resume[5] - 1.5 * QI
  
  objReturn = matrix(c(flagExtremePointUp, flagExtremePointDown, flagOutliertUp, flagOutliertDown),ncol=4,byrow=TRUE)
  
  colnames(objReturn)  = c("Extreme Point Up", "Extreme Point Down", "Outlier Up", "Outlier Down" )
  
  objReturn = as.table(objReturn)
  
  
  return(objReturn)
}