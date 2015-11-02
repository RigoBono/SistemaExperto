%Sistema Experto parte prolog
:-dynamic hospital/1.
:-dynamic ingred/2.
:-dynamic bueno_contra/2.
:-dynamic region/2.
:-dynamic es/2.
:-dynamic encuentra/2.
%================================================
% BASE DE CONOCIMIENTO
%================================================

%===============================================================
%INGREDIENTES DE ALIMENTOS
%Se tomará un nombre genérico para cada alimento especificado en el arbol
%===============================================================

ingred(cochayuyo, picante).
ingred(zapallo, picante).
ingred(cebolla, picante).
ingred(acelga, pastelace).
ingred(huevo, pastelace).
ingred(tarwi, espesado).
ingred(carne, espesado).
ingred(tilapia, patarashca).
ingred(platano,patarashca).

ingred(manzana, budin).
ingred(huevo, budin).
ingred(pan, budin).
ingred(harina, budin).
ingred(azucar, budin).
ingred(membrillo, mazamorra).
ingred(maicena, mazamorra).
ingred(azucar, mazamorra).
ingred(camote, camotillo).
ingred(azucar, camotillo).
ingred(huevo, pastecho).
ingred(harina, pastecho).
ingred(choclo, pastecho).
ingred(pasas, pastecho).
ingred(maracuya, helado).
ingred(saborizante, helado).
ingred(aceite, mingado).
ingred(hariyuca, mingado).

ingred(cebada, chijora).
ingred(jora, chijora).
ingred(aguardiente, calientito).
ingred(te, calientito).
ingred(azucar, chuchuhuasi).
ingred(chuchuhua, chuchuhuasi).
ingred(limon, chuchuhuasi).
ingred(azucar, chihigo).
ingred(higo, chihigo).

ingred(zanahoria, aguadito).
ingred(pollo, aguadito).
ingred(arvejas, aguadito).
ingred(habas, chupe).
ingred(queso, chupe).
ingred(arvejas, inchikapi).
ingred(gallina, inchikapi).
ingred(harina, inchikapi).

ingred(huevo, causa).
ingred(anchoveta, causa).
ingred(papa, causa).
ingred(aji, causa).
ingred(tomate, ensalada).
ingred(limon, ensalada).
ingred(huevo, relleno).
ingred(queso, relleno).
ingred(rocoto, relleno).

%===============================================================
%TIPO DE ALIMENTOS
%Se ha hecho una división de acuerdo al tipo de presentación
%===============================================================

es_un_tipo_de(picante, platofondo).
es_un_tipo_de(pastelace, platofondo).
es_un_tipo_de(espesado, platofondo).
es_un_tipo_de(patarashca, platofondo).

es_un_tipo_de(budin, postre).
es_un_tipo_de(mazamorra, postre).
es_un_tipo_de(camotillo, postre).
es_un_tipo_de(pastecho, postre).
es_un_tipo_de(helado, postre).
es_un_tipo_de(mingado, postre).

es_un_tipo_de(chijora, bebida).
es_un_tipo_de(calientito, bebida).
es_un_tipo_de(chuchuhuasi, bebida).
es_un_tipo_de(chihigo, bebida).

es_un_tipo_de(aguadito, sopa).
es_un_tipo_de(chupe, sopa).
es_un_tipo_de(inchikapi, sopa).

es_un_tipo_de(causa, entrada).
es_un_tipo_de(ensalada, entrada).
es_un_tipo_de(relleno, entrada).

%===============================================================
%DIVISIÓN REGIONAL
%Se ha hecho una división de acuerdo a la región
%===============================================================

costa(picante).
costa(pastel).
costa(budin).
costa(mazamorra).
costa(camotillo).
costa(chijora).
costa(aguadito).
costa(causa).
costa(ensalada).

sierra(espesado).
sierra(pastecho).
sierra(calientito).
sierra(chupe).
sierra(relleno).

selva(patarashca).
selva(helado).
selva(mingado).
selva(chuchuhuasi).
selva(chihigo).
selva(inchikapi).


%Mejora en division regional
region(costa,picante).
region(costa,pastel).
region(costa,mazamorra).
region(costa,camotillo).
region(costa,chijora).
region(costa,aguadito).
region(costa,causa).
region(costa,ensalada).

region(sierra,espesado).
region(sierra,pastecho).
region(sierra,calientito).
region(sierra,chupe).
region(sierra,relleno).

region(selva,patarashca).
region(selva,helado).
region(selva,chuchuhuasi).
region(selva,chihigo).
region(selva,inchikapi).







%===============================================================
%BASE CONOCIMIENTO ENFERMEDADES
%Basandonos en los ingredientes buenos y perjudiciales
%===============================================================

bueno_contra(cochayuyo, hipertiroides).
bueno_contra(acelga, estrenimiento).
bueno_contra(pasas, estrenimiento).
bueno_contra(cebolla, gripe).
bueno_contra(tarwi, parasitos).
bueno_contra(tilapia, colesterol).
bueno_contra(manzana, acne).
bueno_contra(membrillo, colesterol).
bueno_contra(membrillo, diabetes).
bueno_contra(maicena, colesterol).
bueno_contra(maicena, diarrea).
bueno_contra(camote, ceguera).
bueno_contra(choclo, acne).
bueno_contra(maracuya, convulsion).
bueno_contra(maracuya, stress).
bueno_contra(hariyuca, diarrea).
bueno_contra(cebada, hemodialisis).
bueno_contra(jora, hipertension).
bueno_contra(te, stress).
bueno_contra(aguardiente, broncoespasmo).
bueno_contra(chuchuhuasi, reumatismo).
bueno_contra(limón, gripe).
bueno_contra(higo, gripe).
bueno_contra(zanahoria, ceguera).
bueno_contra(habas, stress).
bueno_contra(gallina, convalescencia).
bueno_contra(aji, gripe).
bueno_contra(rocoto, gripe).
bueno_contra(anchoveta, artritis).
bueno_contra(anchoveta, migrana).
bueno_contra(tomate, caries).

en_exceso_provoca(huevo, colesterol).
en_exceso_provoca(platano, diabetes).
en_exceso_provoca(carne, artritis).
en_exceso_provoca(aceite, colesterol).
en_exceso_provoca(saborizantes, diabetes).
en_exceso_provoca(azucar, diabetes).

%===============================================================
%BASE CONOCIMIENTO ESPECIALISTAS
%Basandonos en las enfermedades que atiende
%===============================================================

atiende(endocrinologo, hipertiroides).
atiende(gastroenterologo, estrenimiento).
atiende(gastroenterologo, parasitos).
atiende(gastroenterologo, diarrea).
atiende(cardiologo, colesterol).
atiende(cardiologo, diabetes).
atiende(dermatologo, acne).
atiende(oftalmologo, ceguera).
atiende(neurologo, convulsion).
atiende(neurologo, stress).
atiende(neurologo, migrana).
atiende(nefrologo, hemodialisis).
atiende(traumatologo, reumatismo).
atiende(traumatologo, artritis).
atiende(medgeneral, hipertension).
atiende(medgeneral, gripe).
atiende(neumologo, broncoespasmo).
atiende(hematologo, anemia).
atiende(odontologo, caries).

%===============================================================
%BASE CONOCIMIENTO DOCTORES
%Basandonos en las especialidades que atiende
%===============================================================

es(loayza, endocrinologo).
es(contreras, cardiologo).
es(contreras, hematologo).
es(tapia, dermatologo).
es(tapia, oftalmologo).
es(tapia, medgeneral).
es(cardenas, neurologo).
es(diaz, gastroenterologo).
es(diaz, nefrologo).
es(diaz, odontologo).
es(portales, traumatologo).
es(saavedra, neumologo).

%================================================
% BASE DE HECHOS
%================================================

tiene(juan, hipertiroides).
tiene(juan, estrenimiento).
tiene(carolina, parasitos).
tiene(carolina, acne).
tiene(gerardo, colesterol).
tiene(gerardo, diabetes).
tiene(luzmila, ceguera).
tiene(jorge, convulsion).
tiene(patricia, stress).
tiene(patricia, migrana).
tiene(alberto, diarrea).
tiene(maritza, reumatismo).
tiene(maritza, artritis).
tiene(joel, hipertension).
tiene(nancy, gripe).
tiene(lorena, gripe).
tiene(anibal, broncoespasmo).
tiene(luis, anemia).
tiene(luis, caries).
tiene(rafael, convalescencia).

%..................%
hospital(santa_rosa).
hospital(carrion).
hospital(dos_de_mayo).


encuentra(contreras, santa_rosa).
encuentra(cardenas, santa_rosa).
encuentra(portales, santa_rosa).
encuentra(loayza, santa_rosa).
encuentra(tapia, carrion ).
encuentra(loayza, carrion).
encuentra(portales, carrion).
encuentra(saavedra, carrion).
encuentra(saavedra, dos_de_mayo).
encuentra(cardenas, dos_de_mayo).
encuentra(diaz, dos_de_mayo ).

%donde ir  ingreso la enfermedad y me indicara a que hospital debo ir
donde_ir(A,B):-atiende(C,A),es(D,C), encuentra(D,B).

%===============================================================
%01.Alimento a ingerir por ser saludables.
%   Tomaremos el alimento de acuerdo a los ingredientes que contiene
%===============================================================
ali_bueno(W,Z):-tiene(W,Y),bueno_contra(X,Y),ingred(X,Z).
alim_bueno(Y,Xs):-setof(X,Y^ali_bueno(Y,X),Xs).

%===============================================================
%02.Alimento a no ingerir por ser dañinos
%   Tomaremos el alimento de acuerdo a los ingredientes que contiene
%===============================================================
ali_malo(W,Z):-tiene(W,Y),en_exceso_provoca(X,Y),ingred(X,Z).
alim_malo(Y,Xs):-setof(X,Y^ali_malo(Y,X),Xs).



%===============================================================
%03.Alimento que receta especialista
%   Tomaremos el alimento de acuerdo al nombre del especialista
%===============================================================
recetar(V,Z):-atiende(X,W),bueno_contra(Y,W),ingred(Y,Z),es(V,X).
recomienda(Y,Z):-setof(X,Y^recetar(Y,X),Z).

%===============================================================
%04.Alimento que no receta especialista
%   Tomaremos el alimento de acuerdo al nombre del especialista
%===============================================================
no_recetar(V,Z):-atiende(X,W),en_exceso_provoca(Y,W),ingred(Y,Z),es(V,X).
no_recomienda(Y,Z):-setof(X,Y^no_recetar(Y,X),Z).

%===============================================================
%05.Enfermedades que puede tratar un doctor
%   Ingresamos el nombre del doctor, y el sistema nos dice las enfermedades que puede tratar.
%===============================================================
puede_tratar(M,E):-es(M,X),atiende(X,E).
enf_tratada(Y,Z):-setof(X,Y^puede_tratar(Y,X),Z).

%Mejoras.
%Que doctor se te recomienda segun tu enfermedad y cercania a hospital
doctor_recomendado(EnfermoDe,CercaDe,QuienRecomienda):-
	atiende(TipoDoctor,EnfermoDe),
	es(QuienRecomienda,TipoDoctor),
	encuentra(QuienRecomienda,CercaDe).
% Que alimento se recomienda segun la region donde vive y que enfermedad
% tiene
recomiendaR(Region,Enfermedad,AlimentoR):-
	region(Region,AlimentoR),
	ingred(Ingred,AlimentoR),
	bueno_contra(Ingred,Enfermedad).
%Region donde se obtiene el ingrediente que deseas buscar.
regionIngre(Ingre,Region):-
	ingred(Ingre,Alim),
	region(Region,Alim).

%borra la pantalla
borra_Pantalla :- borra_Linea(25).
borra_Linea(1) :- !, nl.
borra_Linea(N) :- nl, N1 is N-1, borra_Linea(N1).

%opcion, parte 1

opcion(Region):-
	Region='costa'->preguntaEnfermedad(Region);
	Region='selva'->preguntaEnfermedad2(Region);
        Region='sierra'->preguntaEnfermedad3(Region).

opcion2costa(Region,Enfermedad,R):-recomiendaR(Region,Enfermedad,R),write('Se te recomienda:'),nl,write(R).

inicio:-borra_Pantalla,
	nl,
	write('Sistema de medicina curativa, se	te recomendara un alimento segun tu region'),
	nl,
	write('En que region vives (costa,selva,sierra)?'),
	read(Region),
	opcion(Region).

preguntaEnfermedad(Region):-
	nl,
	write('Que enfermedad padeces?(hipertiroides,colesterol)'),nl,read(Enfermedad),opcion2costa(Region,Enfermedad,R).

preguntaEnfermedad2(Region):-
	nl,
	write('Que enfermedad padeces?(convulsion,colesterol)'),nl,read(Enfermedad),opcion2costa(Region,Enfermedad,R).

preguntaEnfermedad3(Region):-
	nl,
	write('Que enfermedad padeces?(parasitos,estrenimiento)'),nl,read(Enfermedad),opcion2costa(Region,Enfermedad,R).























