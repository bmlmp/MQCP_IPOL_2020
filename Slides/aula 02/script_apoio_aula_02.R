
## R como calculadora


# Um função primordial e básica do R, como software estatístico, é de calculadora
# O R possui os operadores básicos da matemática como '+' , '-', '*' e '/'


5 + 5 + 5

5 - 3

4 * 9

16 / 2



## R como calculadora

# Assim como na matemática, atenção em relação aos ()


(5 + 6) * 3

5 + 6 * 3

# Além das funções de exponencial e raiz quadrada

# Respectivamente, ^ e sqrt()


2 ^ 2

sqrt(36)




## Lógica

# O R permite também avaliações lógicas
# Ou seja, o software possui operadores lógicos afim de fazer testes lógicos com resultados de Verdadeiro ou Falso de acordo com a proposição
# Os principais operadores são $==$, $<$ , $>$, $<=$ , $>=$ e $!=$
  
5 == 5

5 <= 5 / 5

5 * 4 > 5

3 != 6




## Lógica

# Testamos também Verdade e Falsidade

TRUE == TRUE


TRUE <= FALSE

# Assim como estamos caracteres

"Python" == "python"

"Stata" != "Sasta"





## Operadores lógicos especiais

# Atenção para os operadores e e ou
# O primeiro, para ser verdade, precisa que todos os pressupostos sejam verdadeiros

(3 == 3) & (4 != 5)

# O ou, por sua vez, para ser verdade precisa que apenas 1 pressuposto seja verdadeiro

(3 != 3) | (4 != 5)




## Atribuição

# Trata-se da famosa setinha que indica objetos (valores, vetores, dataframes) para alguma etiqueta
# Dessa maneira, podemos 'salvar' os objetos nas etiquetas para utilizarmos através dessas em qualquer momento ao longo do script
# Quando utilizadas em operações, as etiquetas representam aquilo que fora atribuído a elas
# Quando criamos a etiqueta, não geramos outputs, apenas quando rodamos diretamente a etiqueta


sorte <- 5
sortea = 6
rm(sortea)


## Regras do uso da setinha

# Atenção, letras maiúsculas e minúsculas importam


sorte <- 5

Sorte

# Erro: objeto 'Sorte' não encontrado



# Também não podemos criar etiquetas que começam com números


15luck <- 15
a15luck <- 15
a15luck
a.1 <- 4

# Erro: unexpected symbol in "15luck"


# Cuidado com a utilização de etiquetas com o mesmo nome de funções, pode gerar confusão no script


## Classes

## Númerico

# Numeric é a classe composta por valores númericos

class(sorte)


# Objetos do tipo "numeric" permitem funções matemáticas como média, mediana etc...
# No caso de valores decimais, utilizamos ponto ao invés de vírgula
decimal <- 3,5

# Erro: ',' inesperado in "decimal <- 3,"

decimal <- 3.5

decimal = 3.5

## Lógico

# Logical é a classe composta por TRUE, FALSE e NA


vdd <- TRUE

class(vdd)



# Não é preciso escrever sempre TRUE e FALSE, isto é, podemos resumir para T e F, respectivamente

# Por trás dos valores T e F, há valores númericos correspondente a 1 e 0


T + F




## Caracteres

# Characters é a classe composta por nomes

# Importante característica é que os nomes devem estar dentro de aspas, caso contrário, o R não reconhecerá como caracter


nome <- "Alvaro"

nome

class(nome)





## Caracteres vs Fatores

# Em termos estatísticos, não há diferença entre caracteres e fatores
# Fatores apresentam as categorias por dentro de vetor.
# Em termos de manipulação de dataframes, porém, veremos que esses dois objetos terão tratamento distintos, a começar pela importação da base e a definição de string tratada como factor



# Vetores
## O que são vetores?

# Vetores são combinações de valores em uma estrutura unidimensional 
# Ou seja, podem ser combinações de números, valores lógicos, nomes e várias outras possibilidades
# Por exemplo, combinação de valores pares: 2,4,6,8
# Ou a combinações de nomes começando por P: Pedro, Paula, Pietro, Paloma
# Combinação de valores lógico: TRUE, FALSE, TRUE, TRUE


## Criação de vetores

# Para criar vetores é importante combinar valores
# A função necessária para a criação de vetores, portanto, é a função c(), c de *combine* ou *concatenate*
  
c(2,4,6,8)

c("Pedro","Paula","Pietro","Paloma")

c(TRUE,FALSE,TRUE,FALSE)
 


## Etiquetas para vetores

# Assim como fizemos com os valores, atribuímos também etiquetas aos vetores
# Dessa maneira, podemos trabalhar com as sequências ao longo do script, assim como dar razão ou justificativa aos valores combinados

n.pares <- c(2,4,6,8)

nomes.com.p <- 
  c("Pedro","Paula","Pietro","Paloma") 

valores.log <- c(TRUE,FALSE,TRUE,FALSE)
 


## Classes dos vetores

# Os vetores também possuem classes
# Essas categorias determinam as operações possíveis dentro de um vetor
# Para obter a informação sobre a classe de um vetor, utilizamos a função class()

class(n.pares)

class(nomes.com.p)

class(valores.log)
 



## Comprimento de vetores

# Os vetores podem ser medidos em relação ao seu comprimento
# O seu comprimento define a extensão do vetor, assim como quantos elementos estão presentes dentro da combinação de valores
# O comprimento pode ser medido pela função length()

length(n.pares)

length(nomes.com.p)

length(valores.log)
 




## Somatório de vetores

# Para vetores númerico podemos somar os valores de um vetor
# A função se chama sum() que corresponde ao $\sum$
  
sum(n.pares)

 
# Em vetores com valores lógicos, com TRUE e FALSE, o sum soma o número de T que temos dentro de um vetor


sum(valores.log)

 


## Somatório de vetores

# A função sum() pode se tornar ainda um contador de um teste
# Por exemplo, queremos saber quantos nomes são iguais ao de Pedro no vetor 'nomes.com.p'

teste1 <- nomes.com.p == "Pedro"

sum(teste1)

teste1
 


## Seleção de elementos

# Queremos selecionar no vetor nomes.com.p o segundo elemento que é Paula
# Vejamos, primeiro, como se compõe o vetor de caracteres nomes.com.p e a lógica do posicionamento dentro do vetor

nomes.com.p
 



## Seleção de elementos

# Vamos testar se Paula se inclui dentro do vetor sem termos que ver no console
# As vezes, vetores são maiores do que temos como exemplo
# O teste lógico, portanto, utilizamos o operado %in%, que retorna TRUE, caso o valor esteja incluso no vetor

"Paula" %in% nomes.com.p

## Seleção de elementos

# Para escolhar Paula, portanto, vamos definir como a segunda posição dentro do vetor

nomes.com.p[2]
 
# O posicionamento dos nomes ao longo do vetor determina como seleciona-lo individualmente
# Porém, podemos selecionar através do valor

nomes.com.p[nomes.com.p == "Paula"]
 


## Seleção de elementos

# Selecionamos também o último valor do vetor nomes.com.p
# Sabemos que o vetor possui 4 valores utilizando a função length()

length(nomes.com.p)
 
# Assim o último valor é igual a 4
# Para selecionarmos o último valor, ou definimos como a posição 4 ou apenas o length() do vetor

nomes.com.p[4]

nomes.com.p[length(nomes.com.p)]

 


## Seleção de elementos

# Para seleção de elementos através de regras, podemos utilizar o vetor númerico de n.pares

n.pares  <- c(2,4,6,8)

n.pares

 
# O objetivo aqui é selecionar os elementos maiores que 5, que é a mediana do vetor

median(n.pares)

 



## Seleção de elementos

# Selecionamos, assim, os elementos acima da mediana do vetor n.pares, que são os valores 6 e 8

n.pares[n.pares > 5]
 
# Ou ainda podemos definir o valor 5 como o valor da mediana
# O resultado é o mesmo, porém, deixa claro ao leitor do seu script que se trata dos valores acima da mediana do vetor n.pares

n.pares[n.pares > median(n.pares)]
 

# Operações matemáticas
## Operações com vetores
# Em vetores numéricos, podemos fazer operações matemáticas a partir do seu posicionamento
# Vamos calcular o alcance do vetor "n.pares"

#ultimo elemento 
n.pares[length(n.pares)]

#primeiro elemento
n.pares[1]

 
# Subtraindo esses dois elementos, temos o alcance do vetor

n.pares[length(n.pares)] - n.pares[1]

 


## Operações com vetores

# Ainda em vetores numéricos, vamos calcular vetores com regras
# Selecionamos elementos maiores que 5

n.pares[n.pares >= 5]

 
# Queremos duplicar os valores inclusos dentro da condição

n.pares[n.pares >= 5] * 2

 
# Por fim, operacionar um conjunto com um elemento

n.pares[n.pares >= 5] * n.pares[1]

 


## Conjuntos

# Utilizamos a teoria de conjuntos no R com a função de manipular e identificar elementos comuns ou diferente entre vetores
# Já temos o vetor "n.pares" e vamos criar um vetor com números naturais

n.naturais <- c(0,1,2,3,4,5,6,7,8,9)
n.naturais

 
# Se perguntarmos por valores que não estão no vetor "n.naturais", o resultado será conjunto vazio

n.naturais[n.naturais == 10]
 

## Conjuntos

# Outro ponto importante é saber se os elementos estão contidos dentro de outro vetor
# A pergunta a se fazer é: os elementos do vetor "n.pares" está contido no vetor "n.naturais"
# No R, contidos é igual a \%in\%
  
n.pares %in% n.naturais

 
# Isto é, o vetor "n.pares" está contido no vetor "n.naturais" e é um subconjunto
# Outra maneira, porém é utilizando a função is.element()

is.element(n.pares,n.naturais)

 
## Conjuntos

# Para encontrar os valores exclusivos de um conjunto, vamos utilizar a escrita da seleção de elementos
# Podemos incluir a notação de "!", que quer dizer diferente
# Portanto, selecionamos os valores que estão contido no conjunto dos naturais, porém não no conjunto dos valores pares

n.naturais[!is.element(n.naturais,n.pares)]

 


## Conjuntos

# Por fim, vamos testar se um valor está presente em um desses vetores
# Testaremos os valores 1, 11 e 21

1 %in% c(n.naturais,n.pares)

11 %in% c(n.naturais,n.pares)

21 %in% c(n.naturais,n.pares)
 
# Assim, não temos os valores 11 e 21 em nenhum dos vetores, entendidos como conjuntos 


# data.frame

## data.frame

# Um data.frame é o mesmo que uma tabela do SQL ou uma planilha Excel
# seus dados provavelmente serão importados para um objeto data.frame 

# data.frame’s são listas especiais em que todos os elementos possuem o mesmo comprimento.

# Cada elemento dessa lista pode ser pensado como uma coluna da tabela # ou como uma variável. Uso do '$'

# Seu comprimento representa o número de linhas # ou seja, de observações




## Ativar pacotes
 
  # Cada pacote, inclusive o foreign, tem uma documentação disponível na internet
  # Nessa documentação estão disponíveis as funções que o pacote possui, além do nome do seu criador
  # As função não ficam disponíveis assim que o pacote termina a instalação
  # Para ativar as funções do pacote, é preciso utilizar a função library()
 
library(foreign)
  
# Uma vez instalado o pacote, não é preciso instalar mais a não ser que você reinstale o R
 
 

# Importação de dados
## Passo a passo

setwd("/Volumes/Macintosh HD/MQCP_IPOL_2020/Slides/aula 02")
  
 
 

## Passo a passo
 
  # Esse diretório definido significa que as bases e os gráficos produzidos serão enviados para essa pasta
  # Finalmente, vamos importar as bases de dados
  # Primeiro, vamos importar a base de extensão txt com o nome baserm
  # Não é preciso de pacote para esse procedimento
 
lines <- readLines("dados/baserm.txt")

baserm <- read.table(text = lines, sep = '\t')

## Passo a passo
 
  # Vamos ativar as funções disponíveis no pacote readxl com a função library()
 
library(readxl)
  
  # Vamos importar a base controle_cgu_municípios.xlsx
 
cgu <- 
read_xlsx("dados/controle_cgu_municípios.xlsx")
  


## Importação por pacote 
library(electionsBR)
leg_df_2018 <- legend_fed(year = 2018,uf="DF")

## Visualizando a base
 
  # Primeira coisa importante de se informar é a classe desses objetos
  # Temos 4 objetos: baserm, cgu, educacao e pnad2018
 
class(baserm)

class(cgu)

class(leg_df_2018)
  
  

## Visualizando a base
 
  # Uma visão completa da base é o comando View()
  # Entretanto, cuidado, dependendo do tamanho da base, podemos travar o software
 
View(baserm)
  
  # Repare no V maiúsculo, lembre-se que o R é bastante sensível na sua linguagem
  # O View() abre uma nova aba com a base no formato de grade
  # Podemos, assim, visualizar a base de dados na forma mais intuitiva
 
 

## Visualizando a base
 
  # Porém, para bases como a pnad2018, por exemplo, sabemos que é grande demais para sua visualização ser feita através do View()
  # Algumas funções podem nos ajudar nessa tarefa
  # A primeira é o dim, que as dimensões da base
 
dim(leg_df_2018)
  
  # O primeiro valor sempre retrata o número de linhas, ou observações, enquanto o segundo valor apresenta o número de colunas, ou variáveis
  # A função ncol() e length() também indicam quantas colunas, ou variáveis estão presentes na base
 
 

## Visualizando a base
 
  # Outra função importante na visualização de bases de dados é a lista de nomes
  # A função names() descreve as variáveis presentes na base
  # Isso facilita no momento de selecionar as variáveis que entrarão na análise de vocês
 
names(cgu)

## Visualizando a base
 
  # Outra função possível é o str()
  # Essa função apresenta o nome das variáveis, a classe de cada uma delas e os primeiros valores
 
str(leg_df_2018)
  
 
 

## Visualizando a base
 
  # Finalmente, a função head() e tail()
  # A primeira função apresenta os primeiros valores de uma base de dados
 
head(baserm,2)
  
  # O segundo argumento serve para indicar quantas linhas serão apresentadas
  # Tail(), por outro lado, apresenta os últimos valores de uma base de dados
 
tail(baserm,4)
  
 


# O Universo tidyverse


## Usando o pipe # O operador %>%

library(tidyverse)
library(magrittr)



## E se aumentarmos o código?

#Vamos calcular a raiz quadrada da soma dos valores de 1 a 4.
x <- c(1, 2, 3, 4)

#Primeiro, sem o pipe.
soma_x <- sum(x) #somando x
raiz_soma_x <- sqrt(soma_x) # tirando raiz quadrada da soma
raiz_soma_x


sqrt(sum(x))

#Agora com o pipe.

c(1, 2, 3, 4) %>% 
  sum %>% 
  sqrt

x %>% 
  sum %>% 
  sqrt


## Tidy data e janitor
library(janitor)


# Pacotes `dplyr` e `tidyr`

## Conjunto de dados

#Vamos trabalhar com a base `decisoes`, que contém decisões do Tribunal de Justiça de São Paulo


decisoes <- read_rds("dados/decisoes.rds")
glimpse(decisoes)





decisoes <- read_rds("dados/decisoes.rds") %>%
  janitor::clean_names() # com dois pontos eu não preciso usar library
glimpse(decisoes)




## Características do `dplyr`


# select

## `select`

# Utilizar `starts_with(x)`, `contains(x)`, `matches(x)`, `one_of(x)`, etc.
# Possível colocar nomes, índices, e intervalos de variáveis com `:`.

## Em ação


decisoes %>% 
  select(id_decisao, n_processo, municipio, juiz)


## Em ação


decisoes %>% 
  select(classe_assunto:id_decisao, juiz)


## Em ação


decisoes %>% 
  select(id_decisao, starts_with('data_'))



## Operações

# selecione as colunas que acabam com "cisao".


decisoes %>% 
  select(ends_with("cisao"))


## Operações 
# tire as colunas de texto = 'txt_decisao' e classe/assunto = 'classe_assunto'.
    # Dica: veja os exemplos de `?select` em `Drop variables ...`


decisoes %>% 
  select(-classe_assunto, -txt_decisao)


# filter

## `filter`


decisoes %>% 
  select(n_processo, id_decisao, municipio, juiz) %>% 
  filter(municipio == 'São Paulo')


## Dica: usar `%in%`

library(lubridate) # para trabalhar com as datas
#`day(dmy(data_decisao))` pega o dia da decisão. 



decisoes %>% 
  select(id_decisao, municipio, data_decisao, juiz) %>% 
  # municipio igual a campinas ou jaú, OU dia da decisão maior ou igual a 25
  filter(municipio %in% c('Campinas', 'Jaú') | day(dmy(data_decisao)) >= 25)




## Mais ação


decisoes %>% 
  select(juiz) %>% 
  # filtra juízes que têm `Z` ou `z` no nome
  filter(str_detect(juiz, regex("z", ignore_case = TRUE))) %>% 
  # conta e ordena os juizes em ordem decrescente
  count(juiz, sort = TRUE) %>%
  head(5)

## 

# filtre apenas casos em que `id_decisao` não é `NA`
decisoes %>% 
  filter(is.na(id_decisao))



##

# filtre todas as decisões de 2018.

# Dica: função `lubridate::year()`
decisoes %>% 
  filter(year(dmy(data_decisao)) == 2018)


# mutate

## `mutate`

# Aceita várias novas colunas iterativamente.

# Novas variáveis devem ter o mesmo `length` que o `nrow` do bd original ou `1`.

## `mutate` em ação

decisoes %>% 
  select(n_processo, data_decisao, data_registro) %>% 
  mutate(tempo = dmy(data_registro) - dmy(data_decisao))


## 

# Crie uma coluna binária `drogas` que vale `TRUE` se no texto da decisão algo é falado de drogas e `FALSE` caso contrário. 
# Dica: `str_detect`

#Obs.: Considere tanto a palavra 'droga' como seus sinônimos, ou algum exemplo de droga e retire os casos em que `txt_decisao` é vazio


decisoes %>% 
  filter(!is.na(txt_decisao)) %>% 
  mutate(txt_decisao = tolower(txt_decisao),
         droga = str_detect(txt_decisao,
    "droga|entorpecente|psicotr[óo]pico|maconha|haxixe|coca[íi]na")) %>%
  dplyr::select(n_processo,droga) 
  


# summarise

## `summarise`

# Retorna um vetor de tamanho `1` a partir de uma operação com as variáveis (aplicação de uma função).
# Geralmente é utilizado em conjunto com `group_by()`.
# Algumas funções importantes: `n()`, `n_distinct()`.

## Em ação

decisoes %>% 
  select(n_processo, municipio, data_decisao) %>%
  #        pega ano da decisão
  mutate(ano_julgamento = year(dmy(data_decisao)),
         # pega o ano do processo 0057003-20.2017.8.26.0000" -> "2017"
         ano_proc = str_sub(n_processo, 12, 15),
         # transforma o ano em inteiro
         ano_proc = as.numeric(ano_proc),
         # calcula o tempo em anos
         tempo_anos = ano_julgamento - ano_proc) %>% 
  group_by(municipio) %>% 
  summarise(n = n(),
            media_anos = mean(tempo_anos),
            min_anos = min(tempo_anos),
            max_anos = max(tempo_anos)) 


## Resultado



decisoes %>% 
  select(n_processo, municipio, data_decisao) %>%
  #        pega ano da decisão
  mutate(ano_julgamento = year(dmy(data_decisao)),
         # pega o ano do processo 0057003-20.2017.8.26.0000" -> "2017"
         ano_proc = str_sub(n_processo, 12, 15),
         # transforma o ano em inteiro
         ano_proc = as.numeric(ano_proc),
         # calcula o tempo em anos
         tempo_anos = ano_julgamento - ano_proc) %>% 
  group_by(municipio) %>% 
  summarise(n = n(),
            media_anos = mean(tempo_anos),
            min_anos = min(tempo_anos),
            max_anos = max(tempo_anos)) 



## usando `count()`

#A função `count()`, simplifica um `group_by %>% summarise %>% ungroup`:


decisoes %>% 
  count(juiz, sort = TRUE) %>% 
  mutate(prop = n / sum(n), 
         prop = scales::percent(prop))



## + fácil ainda

#mas sem formato %


decisoes %>% 
  count(juiz, sort = TRUE) %>% 
  mutate(prop = prop.table(n))



# arrange

## `arrange`


## 


decisoes %>% 
  filter(!is.na(txt_decisao)) %>% 
  mutate(tamanho = str_length(txt_decisao)) %>% 
  group_by(juiz) %>% 
  summarise(n = n(), 
            tamanho_mediana = median(tamanho)) %>% 
  filter(n >= 10) %>% 
  arrange(desc(tamanho_mediana)) %>%
  head()






