clear all; close all; clc

matriz = importdata('dados_grupo1.txt');
vazao = matriz.data;
temp = datetime(matriz.rowheaders);

%--------M�dia Semanal---------%
%Considerando o ciclo contendo 7 dias; 
%Desconsiderano o resto da divis�o por 7, por exemplo, se temos 37
%dias, consideramos 5 semanas e desconsideramos os �ltimos dois dias; 

tamanho = length(vazao)- mod(length(vazao),7);
i=1;
for k=7:7:tamanho
    tempoS(i) = temp(k);
    a = vazao(k-6:k);
    mediaS(i) = mean(a);
    i = i + 1;
    a=0;
end

%----Determinando o volume acompanhado---%
deltaT=7*24*3600;
volacumu(1)=mediaS(1)*deltaT;

for j=2:length(mediaS)
    volacumu(j) = volacumu(j-1)+ (mediaS(j))*deltaT;
end

%----Determinando a vaz�o  m�dia---- %
vmedia = max(volacumu)/((length(volacumu))*(deltaT));

%----Determina��o da volume acumulada usando a vaz�o m�dia---%
vma(1)= vmedia*deltaT;
for j=2:length(mediaS)
    vma(j) = vma(j-1) + vmedia*deltaT;
end

%----Representa��o gr�fica----%
figure(1)
plot(tempoS,volacumu)
xlabel('Tempo')
ylabel('Volume acumulado(m�)')
title('Diagrama de Rippl')
hold;
plot(tempoS,vma);
legend('Volume acumulado','Volumen m�dio acumulado')


