# Lista 02 ###

# Obs.: os arquivos referentes à Lista 2 encontram-se na pasta 'dados', no menu 
# 'arquivos', na sala 'E04 - 05.out' de nossa disciplina.


# 1 (3 pontos) ----

# Crie um único objeto combinado, contendo informações sobre os tamanhos das bancadas 
# dos partidos (arquivo `bancadas.rds`), 
# suas respectivas coligações eleitorais para 2018 (arquivo `coligacoes.xlsx`) e 
# o grau de concordância com a agenda do Gov Temer (arquivo `governismo_temer.xlsx`). 


# 2 (3 pontos) ----

# Com base no objeto criado:

# 2.1 Crie uma variável (uma coluna) unindo as variáveis departido e candidato, 
# chamada 'candidato_sigla', sem excluir as variáveis originais.

# 2.2 Crie uma variável categórica, baseada na concordância com o governo Temer,
# indicando se o partido era governo ou oposição a Temer (por favor, explicite os critérios) 
# dica: pesquise sobre o uso da função 'case_when' em conjunto com a função 'mutate'


## 3 (3 pontos) ----

# identifique:

# 3.1 qual candidato tem a COLIGAÇÃO com menor média de concordância com a agenda do Governo Temer e 

# 3.2 qual candidato tem a COLIGAÇÃO com maior proporção total de assentos.


# 4 (1 ponto) ----

# Documente o processo (no decorrer do script) e esboce, de maneira bastante simples, 
# em separado, seu Fluxo de trabalho, incluindo:
# 1 Coleta
# 2 Análise
# 3 Comunicação