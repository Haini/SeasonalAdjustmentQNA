# ~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# Saisonbereigigung T0111 Arbeitsvolumen Personen
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~

# T111TS muss geladen sein

# SAL -------------------


vert_PS_SAL <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  vert_A = perTramo(T111TS[, "SAL_PS_W2_A"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE,
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", "AO","AO", "AO", "AO"),
                     usrdef.outliersDate = c("2009-01-01", "2009-07-01",
                                             "2020-01-01", "2020-04-01",
                                             "2020-07-01", "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  vert_BTE = perTramo(T111TS[, "SAL_PS_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "LS", "LS", "AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("1996-01-01", "2009-04-01",
                                               "2009-07-01", "2020-01-01", 
                                               "2020-04-01","2020-07-01", 
                                               "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_C = perTramo(T111TS[, "SAL_PS_W2_C"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS", "LS", "LS", "AO", "AO", "AO", "AO"),
                     usrdef.outliersDate = c("1996-01-01", "2009-04-01", 
                                             "2009-07-01", "2020-01-01", 
                                             "2020-04-01","2020-07-01", 
                                             "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_F = perTramo(T111TS[, "SAL_PS_W2_F"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", "TC", "AO", "AO", "AO", "AO"),
                     usrdef.outliersDate = c("2005-01-01","2006-01-01", "2008-01-01", 
                                             "2020-01-01", "2020-04-01","2020-07-01",
                                             "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_GTI = perTramo(T111TS[, "SAL_PS_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "LS", "AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("2009-01-01", "1999-01-01",
                                               "2020-01-01", "2020-04-01", "2020-07-01",
                                               "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_J = perTramo(T111TS[, "SAL_PS_W2_J"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "LS", "AO", "AO","AO", "AO"),
                     usrdef.outliersDate = c("2006-10-01", "2000-01-01",
                                             "2020-01-01", "2020-04-01",
                                             "2020-07-01", "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_K = perTramo(T111TS[, "SAL_PS_W2_K"], template = "RSA3",
                    # Transformation -------------------------------------------------------
                    transform.function = "Log",
                    # Outliers -------------------------------------------------------------
                    outlier.enabled = FALSE,
                    usrdef.outliersEnabled = TRUE,
                    usrdef.outliersType = c("AO", "AO","AO", "AO"),
                    usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                            "2020-07-01", "2020-10-01"),
                    # Trading Days ---------------------------------------------------------
                    # usrdef.varEnabled = FALSE,
                    # usrdef.var = NA, usrdef.varType = "Calendar",
                    # tradingdays.option = "UserDefined",
                    # Easter ---------------------------------------------------------------
                    # easter.type = NA, easter.duration = 6,
                    # Arima-Model ----------------------------------------------------------
                    automdl.enabled = FALSE, ######
                    arima.p  = 0, arima.d  = 1, arima.q  = 0,
                    arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  vert_L = perTramo(T111TS[, "SAL_PS_W2_L"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO", "AO", "AO","AO", "AO"),
                     usrdef.outliersDate = c("2015-01-01","2020-01-01", "2020-04-01",
                                             "2020-07-01", "2020-10-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 1, arima.bd = 1, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  vert_M_N = perTramo(T111TS[, "SAL_PS_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "Log",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("AO", "AO","AO", "AO"),
                      usrdef.outliersDate = c("2020-01-01", "2020-04-01","2020-07-01", 
                                              "2020-10-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 1, arima.d  = 1, arima.q  = 0, 
                      arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_OTQ = perTramo(T111TS[, "SAL_PS_W2_OTQ"], template = "RSA3", 
                       # Transformation -------------------------------------------------------        
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE,
                       usrdef.outliersType = c("AO", "AO","AO", "AO"),
                       usrdef.outliersDate = c("2020-01-01", "2020-04-01",
                                               "2020-07-01", "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                       arima.bp = 1, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_RTU = perTramo(T111TS[, "SAL_PS_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "AO", "AO","AO", "AO"),
                       usrdef.outliersDate = c("2004-01-01", "2020-01-01", "2020-04-01",
                                               "2020-07-01", "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE,
                       arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE)
  # =====================================================================================
  
)

vert_PS_SAL $run()

T111Adj_PS_SAL <- lapply(vert_PS_SAL$components, function(x){
  x$output$final$series
})


# Verteilung Personen SELF -------------------


vert_PS_SELF <- perHts(
  # Hier wurden AT6 plus Easter identifiziert (Grenzwert)
  vert_A = perTramo(T111TS[, "SELF_PS_W2_A"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE,
                     # usrdef.outliersEnabled = FALSE,
                     # usrdef.outliersType = NA,
                     # usrdef.outliersDate = NA,
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_BTE = perTramo(T111TS[, "SELF_PS_W2_BTE"], template = "RSA3", 
                       # Transformation -------------------------------------------------------
                       transform.function = "Log",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE,
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "LS"),
                       usrdef.outliersDate = c("1996-01-01", "2008-01-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                       arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  vert_C = perTramo(T111TS[, "SELF_PS_W2_C"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "Log",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS", "LS"),
                     usrdef.outliersDate = c("1996-01-01", "2008-01-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 1, arima.d  = 0, arima.q  = 0, 
                     arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  vert_F = perTramo(T111TS[, "SELF_PS_W2_F"], template = "RSA3",
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS"),
                     usrdef.outliersDate = c("1996-01-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = FALSE),
  # ====================================================================================
  vert_GTI = perTramo(T111TS[, "SELF_PS_W2_GTI"] , template = "RSA3",
                       # Transformation -------------------------------------------------------
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "AO", "AO", "AO", "AO"),
                       usrdef.outliersDate = c("1996-01-01","2020-01-01", "2020-04-01",
                                               "2020-07-01", "2020-10-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # ====================================================================================
  vert_J = perTramo(T111TS[, "SELF_PS_W2_J"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("AO"),
                     usrdef.outliersDate = c("2001-01-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     #            tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, 
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  vert_K = perTramo(T111TS[, "SELF_PS_W2_K"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS", "LS", "LS"),
                     usrdef.outliersDate = c("1995-10-01", "1995-04-01",
                                             "2010-01-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 0, 
                     arima.bp = 0, arima.bd = 0, arima.bq = 0, arima.mu = FALSE),
  # =====================================================================================
  vert_L = perTramo(T111TS[, "SELF_PS_W2_L"], template = "RSA3", 
                     # Transformation -------------------------------------------------------
                     transform.function = "None",
                     # Outliers -------------------------------------------------------------
                     outlier.enabled = FALSE, 
                     usrdef.outliersEnabled = TRUE, 
                     usrdef.outliersType = c("LS", "LS"),
                     usrdef.outliersDate = c("2005-01-01", "2003-01-01"),
                     # Trading Days ---------------------------------------------------------
                     # usrdef.varEnabled = FALSE, 
                     # usrdef.var = NA, usrdef.varType = "Calendar", 
                     # tradingdays.option = "UserDefined",
                     # Easter ---------------------------------------------------------------
                     # easter.type = NA, easter.duration = 6,
                     # Arima-Model ----------------------------------------------------------
                     automdl.enabled = FALSE, ######
                     arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                     arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  vert_M_N = perTramo(T111TS[, "SELF_PS_W2_M_N"], template = "RSA3", 
                      # Transformation -------------------------------------------------------
                      transform.function = "None",
                      # Outliers -------------------------------------------------------------
                      outlier.enabled = FALSE, 
                      usrdef.outliersEnabled = TRUE, 
                      usrdef.outliersType = c("TC"),
                      usrdef.outliersDate = c("1995-10-01"),
                      # Trading Days ---------------------------------------------------------
                      # usrdef.varEnabled = FALSE, 
                      # usrdef.var = NA, usrdef.varType = "Calendar", 
                      # tradingdays.option = "UserDefined",
                      # Easter ---------------------------------------------------------------
                      # easter.type = NA, easter.duration = 6,
                      # Arima-Model ----------------------------------------------------------
                      automdl.enabled = FALSE,
                      arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                      arima.bp = 1, arima.bd = 0, arima.bq = 1, arima.mu = FALSE),
  # =====================================================================================
  vert_OTQ = perTramo(T111TS[, "SELF_PS_W2_OTQ"], template = "RSA3", 
                       # Transformation -------------------------------------------------------        
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       usrdef.outliersEnabled = TRUE, 
                       usrdef.outliersType = c("LS", "AO", "LS", "LS"),
                       usrdef.outliersDate = c("1996-01-01", "2010-10-01",
                                               "2009-01-01", "2003-01-01"),
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE, 
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 1, arima.bd = 0, arima.bq = 0, arima.mu = TRUE),
  # =====================================================================================
  vert_RTU = perTramo(T111TS[, "SELF_PS_W2_RTU"], template = "RSA3", 
                       # Transformation -------------------------------------------------------  
                       transform.function = "None",
                       # Outliers -------------------------------------------------------------
                       outlier.enabled = FALSE, 
                       # usrdef.outliersEnabled = FALSE,
                       # usrdef.outliersType = NA,
                       # usrdef.outliersDate = NA,
                       # Trading Days ---------------------------------------------------------
                       # usrdef.varEnabled = FALSE, 
                       # usrdef.var = NA, usrdef.varType = "Calendar", 
                       # tradingdays.option = "UserDefined",
                       # Easter ---------------------------------------------------------------
                       # easter.type = NA, easter.duration = 6,
                       # Arima-Model ----------------------------------------------------------
                       automdl.enabled = FALSE,
                       arima.p  = 0, arima.d  = 1, arima.q  = 1, 
                       arima.bp = 0, arima.bd = 1, arima.bq = 1, arima.mu = TRUE)
  # =====================================================================================
  
)

vert_PS_SELF $run()


T111Adj_PS_SELF <- lapply(vert_PS_SELF$components, function(x){
  x$output$final$series
})