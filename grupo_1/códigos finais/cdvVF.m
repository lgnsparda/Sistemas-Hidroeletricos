clear all; close all; clc

%carrega os dados de vaz�o do grupo
matriz = importdata('dados_grupo1.txt');
vazao = matriz.data;

i=1;
aa=0;

%conta quantas vezes a vaz�o ocorreu ou foi superada
for i=1:length(vazao)
      aa(i) = length (find (vazao(i) <= vazao));
    i=i+1;
end

%transforma em porcentagem
bino = (aa/length(vazao))*100;

%converte para pot�ncia
potencia = (vazao*1*0.9*9.81*68.5)/(1000);

%plot a curva de dura��o de vaz�es
figure(1)
plot(bino,vazao,'.')
axis ([0 100 0 7000])
xlabel ('Perman�ncia [%]')
ylabel ('vaz�o (m^3/s)')
title ('Curva de dura��o de vaz�o')


%-----Zoom 95%------

figure(2)
plot(bino(bino>94),vazao(bino>94),'*')
xlabel ('Perman�ncia [%]')
ylabel ('vaz�o (m^3/s)')
title ('Curva de dura��o de vaz�o - Zoom')

%------dura��o de pot�ncias----------------------

figure(3);
plot(bino,potencia,'.')
xlabel ('Perman�ncia(%)')
ylabel ('pot�ncia(MW)')

