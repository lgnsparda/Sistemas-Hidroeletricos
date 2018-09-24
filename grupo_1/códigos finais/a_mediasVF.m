clear all; close all; clc

matriz = importdata('dados_grupo1.txt');
vazao = matriz.data;
temp = datetime(matriz.rowheaders);

%--------M�dia di�ria----------%
figure(4)
plot(temp,vazao)

maior = max(vazao)
menor = min(vazao)
%--------M�dia Semanal---------%
%Considerando o ciclo contendo 7 dias; 
%Desconsiderano o resto da divis�o por 7, por exemplo, se temos 37
%dias, consideramos 5 semanas e desconsideramos os �ltimos dois dias; 
i=1;
tamanho = length(vazao)-mod(length(vazao),7);
for k=7:7:tamanho
    tempoS(i) = temp(k);
    a = vazao(k-6:k);
    mediaS(i) = mean(a);
    i = i + 1;
    a=0;
end

%------M�dia Anual-------%
%Desconsiderando anos bissextos, e ciclo anual contendo 365 dias. 
%Aplicando a mesma metodologias usada na m�dia semanal. Foi desconsiderado
%o resto da divis�o por 365;
%Acredit�-se que essa metodologia n�o ir� prejudicar a seguran�a dos dados,
%pois, no periodo estudado temos 82 anos de dados. Com isso apenas 20 dias,
%de um universo de 30316 dias,ser�o desconsiderados no final, pois temos 20 anos bissestos nesse per�odo. 

i=1;
tamanho = length(vazao)-mod(length(vazao),365); 
for k=365:365:tamanho
    tempoA(i) = temp(k);
    a = vazao(k-364:k);
    mediaA(i) = mean(a);
    i = i + 1;
    a=0;
end

%------M�dia Decenal------%

i=1;
tamanho = length(vazao)-mod(length(vazao),3650); 
for k=3650:3650:tamanho
    tempoD(i) = temp(k);
    a = vazao(k-3649:k);
    mediaD(i) = mean(a);
    i = i + 1;
    a=0;
end

figure(1)
plot(tempoS,mediaS)
ylabel('Vaz�o m�dia semanal (m�/s)')
xlabel('Tempo')

figure(2)
plot(tempoA,mediaA)
ylabel('Vaz�o m�dia semanal (m�/s)')
xlabel('Tempo')

figure(3)
plot(tempoD,mediaD)
ylabel('Vaz�o m�dia semanal (m�/s)')
xlabel('Tempo')

