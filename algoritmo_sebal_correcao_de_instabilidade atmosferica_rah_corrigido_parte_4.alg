{

MNT uasteriscocorrigido ("U_asteriscoxy");
MNT ucem ("U_cem");
MNT rahcorrigido ("Rah");
MNT Lxy ("Lxy");
MNT x100, x2, x01 ("X");
MNT psi100, psi2, psi01 ("Psi");
MNT Zomxy ("Zomxy");

ucem = Recupere( Nome = "Ucem" );
Lxy = Recupere( Nome = "L_xy" );
Zomxy= Recupere (Nome = "Zomxy" );
uasteriscocorrigido = Novo( Nome = "Uasterisco_corrigido" , ResX = 30 , ResY = 30 , Escala = 50000 );
rahcorrigido = Novo( Nome = "rahcorrigido" , ResX = 30 , ResY = 30 , Escala = 50000 );
x100 = Novo( Nome = "x100" , ResX = 30 , ResY = 30 , Escala = 50000 );
x2 = Novo( Nome = "x2" , ResX = 30 , ResY = 30 , Escala = 50000 );
x01 = Novo( Nome = "x01" , ResX = 30 , ResY = 30 , Escala = 50000 );
psi100 = Novo( Nome = "psi100" , ResX = 30 , ResY = 30 , Escala = 50000 );
psi2 = Novo( Nome = "psi2" , ResX = 30 , ResY = 30 , Escala = 50000 );
psi01 = Novo( Nome = "psi01" , ResX = 30 , ResY = 30 , Escala = 50000 );

// Correcao da estabilidade atmosferica
 
x100 = (1-(16*(100/Lxy)))^(0.25);
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

uasteriscocorrigido = (k*ucem)/((log(100/Zomxy))-(psi100));

//Resistencia aerodinamica corrigida

Z1 = 0.1;
Z2 = 2;

rahcorrigido = ((log(Z2/Z1))-psi2+psi01)/(uasteriscocorrigido*k);


}