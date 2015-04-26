{
MNT savinumerico ("SAVI_MNT");
MNT tempsuperficiekelvin ("TempsupKELVIN");
MNT rahinicial ("Rah");
MNT Zomxy ("Zomxy");
MNT uasterisco ("U_asterisco");
MNT uasteriscoxy ("U_asteriscoxy");
MNT ucem ("U_cem");
MNT Zom ("Zom");


savinumerico = Recupere (Nome = "SAVI_numerico");
tempsuperficiekelvin = Recupere (Nome = "TempSupKelvin");
rahinicial = Novo( Nome = "RahInicial" , ResX = 30 , ResY = 30 , Escala = 50000 );
Zomxy = Novo ( Nome = "Zomxy", ResX = 30 , ResY = 30, Escala = 50000);
uasterisco = Novo ( Nome = "Uasterisco", ResX = 30 , ResY = 30, Escala = 50000);
ucem = Novo ( Nome = "Ucem", ResX = 30 , ResY = 30, Escala = 50000);
Zom = Novo ( Nome = "Zom", ResX = 30 , ResY = 30, Escala = 50000);
uasteriscoxy = Novo ( Nome = "UasteriscoXY", ResX = 30 , ResY = 30, Escala = 50000);

//Fluxo de Calor Sensivel (H)

//----------Condicoes de Atmosfera Neutra-----------

//Comprimento de Rugosidade

h = 3; //Altura media da vegetacao nos arredores da estacao (m)

Zom = 0.12*h;


//Velocidade de friccao

ux = 2; //Velocidade do vento em uma altura Zx (Dados da Estacao)
Zx = 3; //Altura que foi medida a velocidade anterior (Dados da Estacao)
k = 0.41; //Constante de von Karman

uasterisco = (k*ux)/(log(Zx/Zom));


//Velocidade do vento a 100 m //verificar

ucem = (uasterisco)*((log(100/Zom)/k));

//Velocidade de friccao em todos os pixels

//Expressao proposta por Bastiaanssen

Zomxy = exp(-(5.809)+5.62*savinumerico);

uasteriscoxy = (k*ucem)/((log(100/Zomxy)));

//Resistencia Aerodinamica (rah)

Z1 = 0.1;
Z2 = 2;

rahinicial = (log(Z2/Z1))/(uasteriscoxy*k);


//----------Fim das Condicoes de Atmosfera Neutra-----------

}