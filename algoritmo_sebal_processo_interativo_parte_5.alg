{

MNT Rn, Rnquente ("Rn_MNT");
MNT G, Gquente ("G");
MNT dtxy ,dtquente, dtsoma, dtmedia, xyfrio, xyquente, xysoma, x2frio, x2quente, x2soma ("Interacoes");
MNT tempsuperficiekelvin, tempfrio, tempquente, tempsoma, tempmedia ("TempsupKELVIN");
MNT a, b ("Interacoes");
MNT uasteriscocorrigido, uasteriscoxy ("U_asteriscoxy");
MNT rahcorrigido ("Rah");
MNT rahcorrigidoquente ("Interacoes");
MNT Hxyfim, Hquente ("Interacoes");
MNT Lxy ("Interacoes");
MNT rahinteracao1, rahinteracao2, rahinteracao3, rahinteracao4, rahinteracao5, rahinteracao6, rahinteracao7, rahinteracao8, rahinteracao9, rahinteracao10 ("Interacoes");
MNT x100, x2, x01 ("Interacoes");
MNT psi100, psi2, psi01 ("Interacoes");
MNT ucem ("U_cem");
MNT Zomxy ("Zomxy");


Rn = Recupere (Nome = "Rn_numerico");
Rnquente = Recupere (Nome = "Rn_quente"); 
G = Recupere (Nome = "G");
Gquente = Recupere (Nome = "G_quente");
uasteriscoxy = Recupere (Nome = "UasteriscoXY");
tempsuperficiekelvin = Recupere (Nome = "TempSupKelvin");
ucem = Recupere( Nome = "Ucem" );
Zomxy= Recupere (Nome = "Zomxy" );
rahcorrigido = Recupere (Nome = "rahcorrigido");
uasteriscocorrigido = Recupere (Nome = "Uasterisco_corrigido");
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
rahcorrigidoquente = Novo( Nome = "Rah_quente" , ResX = 30 , ResY = 30 , Escala = 50000 );
Hxyfim = Novo( Nome = "H_xyFIM" , ResX = 30 , ResY = 30 , Escala = 50000 );
Lxy = Novo( Nome = "L_xy" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao1 = Novo( Nome = "Interacao1_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao1 = Recupere( Nome = "Interacao1_Rah");
//rahinteracao2 = Novo( Nome = "Interacao2_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao2 = Recupere( Nome = "Interacao2_Rah");
//rahinteracao3 = Novo( Nome = "Interacao3_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao3 = Recupere( Nome = "Interacao3_Rah");
//rahinteracao4 = Novo( Nome = "Interacao4_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao4 = Recupere( Nome = "Interacao4_Rah");
//rahinteracao5 = Novo( Nome = "Interacao5_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao5 = Recupere( Nome = "Interacao5_Rah");
//rahinteracao6 = Novo( Nome = "Interacao6_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao6 = Recupere( Nome = "Interacao6_Rah");
//rahinteracao7 = Novo( Nome = "Interacao7_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
rahinteracao7 = Recupere( Nome = "Interacao7_Rah");
rahinteracao8 = Novo( Nome = "Interacao8_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao8 = Recupere( Nome = "Interacao8_Rah");
//rahinteracao9 = Novo( Nome = "Interacao9_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao9 = Recupere( Nome = "Interacao9_Rah");
//rahinteracao10 = Novo( Nome = "Interacao10_Rah" , ResX = 30 , ResY = 30 , Escala = 50000 );
//rahinteracao10 = Recupere( Nome = "Interacao10_Rah");
x100 = Novo( Nome = "x100" , ResX = 30 , ResY = 30 , Escala = 50000 );
x2 = Novo( Nome = "x2" , ResX = 30 , ResY = 30 , Escala = 50000 );
x01 = Novo( Nome = "x01" , ResX = 30 , ResY = 30 , Escala = 50000 );
psi100 = Novo( Nome = "psi100" , ResX = 30 , ResY = 30 , Escala = 50000 );
psi2 = Novo( Nome = "psi2" , ResX = 30 , ResY = 30 , Escala = 50000 );
psi01 = Novo( Nome = "psi01" , ResX = 30 , ResY = 30 , Escala = 50000 );



//-----------------------Processo Interativo------------------------------//

//Determinar a localizacao linha/coluna do pixel quente
linhaquente = 881;
colunaquente = 1315;

//Fluxo de Calor Sensivel do Pixel Frio (LEfrio)

Hfrio = 0;

//Valores para a equacao linear do dt

dtfrio = 0;

//Para o dtquente e necessario a espacializacao do valor de rahcorrigido quente

rahcorrigidoquente = rahinteracao7.C == colunaquente && rahinteracao7.L == linhaquente ? rahinteracao7 : 0; //Necessario alterar o nome rahcorrigido por rahinteracao(x) a depender do numero de interacao

//Valores que necessitam ser escritos manualmente

Hquentevar = 417.25299072; //copiar o valor do Hquentevar presente na parte 3
rahcorrigidoquentevar = 2.62111688; //rodar a primeira vez com o valor ficticio acima de 0 e depois subtituir pelos valores encontrado na variavel rahcorrigidoquente

p = 1.15; //densidade do ar
Cp = 1004; //calor especifico do ar a pressao constante

dtquente = (Hquentevar * rahcorrigidoquentevar)/(p*Cp);

//Valores que necessitam ser ecritos manualemente

tempquentevar = 310.42758179; //Copiar os valores de pixel frio e quente ja colocados na parte 3
tempfriovar = 303.85604858; //Copiar os valores de pixel frio e quente ja colocados na parte 3

//Inicio da regressao linear

tempmedia = (tempquentevar + tempfriovar) / 2;

tempsoma = (tempquentevar + tempfriovar);

dtsoma = (dtfrio + dtquente);

dtmedia = (dtfrio + dtquente) / 2;

xyfrio = tempfriovar * dtfrio;

xyquente = tempquentevar * dtquente;

x2frio = tempfriovar^2;

x2quente = tempquentevar^2;

x2soma = x2frio+x2quente;

b = (2 * xyquente - ( tempsoma * dtsoma )) / ((2 * x2soma) - (tempsoma^2));

a = (dtmedia) - (b * tempmedia);

//a = -(597.6685);
//b = 1.9804;

//Diferenca de temperatura espacializada

dtxy = a + (b*tempsuperficiekelvin);

//Fluxo de calor sensivel 

Hxyfim = (p*Cp*dtxy)/(rahinteracao7); //Necessario alterar o nome rahcorrigido por rahinteracao(x) a depender do numero de interacao


//L de Monin Obukhov

k = 0.41; //constante de Von Karman
g = 9.81; // constante gravitacional

Lxy = - ((p * Cp * (uasteriscoxy^3) * tempsuperficiekelvin) / (k * g * Hxyfim));

//---------------------------------------------------------------------------------//
// Correcao da estabilidade atmosferica
 
x100 = ((1-(16*(100/Lxy))))^(0.25);
x2 = (1-(16*(2/Lxy)))^(0.25);
x01 = (1-(16*(0.1/Lxy)))^(0.25);

// Se Lxy>0 Estavel
// Se Lxy<0 Instavel
// Se Lxy=0 Neutra

psi100 = (Lxy > 0) ? -5*(100/Lxy) : (Lxy < 0) ? (2*(log(1+x100))/2) + ((log(1+(x100^2))/2)) - (2*(atan(x100))) + (0.5*PI) : (Lxy==0) ? 0 : 0;
psi2 = (Lxy > 0) ? -5*(2/Lxy) : (Lxy < 0) ? 2*(log(1+(x2^2)/2)) : (Lxy==0) ? 0 : 0;
psi01 = (Lxy > 0) ? -5*(0.1/Lxy) : (Lxy < 0) ? 2*(log(1+(x01^2)/2)) : (Lxy==0) ? 0 : 0;

//U asterisco corrigido
	
k = 0.41; //Constante de von Karman

uasteriscocorrigido = (k*ucem)/(log(100/Zomxy)-psi100);

//Resistencia aerodinamica corrigida

Z1 = 0.1;
Z2 = 2;

rahinteracao8 = ((log(Z2/Z1))-psi2+psi01)/uasteriscocorrigido*k; //Necessario alterar o nome rahinteracao(x) com o numero da interacao rodada
          
}