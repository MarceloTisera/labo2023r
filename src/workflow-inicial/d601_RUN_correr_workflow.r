# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos

source("~/labo2023r/src/workflow-inicial/d641_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023r/src/workflow-inicial/d651_HT_lightgbm.r")
source("~/labo2023r/src/workflow-inicial/d661_ZZ_final.r")