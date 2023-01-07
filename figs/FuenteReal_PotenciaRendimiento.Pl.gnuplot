set table "FuenteReal_PotenciaRendimiento.Pl.table"; set format "%.5f"
set samples 1000.0; plot [x=0:8] 10 * 4 * x/(1 + x)**2
