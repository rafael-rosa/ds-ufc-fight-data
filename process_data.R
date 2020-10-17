#************************ CONFIGURACAO ********************
#Mapear diretorio de trabalho
getwd()

#Libs
library(GGally)
library(tidyverse)
library(ggplot2)
#******************* LEITURA DOS DADOS ********************

#Leitura da Base de Dados
df_combat=read.table("data\\processed_fight_data.csv", header = TRUE, sep = ",", dec = ".", quote="\"")

#Verificar variáveis
names(df_combat)
summary(df_combat)

summarytools::dfSummary(df_combat) %>% 
  summarytools::view()

#**********************************************************