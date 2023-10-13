# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-2/611_CA_reparar_dataset_3.r")
source("~/dm2023b/src/workflow-2/621_DR_corregir_drifting_3.r")
source("~/dm2023b/src/workflow-2/631_FE_historia_3.r")
source("~/dm2023b/src/workflow-2/641_TS_training_strategy_3.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-2/651_HT_lightgbm_3.r")
source("~/dm2023b/src/workflow-2/661_ZZ_final_3.r")
