{

MNT Rn, Rnquente ("Rn_MNT");
MNT G, Gquente ("G");
MNT dtxy ,dtquente, dtsoma, dtmedia, xyfrio, xyquente, xysoma, x2frio, x2quente, x2soma ("Dt");
MNT tempsuperficiekelvin, tempfrio, tempquente, tempsoma, tempmedia ("TempsupKELVIN");
MNT a, b ("Valor_regressao");
MNT uasteriscocorrigido, uasteriscoxy ("U_asteriscoxy");
MNT rahinicial, rahquente, rahcorrigido ("Rah");
MNT Hxy, Hquente ("H");
MNT Lxy ("Lxy");


Rn = Recupere (Nome = "Rn_numerico");
G = Recupere (Nome = "G");
uasteriscoxy = Recupere (Nome = "UasteriscoXY");
rahinicial = Recupere (Nome = "RahInicial");
tempsuperficiekelvin = Recupere (Nome = "TempSupKelvin");
dtquente = Novo( Nome = "dt_quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
dtxy = Novo( Nome = "dt_xy" , ResX = 30 , ResY = 30 , Escala = 50000 );
dtsoma = Novo( Nome = "dt_soma" , ResX = 30 , ResY = 30 , Escala = 50000 );
dtmedia = Novo( Nome = "dt_media" , ResX = 30 , ResY = 30 , Escala = 50000 );
xyfrio = Novo( Nome = "xy_frio" , ResX = 30 , ResY = 30 , Escala = 50000 );
xyquente = Novo( Nome = "xy_quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
xysoma = Novo( Nome = "xy_soma" , ResX = 30 , ResY = 30 , Escala = 50000 );
x2frio = Novo( Nome = "x2frio" , ResX = 30 , ResY = 30 , Escala = 50000 );
x2quente = Novo( Nome = "x2quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
x2soma = Novo( Nome = "x2soma" , ResX = 30 , ResY = 30 , Escala = 50000 );
a = Novo( Nome = "a" , ResX = 30 , ResY = 30 , Escala = 50000 );
b = Novo( Nome = "b" , ResX = 30 , ResY = 30 , Escala = 50000 );
tempfrio = Novo( Nome = "Temp_frio" , ResX = 30 , ResY = 30 , Escala = 50000 );
tempquente = Novo( Nome = "Temp_quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
tempsoma = Novo( Nome = "Temp_soma" , ResX = 30 , ResY = 30 , Escala = 50000 );
tempmedia = Novo( Nome = "Temp_media" , ResX = 30 , ResY = 30 , Escala = 50000 );
rahquente = Novo( Nome = "Rah_quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
Hquente = Novo( Nome = "H_quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
Rnquente = Novo( Nome = "Rn_quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
Gquente = Novo( Nome = "G_quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
Hxy = Novo( Nome = "H_xy" , ResX = 30 , ResY = 30 , Escala = 50000 );
Lxy = Novo( Nome = "L_xy" , ResX = 30 , ResY = 30 , Escala = 50000 );
uasteriscocorrigido = Novo( Nome = "Uasterisco_Corrigido" , ResX = 30 , ResY = 30 , Escala = 50000 );
rahcorrigido = Novo( Nome = "Rah_corrigido" , ResX = 30 , ResY = 30 , Escala = 50000 );


//Determinar a localizacao linha/coluna do pixel quente
linhaquente = 881;
colunaquente = 1315;

//Determinar a localizacao linha/coluna do pixel frio
linhafria = 1315;
colunafria = 1911;

//Determinando e espacializando Rn do pixel quente

Rnquente = Rn.C == colunaquente && Rn.L == linhaquente ? Rn : 0;

//Determinando e espacializando G do pixel quente

Gquente = G.C == colunaquente && G.L == linhaquente ? G : 0;


//Fluxo de Calor Sensivel do Pixel Frio (LEfrio)

Hfrio = 0;

//Fluxo de Calor Sensivel do Pixel Quente (Hquente)

Hquente = Rnquente - Gquente;

//Valores para a equacao linear do dt

dtfrio = 0;

//Para o dtquente e necessario a espacializacao do valor de rahinicial quente

rahquente = rahinicial.C == colunaquente && rahinicial.L == linhaquente ? rahinicial : 0;

//Valores que necessitam ser escritos manualmente
Hquentevar = 417.25299072; //rodar a primeira vez com o valor ficticio acima de 0, e depois de obter os valores no pixel quente substituir
rahquentevar = 33.32384109; //rodar a primeira vez com o valor ficticio acima de 0, e depois de obter os valores no pixel quente substituir

p = 1.15; //densidade do ar
Cp = 1004; //calor especifico do ar a pressao constante

dtquente = (Hquentevar * rahquentevar)/(p*Cp);

//Temperatura do pixel quente

tempquente = tempsuperficiekelvin.C == colunaquente && tempsuperficiekelvin.L == linhaquente ? tempsuperficiekelvin : 0;

//Temperatura do pixel frio

tempfrio = tempsuperficiekelvin.C == colunafria && tempsuperficiekelvin.L == linhafria ? tempsuperficiekelvin : 0;

//valores da regressao linear

tempquentevar = 310.42758179; //rodar a primeira vez com o valor ficticio acima de 0, e depois de obter os valores no pixel quente substituir
tempfriovar = 303.85604858; //rodar a primeira vez com o valor ficticio acima de 0, e depois de obter os valores no pixel frio substituir


tempmedia = (tempquentevar + tempfriovar) / 2;

tempsoma = (tempquentevar + tempfriovar);

dtsoma = (dtfrio + dtquente);

dtmedia = (dtfrio + dtquente) / 2;

xyfrio = tempfriovar * dtfrio;

xyquente = tempquentevar * dtquente;

x2frio = tempfriovar^2;

x2quente = tempquentevar^2;

x2soma = (x2frio + x2quente);

b = ((2 * xyquente) - (tempsoma * dtsoma)) / ((2 * x2soma) - (tempsoma^2));

a = (dtmedia) - (b * tempmedia);

//a = -363.59954834;
//b = 1.21868348;

//Diferenca de temperatura espacializada

dtxy = a + (b*tempsuperficiekelvin);

//Fluxo de calor sensivel 

Hxy = (p*Cp*dtxy)/(rahinicial);


//L de Monin Obukhov

k = 0.41; //constante de Von Karman
g = 9.81; // constante gravitacional

Lxy = -((p * Cp * (uasteriscoxy^3) * tempsuperficiekelvin) / (k * g * Hxy));

}
