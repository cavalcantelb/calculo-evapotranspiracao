//Programa LEGAL - Linguagem Espacial para Geoprocessamento Algebrico

{
//Declaracoes


MNT banda1, banda2, banda3, banda4, banda5, banda6, banda7 ("CAT_MNT");
MNT radiancia1, radiancia2, radiancia3, radiancia4, radiancia5, radiancia6, radiancia7 ("Radiancia_MNT");
MNT radianciabase1, radianciabase2, radianciabase3, radianciabase4, radianciabase5, radianciabase6, radianciabase7 ("Radianciabase_MNT");
MNT reflectancia1, reflectancia2, reflectancia3, reflectancia4, reflectancia5, reflectancia7 ("Reflectancia_MNT");
MNT albedotoanumerico ("AlbedoTOA_MNT");
MNT ndvinumerico ("NDVI_MNT");
MNT savinumerico ("SAVI_MNT");
MNT iafnumerico ("IAF_MNT");
MNT albedosupnumerico ("AlbedoSUP_MNT");
MNT epsilonNB ("Emissividade_NB");
MNT epsilon ("Emissividade");
MNT tempsuperficie ("TempSuperficie_MNT");
MNT tempsuperficiekelvin ("TempsupKELVIN");
MNT Rc ("Rc_MNT");
MNT RLemitida ("RLemitida_MNT");
MNT RLincidente ("RLincidente_MNT");
MNT RCincidente ("RCincidente_MNT");
MNT Rn ("Rn_MNT");
MNT epsilonNB1 ("EmissividadeNB_Filtro1");
MNT epsilon1 ("Emissividade_Filtro1");
MNT  G ("G");


//Instanciacoes
banda1 = Recupere (Nome = "TM1");
banda2 = Recupere (Nome = "TM2");
banda3 = Recupere (Nome = "TM3");
banda4 = Recupere (Nome = "TM4");
banda5 = Recupere (Nome = "TM5");
banda6 = Recupere (Nome = "TM6");
banda7 = Recupere (Nome = "TM7");

radiancia1 = Novo( Nome = "TM1_radiancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
radiancia2 = Novo( Nome = "TM2_radiancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
radiancia3 = Novo( Nome = "TM3_radiancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
radiancia4 = Novo( Nome = "TM4_radiancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
radiancia5 = Novo( Nome = "TM5_radiancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
radiancia6 = Novo( Nome = "TM6_radiancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
radiancia7 = Novo( Nome = "TM7_radiancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
radianciabase1 = Novo( Nome = "TM1_radianciabase" , ResX = 30 , ResY = 30 , Escala = 50000 );
radianciabase2 = Novo( Nome = "TM2_radianciabase" , ResX = 30 , ResY = 30 , Escala = 50000 );
radianciabase3 = Novo( Nome = "TM3_radianciabase" , ResX = 30 , ResY = 30 , Escala = 50000 );
radianciabase4 = Novo( Nome = "TM4_radianciabase" , ResX = 30 , ResY = 30 , Escala = 50000 );
radianciabase5 = Novo( Nome = "TM5_radianciabase" , ResX = 30 , ResY = 30 , Escala = 50000 );
radianciabase6 = Novo( Nome = "TM6_radianciabase" , ResX = 30 , ResY = 30 , Escala = 50000 );
radianciabase7 = Novo( Nome = "TM7_radianciabase" , ResX = 30 , ResY = 30 , Escala = 50000 );
reflectancia1 = Novo( Nome = "TM1_reflectancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
reflectancia2 = Novo( Nome = "TM2_reflectancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
reflectancia3 = Novo( Nome = "TM3_reflectancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
reflectancia4 = Novo( Nome = "TM4_reflectancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
reflectancia5 = Novo( Nome = "TM5_reflectancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
reflectancia7 = Novo( Nome = "TM7_reflectancia" , ResX = 30 , ResY = 30 , Escala = 50000 );
albedotoanumerico = Novo( Nome = "AlbedoToa_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
ndvinumerico = Novo( Nome = "NDVI_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
savinumerico = Novo(Nome = "SAVI_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
iafnumerico = Novo( Nome = "IAF_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
albedosupnumerico = Novo( Nome = "AlbedoSUP_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
epsilonNB = Novo( Nome = "Emissividade_NB" , ResX = 30 , ResY = 30 , Escala = 50000 );
epsilon = Novo( Nome = "Emissividade" , ResX = 30 , ResY = 30 , Escala = 50000 );
tempsuperficie = Novo( Nome = "Temperatura_Superficie" , ResX = 30 , ResY = 30 , Escala = 50000 );
tempsuperficiekelvin = Novo( Nome = "TempSupKelvin" , ResX = 30 , ResY = 30 , Escala = 50000 );
Rc = Novo( Nome = "Rc_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
RLemitida = Novo( Nome = "RLemitida_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
RLincidente = Novo( Nome = "RLincidente_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
RCincidente = Novo( Nome = "RCincidente_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
Rn = Novo( Nome = "Rn_numerico" , ResX = 30 , ResY = 30 , Escala = 50000 );
epsilonNB1 = Novo( Nome = "Emissividade_NB1" , ResX = 30 , ResY = 30 , Escala = 50000 );
epsilon1 = Novo( Nome = "Emissividade1" , ResX = 30 , ResY = 30 , Escala = 50000 );
G = Novo( Nome = "G" , ResX = 30 , ResY = 30 , Escala = 50000 );


//Coeficientes

Lmin1 = -1.52; // Valor a depender do ano da imagem
Lmin2 = -2.84; // Valor a depender do ano da imagem
Lmin3 = -1.17; // Valor a depender do ano da imagem
Lmin4 = -1.51; // Valor a depender do ano da imagem
Lmin5 = -0.37; // Valor a depender do ano da imagem
Lmin6 = 1.2378; // Valor a depender do ano da imagem
Lmim7 = -0.15; // Valor a depender do ano da imagem

Lmax1 = 193; // Valor a depender do ano da imagem
Lmax2 = 365; // Valor a depender do ano da imagem
Lmax3 = 264; // Valor a depender do ano da imagem
Lmax4 = 221; // Valor a depender do ano da imagem
Lmax5 = 30.2; // Valor a depender do ano da imagem
Lmax6 = 15.303; // Valor a depender do ano da imagem
Lmax7 = 16.5; // Valor a depender do ano da imagem

pi = 3.141592654;

Esun1 = 1957;
Esun2 = 1826;
Esun3 = 1554;
Esun4 = 1036;
Esun5 = 215.0;
Esun7 = 80.67;

anguloelevacao1 = 61.825; //Valor a depender da imagem
anguloelevacao2 = 61.8317; //Valor a depender da imagem
anguloelevacao3 = 61.8384; //Valor a depender da imagem
anguloelevacao4 = 61.8451; //Valor a depender da imagem
anguloelevacao5 = 61.8641; //Valor a depender da imagem
anguloelevacao7 = 61.8571; //Valor a depender da imagem

teta =((90-((anguloelevacao1+anguloelevacao2+anguloelevacao3+anguloelevacao4+anguloelevacao5+anguloelevacao7)/6))*pi)/180;

/*Tabela da Distancia Terra-Sol (d) em unidades astronomicas

dia     d     dia    d     dia     d     dia     d     dia     d     dia     d
1   0.98331  61  0.99108  121  1.00756  181  1.01665  241  1.00992  301  0.99359
2   0.98330  62  0.99133  122  1.00781  182  1.01667  242  1.00969  302  0.99332
3   0.98330  63  0.99158  123  1.00806  183  1.01668  243  1.00946  303  0.99306
4   0.98330  64  0.99183  124  1.00831  184  1.01670  244  1.00922  304  0.99279
5   0.98330  65  0.99208  125  1.00856  185  1.01670  245  1.00898  305  0.99253
6   0.98332  66  0.99234  126  1.00880  186  1.01670  246  1.00874  306  0.99228
7   0.98333  67  0.99260  127  1.00904  187  1.01670  247  1.00850  307  0.99202
8   0.98335  68  0.99286  128  1.00928  188  1.01669  248  1.00825  308  0.99177
9   0.98338  69  0.99312  129  1.00952  189  1.01668  249  1.00800  309  0.99152
10  0.98341  70  0.99339  130  1.00975  190  1.01666  250  1.00775  310  0.99127
11  0.98345  71  0.99365  131  1.00998  191  1.01664  251  1.00750  311  0.99102
12  0.98349  72  0.99392  132  1.01020  192  1.01661  252  1.00724  312  0.99078
13  0.98354  73  0.99419  133  1.01043  193  1.01658  253  1.00698  313  0.99054
14  0.98359  74  0.99446  134  1.01065  194  1.01655  254  1.00672  314  0.99030
15  0.98365  75  0.99474  135  1.01087  195  1.01650  255  1.00646  315  0.99007
16  0.98371  76  0.99501  136  1.01108  196  1.01646  256  1.00620  316  0.98983
17  0.98378  77  0.99529  137  1.01129  197  1.01641  257  1.00593  317  0.98961
18  0.98385  78  0.99556  138  1.01150  198  1.01635  258  1.00566  318  0.98938
19  0.98393  79  0.99584  139  1.01170  199  1.01629  259  1.00539  319  0.98916
20  0.98401  80  0.99612  140  1.01191  200  1.01623  260  1.00512  320  0.98894
21  0.98410  81  0.99640  141  1.01210  201  1.01616  261  1.00485  321  0.98872
22  0.98419  82  0.99669  142  1.01230  202  1.01609  262  1.00457  322  0.98851
23  0.98428  83  0.99697  143  1.01249  203  1.01601  263  1.00430  323  0.98830
24  0.98439  84  0.99725  144  1.01267  204  1.01592  264  1.00402  324  0.98809
25  0.98449  85  0.99754  145  1.01286  205  1.01584  265  1.00374  325  0.98789
26  0.98460  86  0.99782  146  1.01304  206  1.01575  266  1.00346  326  0.98769
27  0.98472  87  0.99811  147  1.01321  207  1.01565  267  1.00318  327  0.98750
28  0.98484  88  0.99840  148  1.01338  208  1.01555  268  1.00290  328  0.98731
29  0.98496  89  0.99868  149  1.01355  209  1.01544  269  1.00262  329  0.98712
30  0.98509  90  0.99897  150  1.01371  210  1.01533  270  1.00234  330  0.98694
31  0.98523  91  0.99926  151  1.01387  211  1.01522  271  1.00205  331  0.98676
32  0.98536  92  0.99954  152  1.01403  212  1.01510  272  1.00177  332  0.98658
33  0.98551  93  0.99983  153  1.01418  213  1.01497  273  1.00148  333  0.98641
34  0.98565  94  1.00012  154  1.01433  214  1.01485  274  1.00119  334  0.98624
35  0.98580  95  1.00041  155  1.01447  215  1.01471  275  1.00091  335  0.98608
36  0.98596  96  1.00069  156  1.01461  216  1.01458  276  1.00062  336  0.98592
37  0.98612  97  1.00098  157  1.01475  217  1.01444  277  1.00033  337  0.98577
38  0.98628  98  1.00127  158  1.01488  218  1.01429  278  1.00005  338  0.98562
39  0.98645  99  1.00155  159  1.01500  219  1.01414  279  0.99976  339  0.98547
40  0.98662  100 1.00184  160  1.01513  220  1.01399  280  0.99947  340  0.98533
41  0.98680  101 1.00212  161  1.01524  221  1.01383  281  0.99918  341  0.98519
42  0.98698  102 1.00240  162  1.01536  222  1.01367  282  0.99890  342  0.98506
43  0.98717  103 1.00269  163  1.01547  223  1.01351  283  0.99861  343  0.98493
44  0.98735  104 1.00297  164  1.01557  224  1.01334  284  0.99832  344  0.98481
45  0.98755  105 1.00325  165  1.01567  225  1.01317  285  0.99804  345  0.98469
46  0.98774  106 1.00353  166  1.01577  226  1.01299  286  0.99775  346  0.98457
47  0.98794  107 1.00381  167  1.01586  227  1.01281  287  0.99747  347  0.98446
48  0.98814  108 1.00409  168  1.01595  228  1.01263  288  0.99718  348  0.98436
49  0.98835  109 1.00437  169  1.01603  229  1.01244  289  0.99690  349  0.98426
50  0.98856  110 1.00464  170  1.01610  230  1.01225  290  0.99662  350  0.98416
51  0.98877  111 1.00492  171  1.01618  231  1.01205  291  0.99634  351  0.98407
52  0.98899  112 1.00519  172  1.01625  232  1.01186  292  0.99605  352  0.98399
53  0.98921  113 1.00546  173  1.01631  233  1.01165  293  0.99577  353  0.98391
54  0.98944  114 1.00573  174  1.01637  234  1.01145  294  0.99550  354  0.98383
55  0.98966  115 1.00600  175  1.01642  235  1.01124  295  0.99522  355  0.98376
56  0.98989  116 1.00626  176  1.01647  236  1.01103  296  0.99494  356  0.98370
57  0.99012  117 1.00653  177  1.01652  237  1.01081  297  0.99467  357  0.98363
58  0.99036  118 1.00679  178  1.01656  238  1.01060  298  0.99440  358  0.98358
59  0.99060  119 1.00705  179  1.01659  239  1.01037  299  0.99412  359  0.98353
60  0.99084  120 1.00731  180  1.01662  240  1.01015  300  0.99385  360  0.98348
                                                                    361  0.98344
                                                                    362  0.98340
                                                                    363  0.98337
                                                                    364  0.98335
                                                                    365  0.98333
                                                                    366  0.98331

*/

d = 0.98961; //Valor a depender da data imagem


//Operacoes

//Radiancia

//             (Lmax - Lmin)
// Radiancia = ------------- * ND+ Lmin , onde
//                  255

// Lmin = Radiancia espectral correspondente ao ND minimo
// Lmax = Radiancia espectral correspondente ao ND maximo
// ND = Numero digital

radianciabase1 = (((Lmax1-(Lmin1))/255)*banda1)+(Lmin1);
radianciabase2 = (((Lmax2-(Lmin2))/255)*banda2)+(Lmin2);
radianciabase3 = (((Lmax3-(Lmin3))/255)*banda3)+(Lmin3);
radianciabase4 = (((Lmax4-(Lmin4))/255)*banda4)+(Lmin4);
radianciabase5 = (((Lmax5-(Lmin5))/255)*banda5)+(Lmin5);
radianciabase6 = (((Lmax6-(Lmin6))/255)*banda6)+(Lmin6);
radianciabase7 = (((Lmax7-(Lmin7))/255)*banda7)+(Lmin7);

radiancia1 = (radianciabase1 < 0) ? 0 : radianciabase1;
radiancia2 = (radianciabase2 < 0) ? 0 : radianciabase2;
radiancia3 = (radianciabase3 < 0) ? 0 : radianciabase3;
radiancia4 = (radianciabase4 < 0) ? 0 : radianciabase4;
radiancia5 = (radianciabase5 < 0) ? 0 : radianciabase5;
radiancia6 = (radianciabase6 < 0) ? 0 : radianciabase6;
radiancia7 = (radianciabase7 < 0) ? 0 : radianciabase7;


//Reflectancia

//                     pi * Radiancia
// Reflectancia = ------------------------ , onde
//                   Esun * cos(teta)* d 

// d = Distancia Terra-Sol em unidades astroonmicas
// Esun = Irradicao solar media no topo da atmosfera
// teta = Angulo solar zenital em radianos

reflectancia1 = (pi*radiancia1)/(Esun1*(cos(teta))*d);
reflectancia2 = (pi*radiancia2)/(Esun2*(cos(teta))*d);
reflectancia3 = (pi*radiancia3)/(Esun3*(cos(teta))*d);
reflectancia4 = (pi*radiancia4)/(Esun4*(cos(teta))*d);
reflectancia5 = (pi*radiancia5)/(Esun5*(cos(teta))*d);
reflectancia7 = (pi*radiancia7)/(Esun7*(cos(teta))*d);

//Albedo no topo da Atmosfera (Albedo_TOA);


omega1 = 0.298272187;
omega2 = 0.269994239;
omega3 = 0.231488097;
omega4 = 0.154626227;
omega5 = 0.033061133;
omega7 = 0.012558116;

albedotoanumerico = (omega1*reflectancia1)+(omega2*reflectancia2)+(omega3*reflectancia3)+(omega4*reflectancia4)+(omega5*reflectancia5)+(omega7*reflectancia7);

//Albedo  Superficie (Albedo_SUP);

//               aTOA(x,y) - apath _ rad
// asup(x,y) = ---------------------------
//                         t^2

//t = 0.75 + 2 * 10^-5 * z

Apathrad = 0.03;

mediaaltitude = 399.97641409; //Valor a depender da area de estudo

tau = 0.75+(2*(10^-5))*mediaaltitude;

albedosupnumerico = (albedotoanumerico - Apathrad)/(tau^2);


//NDVI

ndvinumerico = (reflectancia4-reflectancia3)/(reflectancia4+reflectancia3);
 

//SAVI

V = 0.5;

savinumerico = (1+V)*((reflectancia4-reflectancia3)/(reflectancia4+reflectancia3+V));


//IAF


iafnumerico = (savinumerico > 0.69) ? -log(((0.69)/0.59))/0.91 : -log(((0.69-savinumerico)/0.59))/0.91;



//Emissividade da Superficie

// eNB = 0.97 + 0.0033 * IAF

// e = 0.95 + 0.01 * IAF

epsilonNB1 = (iafnumerico < 3) ? 0.97 + 0.0033 * iafnumerico : 0.98;

epsilon1 = (iafnumerico < 3) ? 0.95 + 0.01 * iafnumerico : 0.98;


epsilonNB = (ndvinumerico<0 && albedosupnumerico<0.47) ? 0.99 : epsilonNB1;

epsilon = (ndvinumerico<0 && albedosupnumerico<0.47) ? 0.985 : epsilon1;


//Temperatura Superficie

Rp = 0;
tau2 = 1;
Rsky = 0;

Rc = ((radiancia6 - Rp)/tau2)-((1-epsilonNB)*Rsky);

//k1 = 607.76;
//K2 = 1260.56;

tempsuperficie = ((1260.56/(log(((epsilonNB*607.76)/Rc)+1)))- 273);
tempsuperficiekelvin = (1260.56/(log(((epsilonNB*607.76)/Rc)+1)));


//Radiacao de Onda Longa Emitida

sigma = 5.67*10^-8;

RLemitida = epsilon * sigma * (tempsuperficiekelvin^4);


//Radiacao de Onda Longa Incidente

temppixelfrio = 294.93798828; // Valor a depender do pixel escolhido

RLincidente = (1.08*((-log(tau))^0.265))*sigma*((temppixelfrio)^4);


//Radiacao de Onda Curta Incidente

RCincidente = 1367*cos(teta)*d*tau;


//Saldo de Radiacao

Rn = (1-albedosupnumerico) * RCincidente + RLincidente - RLemitida - (1-epsilon) * RLincidente;

//_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ //
// SEGUNDA ETAPA DO SEBAL


//Fluxo de Calor do Solo (G)


G = (ndvinumerico<0) ? 0.3*Rn : ((tempsuperficie/albedosupnumerico)*(0.0038*albedosupnumerico+0.0074*(albedosupnumerico^2))*(1-(0.98*(ndvinumerico^4))))*Rn;

}