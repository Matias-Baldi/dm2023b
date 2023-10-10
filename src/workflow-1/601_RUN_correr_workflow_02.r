# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-1/611_CA_reparar_dataset_2.r")
source("~/dm2023b/src/workflow-1/621_DR_corregir_drifting_2.r")
source("~/dm2023b/src/workflow-1/631_FE_historia_2.r")
source("~/dm2023b/src/workflow-1/641_TS_training_strategy_2.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-1/651_HT_lightgbm_2.r")
source("~/dm2023b/src/workflow-1/661_ZZ_final_2.r")
