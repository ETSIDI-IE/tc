set table "CUR.exacta.table"; set format "%.5f"
set samples 1000.0; plot [x=-.9:.9] 5/sqrt(1 + 25*x**2 *((2+x)/(1+x))**2);
