{

MNT Rn ("Rn_MNT");
MNT  G ("G");
MNT Hxyfim ("Interacoes");
MNT tempsuperficiekelvin ("TempsupKELVIN");
MNT albedosupnumerico ("AlbedoSUP_MNT");
MNT lambdaET ("Fluxo_CalorLatente");
MNT ETh, lambdaxy ("Evapo_realHoraria");
//MNT LAMBDA, ET24h, Rn24h ("Evapo_realDiaria");


Rn = Recupere ( Nome = "Rn_numerico");
G = Recupere ( Nome = "G");
Hxyfim = Recupere ( Nome = "H_xyFIM");
tempsuperficiekelvin = Recupere ( Nome = "TempSupKelvin");
albedosupnumerico = Recupere ( Nome = "AlbedoSUP_numerico");
lambdaET = Novo( Nome = "LambdaET" , ResX = 30 , ResY = 30 , Escala = 50000 );
ETh = Novo( Nome = "ETh" , ResX = 30 , ResY = 30 , Escala = 50000 );
lambdaxy = Novo( Nome = "Lambdaxy" , ResX = 30 , ResY = 30 , Escala = 50000 );
//LAMBDA = Novo( Nome = "LAMBDA" , ResX = 30 , ResY = 30 , Escala = 50000 );
//ET24h = Novo( Nome = "ET24h" , ResX = 30 , ResY = 30 , Escala = 50000 );
//Rn24h = Novo( Nome = "Rn24h" , ResX = 30 , ResY = 30 , Escala = 50000 );

//Fluxo de Calor Latente (LambdaET)

lambdaET = Rn - G - Hxyfim;


//Evapotranspiracao Real Horario

lambdaxy = (2.501 - (0.00236) * (tempsuperficiekelvin - (273.16)))*(10^6);

ETh = 3600 * (lambdaET/lambdaxy);

//Evapotranspiracao Real Diaria

//LAMBDA = lambdaET / (Rn - G);

//Rn24h = (1 - (albedosupnumerico)) * 





}