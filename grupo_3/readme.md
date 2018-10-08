# PROJETO HIDROELÉTRICO

  - Ariana Alves Barbosa Flores - 13/0043036
  - Felipe Tomé de Sousa Diniz - 13/0109827
  - Roger Roel Awadraj Anijs - 18/0142038
  

### Projeto do Aproveitamento

O projeto do aproveitamento consistirá na realização e apresentação de cálculos oriundos de dados de um dado aproveitamento hidrelétrico visando a instalação de uma usina hidrelétrica. Cada item deverá ser respondido neste documento do repositório, usando a ferramenta de edição.

  - Cada grupo terá em sua pasta do repositório um conjunto de dados de vazão que deverá ser usado ao longo deste e dos demais projetos quando necessário;
  
  - Modelamento do aproveitamento hidrelétrico. Cada grupo deverá mostrar como ficará o sistema hidromecânico equivalente através do cálculo da energia hidráulica média disponível e do trabalho específico. O grupo 3 deverá usar a  altura de cota **de 10 m** para seu aproveitamento hidrelétrico:
  #### Energia Hidráulica Média Disponível
O aproveitamento da energia potencial, por meio de quedas é determinada como energia hidráulica. A energia hidráulica média disponível, transformada em trabalho, é dada por:

![1 energia](https://user-images.githubusercontent.com/42543898/45930644-38b18800-bf39-11e8-8d4b-81b67b78f5aa.gif)

Onde:
  - *p* é a massa específica da água;
  - *γ* é o peso específico da água;
  - *u* é a velocidade;
  - *z* é a altura de elevação;
  - *g* é a aceleração da gravidade.
  
Fundamentado nas notas de aula, a energia específica terá seu valor máximo quando as condições a seguir ocorrerem:
   
![2 valormax](https://user-images.githubusercontent.com/42543898/45931012-f63e7a00-bf3d-11e8-9e06-ecf0fa9f62df.gif)

Assim, quanto mais próximo do ponto 2 estiver o nível de jusante maior será seu aproveitamento hidrelétrico, assumindo seu valor máximo. Considerando que a velocidade no ponto 1 é muito pequena e influencia muito pouco no cálculo da energia, e assumindo a altura de cota de **10 metros**, a energia hidráulica média será:

![3 energiacota](https://user-images.githubusercontent.com/42543898/45931043-3e5d9c80-bf3e-11e8-948a-35c389e12685.gif)
 
![4 energiaresult](https://user-images.githubusercontent.com/42543898/45931059-6baa4a80-bf3e-11e8-8b3e-22ca02b5feda.gif)

Essa energia parte da modelagem do sistema hidromecânico equivalente, realizada a partir dos dados do reservatório.

  #### Trabalho Específico
  Com o valor de queda líquida de aproveitamento (*Hl*) calculado no tópico a seguir, obtem-se o trabalho específico do sistema hidromecânico:
  
![5 trabalho](https://user-images.githubusercontent.com/42543898/45931081-c9d72d80-bf3e-11e8-9c17-7e06eac807ab.gif)

![6 trabalho](https://user-images.githubusercontent.com/42543898/45931083-dce9fd80-bf3e-11e8-8805-a2ebc08f5822.gif)
 
  - Determinação da queda do aproveitamento: O grupo 3 deverá considerar uma perda de **0,5 m**, onde cada grupo deverá especificar se a central será de baixa ou de alta queda;
  #### Queda de Aproveitamento
A queda de aproveitamento será definida pela altura de cota(*Hb*) subtraída do valor de perda do sistema (*hp*):

![22 queda](https://user-images.githubusercontent.com/42543898/45931126-8e892e80-bf3f-11e8-91c8-8102a5569314.gif)

![23 queda](https://user-images.githubusercontent.com/42543898/45931132-a5c81c00-bf3f-11e8-9d1f-5717ab782e36.gif)
#### Classificação Baixa ou Alta Queda
To determine if it is a high or low head, there are two ways to go about it, the first way is to determine the K_a factor. The second way is by means of the total installed power. Assuming that the total installed power should be fairly close to the maximum calculated power.

*Classification based on the Ka factor*

![7 ka](https://user-images.githubusercontent.com/42543898/45931160-21c26400-bf40-11e8-98e2-41fda37f3888.gif)

![8 vs](https://user-images.githubusercontent.com/42543898/45931168-49b1c780-bf40-11e8-998a-34a8fcf61ee3.gif)

Where:
  - *Km* = 0,5 and *D* is the diameter and *e* is the thickness of conduit;
  - *u* is the velocity;
  - *g* is the gravitation;
  - *Hb* is the maximum head.
  
Assuming various values of flow velocity (*u*) and varying the Diameter and thickness (*D* and *e*) between the values of *0* and *3 m*, it is found that the *Ka* factor is above 1. Which classifies as a low head (Baixa Queda) system.

*Classification based on the assumption of total installed power*
Based on the Ptmax = 20.984,71𝑘𝑊, calculation and the assumption that the total installed potential will not vary much from this value, (assuming Kaplan turbine efficiency to be around 0.8) [1]. Based on the table on page 15 of [2], one can safely assume a low head or (Baixa Queda) system.

  - Determinação da vazão média de longo tempo baseado nos dados de vazão dados a cada grupo. Cada grupo deverá mostrar como fez este cálculo e as hipóteses adotadas;
  #### Vazão média ao longo do tempo
Para determinar a vazão média ao longo do tempo, em *m³/s*, a média foi baseada nos dados de vazão
de todos os dias referentes aos dados disponibilizados, desde 1931 a 2013, resultando na média de *30316* dados. Manipulados com a ferramenta Excel o valor obtido foi de:

![9 vazao](https://user-images.githubusercontent.com/42543898/45931430-81227300-bf44-11e8-9a58-f74e12b1baff.gif)
  
  - Cálculo da potência hidráulica máxima teórica média e da energia máxima teórica média;
  #### Potência Hidráulica Teórica Média
Com os dados de vazão média ao longo do tempo, e queda líquida (*Hl*) calculados anteriormente é possível definir a potência hidráulica máxima teórica (Ptmax) como:

![10 potencia](https://user-images.githubusercontent.com/42543898/45931499-5258cc80-bf45-11e8-91fa-989cba213168.gif)

![11 potencia](https://user-images.githubusercontent.com/42543898/45931501-54229000-bf45-11e8-8222-49a0a0e90ca7.gif)

![12 potencia](https://user-images.githubusercontent.com/42543898/45931503-55ec5380-bf45-11e8-8509-39846b7b849f.gif)
  
  #### Energia Máxima Teórica Média
 A energia hidráulica máxima teórica, com base numa estimativa de tempo(t) de retorno de 24h é:
  
![13 energiateorica](https://user-images.githubusercontent.com/42543898/45931520-846a2e80-bf45-11e8-8328-40322ceea860.gif)

![14 energiateorica](https://user-images.githubusercontent.com/42543898/45931521-846a2e80-bf45-11e8-8d02-2144b15c19ed.gif)

![15 energiateorica](https://user-images.githubusercontent.com/42543898/45931522-8502c500-bf45-11e8-9552-a3d1e7822ead.gif)
  
  
  - Análise dos dados de vazão e energia máxima teórica média;
  
  A vazão calculada é considerada alta e apesar de ser uma usina de baixa queda, consegue produzir uma quantidade alta de energia em um dia.
 
  - Escolha do tipo de central e o arranjo utilizado;
  
Como referenciado nas notas de aula, de acordo com *Resolução 652 da ANEEL*, a classificação para enquadramento de aproveitamento energético são baseadas na potência e altura de queda. Visto que possui uma potência entre 1000kW e 30MW, é classificado como Pequena Central Hidrelétrica(PCH), sendo considerada para autoprodução.

![16 arranjo](https://user-images.githubusercontent.com/42543898/45931553-00647680-bf46-11e8-8947-1b3b0b295115.JPG)
 
  - Estimativa da potência instalada;
The estimated total installed potential can be calculated by selecting an appropriate turbine based on available head and flow rate (Q). Based on a simplified selection process as seen in the table below: 

![17 estimativa](https://user-images.githubusercontent.com/42543898/45931563-36095f80-bf46-11e8-8746-64a820e2ba4d.JPG)

Utilizing the above table, one can easily notice that the Kaplan Turbine is best suited for this specific situation. By assuming an average efficiency of 0.8 [1] for the Kaplan turbine, the maximum installed potential becomes:

![18 potenciainstalada](https://user-images.githubusercontent.com/42543898/45931578-4e797a00-bf46-11e8-85ea-1db899a58390.gif)

![19 potenciainstalada](https://user-images.githubusercontent.com/42543898/45931579-4e797a00-bf46-11e8-8509-8aa3b4f0a321.gif)

![20 potenciainstalada](https://user-images.githubusercontent.com/42543898/45931580-4f121080-bf46-11e8-9256-bfd20f8b93e3.gif)

  - Desenho esquemático do sistema hidromecânico equivalente;
  
![21 sistemaeq](https://user-images.githubusercontent.com/42543898/45931586-69e48500-bf46-11e8-925e-58e7ace1920a.PNG)

 
  - Cada grupo deverá preencher uma ART (Anotação de Responsabilidade Técnica) para:

    - **Cargo e Função**, designando a tarefa de cada membro do grupo;
    - **Atuação**, designando os projetos a serem executados para a construção da usina;
    - **Obras e Serviços**, designando quais obras e serviços **relacionados a estudos, serviços e projetos civis** deverão ser executados para a construção da usina;

        Um arquivo de ajuda de preenchimento e um modelo de ART estão disponibilizados neste repositório. **Cada grupo deverá fazer suas ARTs baseado no modelo disponibilizado e fazer o *upload* para este repositório, sem recorrer a arquivos prontos na internet**;
        
- Projetos que não tiverem todos estes itens respondidos **não serão avaliados!**
Este projeto deverá ser feito neste arquivo, com o *upload* das respectivas ARTs, será até o dia **02/09/2018**. Pedidos de adiamento só serão concedidos em casos excepcionais, a serem decididos pelo professor.
#### Referências
[1] B. E. P. S. L. Dixon, Fluid Mechanics And Thermodynamics Of Turbomachinery, MA USA:Elsevier Inc, 2014.

[2] L. G. NOLETO, Gama, 2018.

[3] M. H. E. H. Rachael Haas, Francis Turbines Fundamentals and Everything Else You Didn’t know that you wanted to know, Colorado: Colorado State University, CIVE 401, 2014.


### Projeto Hidrológico

O projeto hidrológico consistirá na realização e apresentação de cálculos hidrológicos para o projeto de uma central hidrelétrica. Cada item deverá ser respondido neste documento do repositório, usando a ferramenta de edição.

O projeto hidrológico tem como objetivo apresentar cálculos hidrológicos com base nos  dados de vazão fornecidos ao grupo e o valor de queda líquida do Projeto de Aproveitamento. Para isso os dados foram manipulados para apresentação dos fluviogramas, diagramas, períodos e vazão regularizada. 

  - Com os dados de vazão usados no projeto do aproveitamento, os grupos deverão identificar e organizar os dados em médias semanais (Se a disposição dos dados for diária) ou anuais (Se a disposição dos dados for mensal);
  
  Para realização do estudo, os 30316 dados de vazão diários referentes a 82 anos entre 1931 - 2013 foram organizados em dados semanais para melhor visualização. Totalizando 4333 médias semanais.
O fluviograma representa essa variação da vazão ao longo do tempo, obtendo-se assim o comportamento de um rio durante determinado período, podendo assim identificar o período chuvoso e o período de estiagem.

![1 fluviograma semanal](https://user-images.githubusercontent.com/42543898/46415970-dad12d00-c6fc-11e8-8891-c869600a19d3.jpg)

A Figura 1 apresenta o comportamento da vazão ao longo dos 82 anos, a análise dos dados permite observar que os maiores valores de vazão encontram-se entre as semanas 2737 e 3500, alcançando um valor médio de 1926 m³/s e o menor na semana 2864 com valor médio de 38,71m³/s.
  
  - Cada grupo deverá realizar uma caracterização estatística destes dados. Para a caracterização dos dados, o grupo deverá utilizar de programação, onde a linguagem de programação é de livre escolha do grupo. **O algoritmo programado deverá ser enviado ao repositório via *upload*. Não será permitida a utilização de planilhas excel ou de programas já feitos**. Os seguintes itens deverão ser respondidos neste documento:
  
#### Fluviograma dos dados, dispostos em valores anuais e decenais;

Como fluviogramas apresentam a variação da vazão ao longo do tempo, podem ser representados de acordo com os períodos anual e decenal.
A configuração anual, apresentada na Figura 2, foi obtida por meio de manipulação de dados referente à média de 52 semanas. Os maiores valores de vazão ocorreram no ano de 1983, sendo 603,8m³/s, o maior valor médio de vazão, enquanto o valor mínimo médio de vazão ocorreu no ano de 1969 resultando em 105,7m³/s.

![2 fluviograma anual](https://user-images.githubusercontent.com/42543898/45934724-71248680-bf78-11e8-87b2-a47bd2fc96f3.jpg)

O fluviograma decenal apresenta a variação ao longo do tempo onde os dados de vazão estão organizados em médias calculadas a cada 10 anos.

![3 fluviograma decenal](https://user-images.githubusercontent.com/42543898/45934725-71bd1d00-bf78-11e8-9f6b-c66c483fe898.jpg)

Realizando-se as médias decenais foram obtidas 9 decênios, onde, pela Figura 3 é possível observar que no último decênio ocorreram as menores médias de vazão, atingindo o mínimo de 75,24m³/s e máximo de 284,64m³/s.
       
#### Curva de duração de vazões;
       
A curva de duração de vazões ou de permanência, representa uma curva da relação entre a vazão de ocorrência e a probabilidade  dessa vazão ser superada ou igualada, ou seja, a distribuição de frequências acumuladas.
Os dados de média anual foram dispostos de forma decrescente para melhor visualização do gráfico, assim obtém-se a frequência com que cada dado de vazão é superado ou igualado. Esses dados são divididos pelo número total de dados, 83 anos,  e multiplicados por 100 para se obter o valor em porcentagem.

![4 curva de duracao de vazao](https://user-images.githubusercontent.com/42543898/45934726-71bd1d00-bf78-11e8-84a2-0cbafc052502.jpg)
       
Através da curva de duração, Figura 4, é determinada a vazão de maior permanência. Com isso, as menores médias de vazão são as que possuem maior probabilidade de serem igualadas ou superadas, enquanto as maiores possuem frequência próxima de zero. O menor valor de vazão observado é 105,7m³/s, e os maiores valores encontram-se entre 700m³/s, e 357,2m³/s sendo que estes só são superados ou igualados com no máximo 7% das ocorrências.

#### Curva de duração de potência para uma queda (Determinada no projeto do aproveitamento) e rendimento de **70%**;

A partir da curva de duração de vazões, é possível gerar a curva de duração de potência ao levar em consideração o rendimento, a gravidade e a queda líquida. A queda líquida adotada, de **9,5m** foi calculada no projeto de aproveitamento.
Assim a ordenada da curva é multiplicada pela equação:

![4 curvapotencia](https://user-images.githubusercontent.com/42543898/45934727-7255b380-bf78-11e8-8341-89b8a38fbc41.gif)

onde:

  - *η* é o rendimento;
  - *g* é aceleração da gravidade;
  - *Hl* é a queda líquida.
  
  ![5 curva de duracao de potencia](https://user-images.githubusercontent.com/42543898/45934718-6ff35980-bf78-11e8-87cb-d68a41efca93.jpg)
  
  A Figura 5 apresenta a curva de duração de potência	, assim como a curva de duração das vazões, as menores potências ocorrem com maior frequência e as maiores têm frequência próxima de zero. Com este diagrama, intervalos temporais são determinados de acordo com suas condições hidrológicas, são definidos como período crítico, período crítico de ciclo completo, período seco e período úmido.
       
#### Diagrama de Rippl;   

O diagrama de Rippl, ou diagrama de massas corresponde ao diagrama de volumes acumulados de acordo com o ano hidrológico,  para isso realiza a integração do fluviograma, de acordo com a equação:

![5 integral](https://user-images.githubusercontent.com/42543898/45934719-6ff35980-bf78-11e8-8bb9-25549bb5ee9c.gif)

onde:
  - *D* é o deflúvio em m³;
  - *Q* é a vazão em m³/s;
  - *ti* é o tempo inicial;
  - *tf* é o tempo final.

Com este diagrama é possível determinar  o volume útil do reservatório, o período crítico, a vazão do período e estudar a regularização de vazões.
De acordo com dados de vazão do grupo, o volume acumulado é obtido durante os 83 anos, para isso considerou-se todos os meses com 30 dias, assim:

![6 tempo](https://user-images.githubusercontent.com/42543898/45934721-708bf000-bf78-11e8-99eb-f5d3f070512c.gif)

![6 diagrama de rippl](https://user-images.githubusercontent.com/42543898/45934720-708bf000-bf78-11e8-8748-9669b9609435.jpg)

O curva do diagrama de Rippl ajustada, Figura 6 apresenta o volume acumulado organizado de forma crescente, assim a abscissa encontra-se de acordo com o ano hidrológico. A Tabela a seguir apresenta a legenda dos meses de acordo com ano hidrológico.

**Meses ano hidrológico** | **Meses ano civil**
------------------------- | -------------------
1                         | Fevereiro
2                         | Abril
3                         | Março
4                         | Maio
5                         | Janeiro
6                         | Junho
7                         | Agosto
8                         | Julho
9                         | Novembro
10                        | Dezembro
11                        | Outubro
12                        | Setembro

Assim de acordo com ano civil, o mês de setembro possui volume acumulado máximo de 6287 x 10^7 m³, e o mês de fevereiro o valor mínimo de 3451 x 10^7 m³.

#### Determinação do período crítico;

Período crítico é definido como o período de plena utilização do reservatório, pelo diagrama de Rippl referente ao ano civil é possível observar que o período crítico vai de janeiro a fevereiro, onde o reservatório apresenta valor mínimo de volume acumulado de acordo com Figura 7.

![7 periodo critico](https://user-images.githubusercontent.com/42543898/45934722-71248680-bf78-11e8-9b01-67db886fb22c.jpg)
        
#### Determinação de períodos seco e úmido;

O ano hidrológico do rio é caracterizado pelos períodos seco e úmido, estão relacionados aos dados extremos de vazão. No período seco os índices do reservatório são mínimos devido aos baixos índices pluviométricos, correspondendo assim ao período crítico.
De acordo com Figura 7 o período seco do projeto em estudo vai de janeiro a fevereiro. Os meses restantes, em que ocorre aumento do volume do reservatório, são considerados período úmido.
        
#### Determinação de valores extremos;

Os valores extremos são determinados de acordo com os valores de mínimo e máximo avaliados dentro de um determinado período. Analisando os dados de vazão adota-se como valores extremos, o valor mínimo de 10m³/s e o valor máximo de 2393m³/s.

#### Estimativa da vazão firme e da vazão de projeto para dimensionamento de uma central hidrelétrica;

A vazão de projeto é a vazão utilizada para dimensionamento da central hidrelétrica, deve ser escolhida para não causar desperdício do recurso hídrico ou superdimensionamento do mesmo, corresponde a uma frequência de 30% a 40%. Considerando a curva de duração de vazões e a média entre as frequências, a vazão de projeto adotada será de 277,1m³/s para aproximadamente 35% de frequência.
Já a vazão firme, é definida como  a vazão que possui uma incidência de no mínimo 95%, ou seja, pela curva de duração de vazões a vazão firme será de 164,8m³/s.
      
  - Cálculo da vazão regularizada: O grupo deverá fazer um cálculo da vazão regularizada baseado nos dados fornecidos de vazão. O método a ser usado é o método de Conti-Varlet. A formulação deste método está disponível no livro-texto do curso (Souza, Z., Santos, A. H. M e Bortoni, E. C.  **Centrais Hidrelétricas: Implantação e Comissionamento**, 2a. Edição, Editora Interciência.). Para este cálculo o grupo deverá:
   
O método de Conti - Varlet, derivado do diagrama de Rippl, determina para um dado volume útil inicial as vazões regularizadas. Com base no livro texto, o método pode ser definido a partir do gráfico de Rippl, o volume útil e com as vazões regularizadas parciais.
        
   - Usar o programa disponibilizado pelo livro-texto do curso ou implementar o método em uma linguagem de programação da escolha do grupo. Caso o grupo escolha a segunda alternativa, **o algoritmo programado deverá ser enviado ao repositório via *upload***;
       
   - Análisar o resultado obtido de vazão regularizada e comparar este resultado com as vazões firme e de projeto calculados anteriormente;
   
Pode-se inferir do gráfico de Rippl que o volume útil do é de *3,4508 x 10^10m³*. O volume útil do reservatório objetiva regularizar a vazão em determinada seção do rio, armazenando esse excesso nos períodos chuvosos e utilizando nos períodos de estiagem, a partir do volume útil é possível calcular a vazão regularizada.

Utilizando o software Centrais Hidrelétricas do livro texto proposto nesta disciplina que utiliza o método de Conti-Varlet, foi encontrado o valor de vazão média do histórico de 230,82 m³/s. Este valor é maior do que a vazão firme e menor do que a vazão de projeto calculada.


![software](https://user-images.githubusercontent.com/42543898/45936019-fb281b80-bf87-11e8-9352-368a50602569.jpeg)

O gráfico a seguir apresenta o resultado do método de Conti - Varlet.

![8 diagrama conti varlet](https://user-images.githubusercontent.com/42543898/45936000-d7fd6c00-bf87-11e8-9c14-a44b87c78f2c.jpg)

        
  - Projetos que não tiverem todos estes itens respondidos ou que estiverem incompletos **não serão avaliados!**
Este projeto deverá ser feito neste arquivo até o dia **23/09/2018**. Pedidos de adiamento só serão concedidos em casos excepcionais, a serem decididos pelo professor.


### Projeto do Conduto

O projeto do conduto consistirá na realização e apresentação de cálculos de condutos e canais para a central hidrelétrica. 

O projeto de conduto em centrais hidrelétricas leva em consideração o tipo de arranjo, a disposição de seus componentes e suas características. Os condutos são utilizados para direcionar a água até a casa de máquinas, proporcionando a rotação da turbina e assim gerar energia pelo gerador acoplado. 
Por serem utilizados em sistemas de baixa ou alta pressão, essa grandeza deve ser monitorada, pois efeitos transientes hidráulicos indesejáveis podem acontecer.
O conduto pode ser forçado, quando apresenta contato total com fluido com as paredes internas do conduto, ou livre, quando o fluido apresenta contato parcial com as paredes internas.

  - Projeto do canal para a futura usina hidrelétrica utilizando as fórmulas de Chezy, determinando de acordo com os dados de vazão de cada grupo:
     
    #### A melhor forma geométrica de seção para o canal em questão;
   
Sabendo que quando a seção do canal é não-circular a probabilidade de escoamentos secundários ocorrerem é alta, a seção do canal adotada para este projeto será circular e conduto forçado.
              
   #### O diâmetro hidráulico da seção e Velocidade da água no canal;
       
De acordo com “Diretrizes para estudos e projetos de Pequenas Centrais Hidrelétricas” da Eletrobrás considera-se o conduto forçado com mesmo diâmetro ao longo de todo o comprimento.
O diâmetro econômico é o diâmetro limite que promove um benefício energético sem comprometer o custo associado.

![1 diametroeco](https://user-images.githubusercontent.com/42543898/46588309-87e6d500-ca70-11e8-8f02-8f276fb7061d.gif)


Considerando a vazão de projeto com probabilidade de 95%, do projeto de hidrológico, a vazão a ser adotada será de 277,1m³/s
Para cálculo do diâmetro econômico adota-se a fórmula de Bondshu, para PCH admite-se que *Ht* como 1,2 da altura bruta.
Substituindo na fórmula temos que o diâmeto será de:

![2 diamtroeco](https://user-images.githubusercontent.com/42543898/46588300-6ab20680-ca70-11e8-9d77-b1959564c1a1.gif)

Assumindo o diâmetro de *10m* temos a área de:

![3 area](https://user-images.githubusercontent.com/42543898/46588366-53274d80-ca71-11e8-87a3-a50aad662cd0.gif)

Já a velocidade será obtida pela divisão da vazão com a área de seção:


![4 velocidade](https://user-images.githubusercontent.com/42543898/46588399-f6786280-ca71-11e8-8a8d-dababb0436a2.gif)

A velocidade obtida de acordo com “Diretrizes para estudos e projetos Pequenas Centrais Hidrelétricas” para tubulação de concreto é de 3,0m/s. Logo a velocidade não se enquadra, assim é necessário realizar o cálculo  do número de canais necessários:


![5 canais](https://user-images.githubusercontent.com/42543898/46588409-3b03fe00-ca72-11e8-9085-2b0d86d23d73.gif)

Dessa forma, utilizando 3 canais para margem de erro a vazão e velocidade máxima de cada canal será respectivamente de:

![6 qcanal](https://user-images.githubusercontent.com/42543898/46588433-9b933b00-ca72-11e8-8153-0bf54b3bd810.gif)

![7 velocidade](https://user-images.githubusercontent.com/42543898/46588466-12303880-ca73-11e8-890e-c2d9432010b3.gif)
       
 Para definição do diâmetro hidráulico pelas Fórmulas de Chezy, e considerando o escoamento em regime permanente, pela fórmula de Chezy para vazão:
 
 ![8 chezyvazao](https://user-images.githubusercontent.com/42543898/46588486-98e51580-ca73-11e8-9d75-a982ecabda88.gif)

Partindo do coeficiente de Chezy, dado por:

![9 chezy](https://user-images.githubusercontent.com/42543898/46588495-d8abfd00-ca73-11e8-8751-2e268b5a5d72.gif)

Onde 8n* é o coeficiente de rugosidade de Manning para o material, e para tubos de concreto é considerado 0,012, assim temos:

![10 chezy](https://user-images.githubusercontent.com/42543898/46588509-1a3ca800-ca74-11e8-9963-6200a6231012.gif)

Fazendo as substituições necessárias na fórmula de Chazy para vazão e isolando-se o *RH*, temos a fórmula simplificada:

![11 rh](https://user-images.githubusercontent.com/42543898/46588540-b2d32800-ca74-11e8-9ef6-49532dc27cea.gif)

Para realização do cálculo do raio hidráulico parâmetros como o comprimento e inclinação devem ser levados em consideração, assim com o comprimento de *85m*:

![12 s0](https://user-images.githubusercontent.com/42543898/46588578-1f4e2700-ca75-11e8-9e28-51bd1c5c50eb.gif)

Assumindo assim uma inclinação de *6,71°*.

Substituindo na fórmula do raio hidráulico temos:

![13 rh](https://user-images.githubusercontent.com/42543898/46588636-114cd600-ca76-11e8-9102-225c4deaabe3.gif)

Com isso temos o valor do diâmetro hidráulico:


![14 dh](https://user-images.githubusercontent.com/42543898/46588653-4ce7a000-ca76-11e8-871f-9be6643bbde8.gif)

  #### Vazão de água no canal;
  
Cada canal possuirá a vazão de Qcanal = 93,37m³/s.
      
  - Baseado nos valores de queda dispostos no projeto do aproveitamento, o grupo deverá inserir no desenho esquemático deste projeto os seguintes itens:
  
  Para o desenho esquemático é necessário determinar parâmetros que vão definir o comportamento do escoamento como:
        
       - Valores de cota de altura;
       - Alturas de queda;
       - Linhas piezométrica e de energia;
        
  - Determinação do semiperíodo da onda de pressão para dimensionamento do conduto fechado. Cada grupo poderá fazer as considerações que achar necessárias;
  
  - Determinação de valores de golpe de aríete positivo máximo;
  
  - Determinação de valores do golpe de aríete aceitável;
  
  - Projetos que não tiverem todos estes itens respondidos ou que estiverem incompletos **não serão avaliados!**
Este projeto deverá ser feito neste arquivo até o dia **07/10/2018**. Pedidos de adiamento só serão concedidos em casos excepcionais, a serem decididos pelo professor.



### Projeto da Turbina

O dimensionamento preliminar de uma turbina consistirá em determinar e dimensionar uma turbina para uma dado aproveitamento hidrelétrico. 

  - Cada grupo deverá especificar qual devem ser a potência e vazão da turbina a ser projetada, baseados nos cálculos dos projetos anteriores;
  
  - Estime a rotação nominal da turbina, considerando um gerador com 10 pólos e frequência de corrente de 60 Hz;
  
  - Para um modelo reduzido de 0,075 m de diâmetro, estime qual deve ser a razão de escala geométrica necessária para se obter os valores de potência e vazão determinados no primeiro item;
  
  - Mostre o triângulo de velocidades para estas condições para turbinas Kaplan, Francis e Pelton. Faça as considerações que achar necessárias e explique-as;
  
  - Determine a rotação específica e classifique a turbina como lenta, rápida ou extra-rápida;
  
  - Estime a velocidade de disparo da turbina;
  
  - Estime o fator de capacidade;
  
  - Qual é o tipo de turbina mais adequado para este aproveitamento?
  
  - Se for o caso, determine a altura de sucção e diga se existe risco de cavitação;
  
  - Com os cálculos, a usina que conterá esta turbina será classificada como? (Pequena central hidrelétrica, Grande central hidrelétrica, etc.)
  
  - Projetos que não tiverem todos estes itens respondidos ou que estiverem incompletos **não serão avaliados!**


Os dados faltantes poderão ser estimados pelo grupo, desde que a forma de estimativa seja devidamente explicada. É facultada a utilização de ferramentas computacionais. Este projeto deverá ser feito neste arquivo até o dia **25/11/2018**. Pedidos de adiamento só serão concedidos em casos excepcionais, a serem decididos pelo professor.
