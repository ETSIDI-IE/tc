set table "FuenteReal_DifPotencia.dP.table"; set format "%.5f"
set samples 1000.0; plot [x=0:8] 10 * (1-x)/(1+x)**3
