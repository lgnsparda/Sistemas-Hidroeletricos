%Ariana Alves Barbosa Flores 13/0043036
%Felipe Tom� de Sousa Diniz 13/0109827
%Roger Roel Awadraj Anijs 18/0142038

clc,clear all;

load dados_grupo3

%Vetor dados de vaz�es
for i=1:30316 j=1;
    B(i)=dados_grupo3(i,j);
end
 vazao=B';
 
%Matriz com divis�o semanal de vaz�es
C = vec2mat(vazao,7);

%Matriz transposta semanal
Semana=C';

%Realiza a m�dia das 4331 semanas
Media_Semana = mean(Semana);

%Cria vetor com semanas referentes as m�dias 
Semanas = (1:4331);

%Fluviograma com m�dias semanais 
figure(1)
plot(Semanas,Media_Semana);
title('Fluviograma Semanal');
xlabel('Semana')
ylabel('Vaz�o m�dia semanal (m�/s)')

%Cria vetor dos anos 
Ano = (1931:2013);

%Matriz divisao semanal em 52 semanas por ano
D = vec2mat(Media_Semana,52);

%Matriz transposta semana por ano
Anual = D';

%Realiza m�dia Anual dos 83 anos
Media_Anual = mean(Anual);

%Excluindo 37 semanas excedentes no �ltimo ano com valores nulos
Media_Anual(:,[84]) = []

%Fluviograma com m�dias anual de vaz�es;
figure(2)
plot(Ano,Media_Anual);
title('Fluviograma Anual');
xlabel('Anos')
ylabel('Vaz�o m�dia anual (m�/s)')

%Cria vetor das d�cadas
Decadas = [1930 : 10 : 2010];

%Matriz Divis�o Decenal
E = vec2mat(Media_Anual,10);

%Matriz transposta decenal
Decenal = E';

%Realiza m�dia decenal 
Media_Decenal = mean(Decenal);

extremo_min = min(vazao);
extremo_max = max(vazao);

%Fluviograma com m�dias decenais de vaz�o;
figure(3)
plot(Decadas,Media_Decenal);
title('Fluviograma Decenal');
xlabel('D�cada')
ylabel('Vaz�o m�dia decenal (m�/s)')

%%Para definir a curva de dura��o de vaz�es 

%Define maior e menor valor de vaz�o
Maior_vazao= max(Media_Anual);
Menor_vazao_anual= min(Media_Anual);


%A fun��o ordena em ordem decrescente os elementos
Ordem_decrescente = dsort(Media_Anual);
n = 0;

%Fun��o que conta o n�mero de vezes que um cada valor diferente
%da vaz�o � igualado ou superado

for k = 1:83
   for l =1:83
    if Ordem_decrescente(k)>= Ordem_decrescente(l) %Efetua compara��o
        n = n +1;
    end
   end
   
   Frequencia(k) = n;
   Ordem_decrescente(k);
end

Porcentagem = (Frequencia/Frequencia(83))*100;


%Curva de dura��o de vaz�o
figure(4)
plot(Porcentagem,Ordem_decrescente);
title('Curva de dura��o de vaz�es');
xlabel('Dura��es(%)')
ylabel('Vaz�o (m�/s)')

%%A curva de dura��o de pot�ncia � obtida pela multiplica��o
%da ordenada por 1000*Rendimento*g*Hl

%Rendimento estipulado ao grupo3
Rendimento = 0.7; 
%Queda L�quida do projeto de proveitamento
Hl = 9.5;
g = 9.81;
Pot = Ordem_decrescente*1000*Rendimento*g*Hl

%Curva de dura��o de Pot�ncia
figure(5)
plot(Porcentagem,Pot);
title('Curva de Dura��o de Pot�ncia');
xlabel('Dura��es(%)')
ylabel('Pot�ncia (W)')

%Diagrama de Rippl

%Vetor volume acumulado durante 83 anos
% tempo = anos*dias*horas*segundos
t = 83*30*24*3600;
%----------------------

%Matriz com divis�o de vaz�o de acordo com os anos
G = vec2mat(vazao,365);
%Matriz com divis�o 1022 meses
Divisao_mes = vec2mat(G,30);
%Transposta
I = Divisao_mes';
%M�dia dos meses nos 83 anos
Media_meses = mean(I);
%Transposta
J = Media_meses';
%Elimina 2 linhas para ser poss�vel realizar redimensionamento
J(1022,:) = [];
J(1021,:) = [];
%Junta valores de cada m�s
Periodo = reshape(J,[85,12]);
%M�dia mensal dos anos
Media_periodo = mean(Periodo);
%Cria vetor dos meses 
Mes = (1 : 12);
%Volume acumulado em m3
Volume = Media_periodo*t;
%Define maior e menor valor de volume acumulado
Maior_volume= max(Volume);
Menor_volume= min(Volume);
%Ordem crescente
Volume_crescente=sort(Volume); 


%Diagrama de Rippl
%Fazer legenda de meses crescentes do ano hirol�gico
figure(6)
plot(Mes,Volume_crescente,'x') 
title('Diagrama de Rippl')
xlabel('M�s ano hidrol�gico');
ylabel('Volume Acumulado (m�)');

%Per�odo cr�tico ano civil
figure(7)
plot(Mes,Volume,'x')
title('Per�odo Cr�tico')
xlabel('M�s');
ylabel('Volume Acumulado (m�)');

%Diagrama de Conti-Varlet
%Define menor valor de vaz�o da m�dia mensal
Menor_mensal = min(Media_periodo);
Menor_vazao = Periodo - Menor_mensal;
Media_periodo_2=mean(Menor_vazao);

figure(8)
plot(Mes,Media_periodo_2*t,'r'); 
hold on 
plot(Mes,Media_periodo*t,'-b');
title('Diagrama de Conti-Varlet');
xlabel('M�s');
ylabel('Volume util e volume inicial (m�)');

% Diagrama de Conti-Varlet,com vaz�o regularizada

vazao_regularizada = [8.932e9,2557800000,7614012270,10888100000,15431000000,19522200000,24533100000,28921000000,35256000000,40002000000,5.178e10,5.4e10 ];
figure(9)
plot(Mes,Media_periodo_2*t,'r'); 
hold on 
plot(Mes,Media_periodo*t,'b');
hold on
plot(Mes,vazao_regularizada,'y'); 
title('Diagrama de Conti-Varlet,com vaz�o regularizada');
xlabel('M�s');
ylabel('Volume util e volume inicial (m�)');











