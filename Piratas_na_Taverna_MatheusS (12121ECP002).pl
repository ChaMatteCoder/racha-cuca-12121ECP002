%Piratas na Taverna Problema de L�gica;
%Disponivel em: https://rachacuca.com.br/logica/problemas/piratas-na-taverna/
%Matheus da Silva Fernandes - 12121ECP002;

resolve(Sol) :-
    Sol = taverna(_,_,_,_,_),
    %O pirata com Tapa-olho � o comandante do navio que tem 15 canh�es.
    pirata(A, Sol),
    caracteristica(A, tapa_olho),
    canhoes(A, 15),

    %O Irland�s est� em algum lugar � direita do pirata de Vermelho.
    algum_lugar_a_direita(B, C, Sol),
    nacionalidade(B, irlandes),
    camisa(C, vermelho),

    %O pirata de Bandana est� ao lado do pirata que comanda uma tripula��o de 80 homens.
    ao_lado(D, E, Sol),
    caracteristica(D, bandana),
    tripulacao(E, 80),

    %A maior tripula��o trabalha no navio com a menor quantidade de canh�es.
    pirata(F, Sol),
    tripulacao(F, 160),
    canhoes(F, 10),

    %Na segunda posi��o est� o pirata que enterrou um ba� cheio de Ouro.
    segunda_posicao(G, Sol),
    tesouro(G, ouro),

    %O Espanhol est� de camisa Azul.
    pirata(H, Sol),
    nacionalidade(H, espanhol),
    camisa(H, azul),

    %Na terceira posi��o est� o pirata de camisa Vermelho.
    terceira_posicao(I, Sol),
    camisa(I, vermelho),

    %O pirata que tem um Papagaio est� exatamente � esquerda do pirata que enterrou um ba� cheio de Rubis.
    exatamente_a_esquerda(I2, J, Sol),
    caracteristica(I2, papagaio),
    tesouro(J, rubis),

    %O pirata de Amarelo est� exatamente � esquerda do pirata Irland�s.
    exatamente_a_esquerda(K, L, Sol),
    camisa(K, amarelo),
    nacionalidade(L, irlandes),

    %A tripula��o de 80 homens enterrou um ba� cheio de Esmeraldas.
    pirata(L1, Sol),
    tripulacao(L1, 80),
    tesouro(L1, esmeraldas),
    
    %O pirata Holand�s est� ao lado do pirata que comanda o navio que tem 20 canh�es.
    ao_lado(M, N, Sol),
    nacionalidade(M, holandes),
    canhoes(N, 20),

    %O pirata que comanda o navio com mais canh�es est� exatamente � direita do pirata que enterrou um ba� cheio de Diamantes.
    exatamente_a_direita(O, P, Sol),
    canhoes(O, 30),
    tesouro(P, diamantes),

    %O pirata de Vermelho est� ao lado do pirata que comanda o navio que tem 10 canh�es.
    ao_lado(Q, R, Sol),
    camisa(Q, vermelho),
    canhoes(R, 10),

    %A Bandana est� sendo usada pelo pirata de camisa Amarela.
    pirata(S, Sol),
    caracteristica(S, bandana),
    camisa(S, amarelo),

    %O Franc�s comanda o navio que tem 25 canh�es.
    pirata(T, Sol),
    nacionalidade(T, frances),
    canhoes(T, 25),

    %O pirata de Perna de pau est� ao lado do pirata que lidera uma tripula��o de 140 homens.
    ao_lado(U, V, Sol),
    caracteristica(U, perna_de_pau),
    tripulacao(V, 140),

    %A tripula��o de 100 homens trabalha no navio que tem 25 canh�es.
    pirata(W, Sol),
    tripulacao(W, 100),
    canhoes(W, 25),

    %O Ingl�s est� exatamente � direita do pirata que enterrou um ba� cheio de Prata.
    exatamente_a_direita(X, Y, Sol),
    nacionalidade(X, ingles),
    tesouro(Y, prata),

    %O navio que tem 20 canh�es � comandado pelo pirata de Perna de pau.
    pirata(Z, Sol),
    canhoes(Z, 20),
    caracteristica(Z, perna_de_pau),

    %O pirata Ingl�s est� exatamente � esquerda do pirata que comanda uma tripula��o de 100 homens.
    exatamente_a_esquerda(A1, A2, Sol),
    nacionalidade(A1, ingles),
    tripulacao(A2, 100),

    %O pirata de camiseta Branca est� ao lado do pirata que enterrou um ba� cheio de Prata.
    ao_lado(A3, A4, Sol),
    camisa(A3, branco),
    tesouro(A4, prata),
    
    %fechamento B|
    pirata(A5, Sol),
    camisa(A5, verde),
    pirata(A6, Sol),
    caracteristica(A6, cicatriz),
    pirata(A7, Sol),
    tripulacao(A7, 120).

pirata(X,taverna(X,_,_,_,_)).
pirata(X,taverna(_,X,_,_,_)).
pirata(X,taverna(_,_,X,_,_)).
pirata(X,taverna(_,_,_,X,_)).
pirata(X,taverna(_,_,_,_,X)).

primeira_posicao(X,taverna(X,_,_,_,_)).
segunda_posicao(X,taverna(_,X,_,_,_)).
terceira_posicao(X,taverna(_,_,X,_,_)).
quarta_posicao(X,taverna(_,_,_,X,_)).
quinta_posicao(X,taverna(_,_,_,_,X)).

camisa(bebado(X,_,_,_,_,_),X).
nacionalidade(bebado(_,X,_,_,_,_),X).
caracteristica(bebado(_,_,X,_,_,_),X).
tripulacao(bebado(_,_,_,X,_,_),X).
canhoes(bebado(_,_,_,_,X,_),X).
tesouro(bebado(_,_,_,_,_,X),X).

algum_lugar_a_direita(X,Y,taverna(Y,X,_,_,_)).
algum_lugar_a_direita(X,Y,taverna(Y,_,X,_,_)).
algum_lugar_a_direita(X,Y,taverna(Y,_,_,X,_)).
algum_lugar_a_direita(X,Y,taverna(Y,_,_,_,X)).
algum_lugar_a_direita(X,Y,taverna(_,Y,X,_,_)).
algum_lugar_a_direita(X,Y,taverna(_,Y,_,X,_)).
algum_lugar_a_direita(X,Y,taverna(_,Y,_,_,X)).
algum_lugar_a_direita(X,Y,taverna(_,_,Y,X,_)).
algum_lugar_a_direita(X,Y,taverna(_,_,Y,_,X)).
algum_lugar_a_direita(X,Y,taverna(_,_,_,Y,X)).

ao_lado(X,Y,taverna(X,Y,_,_,_)).
ao_lado(X,Y,taverna(Y,X,_,_,_)).
ao_lado(X,Y,taverna(_,X,Y,_,_)).
ao_lado(X,Y,taverna(_,Y,X,_,_)).
ao_lado(X,Y,taverna(_,_,X,Y,_)).
ao_lado(X,Y,taverna(_,_,Y,X,_)).
ao_lado(X,Y,taverna(_,_,_,X,Y)).
ao_lado(X,Y,taverna(_,_,_,Y,X)).

exatamente_a_esquerda(X,Y,taverna(X,Y,_,_,_)).
exatamente_a_esquerda(X,Y,taverna(_,X,Y,_,_)).
exatamente_a_esquerda(X,Y,taverna(_,_,X,Y,_)).
exatamente_a_esquerda(X,Y,taverna(_,_,_,X,Y)).

exatamente_a_direita(X,Y,Taverna) :-
   exatamente_a_esquerda(Y,X,Taverna).


    

