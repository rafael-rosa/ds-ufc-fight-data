#************************ CONFIGURACAO ********************
#Mapear diretorio de trabalho
getwd()
#Atenção: Alterar Diretorio
setwd("C:\\Users\\Camila Melo\\Documents\\Estudos\\PUC\\17. TCC Rafael")

#Libs
library(GGally)
library(tidyverse)
library(ggplot2)
library(Hmisc)
library(magrittr)
library(factoextra)
#******************* LEITURA DOS DADOS ********************

#Leitura da Base de Dados
df_combat=read.table("processed_fight_data.csv", header = TRUE, sep = ",", dec = ".")

#Verificar variáveis
names(df_combat)
summary(df_combat)

summarytools::dfSummary(df_combat) %>% 
  summarytools::view()

#**********************************************************

# ++++++++++++++++++++++++++++
# flattenCorrMatrix
# ++++++++++++++++++++++++++++
# cormat : matrix of the correlation coefficients
# pmat : matrix of the correlation p-values
flattenCorrMatrix <- function(cormat, pmat) {
  ut <- upper.tri(cormat)
  data.frame(
    row = rownames(cormat)[row(cormat)[ut]],
    column = rownames(cormat)[col(cormat)[ut]],
    cor  =(cormat)[ut],
    p = pmat[ut]
  )
}


res2<-rcorr(as.matrix(df_combat[,1:7]))
flattenCorrMatrix(res2$r, res2$P)

df <- df_combat[c(0:10)]

ggpairs(df, title="Grafico de correlacao - Lutas")

df %>%
  #select(-Win_Model) %>% #Desconsiderando país e selecionar as demais variáveis 
  gather(var, valor) %>% 
  ggplot(aes(y = valor, fill = var)) +
  geom_boxplot() +
  facet_wrap(~var, scales = "free") + # "facet_wrap(~var, scales = "free") +" para deixar escala livre
  theme(legend.position = "none")

#Cálculo da distância euclidiana entre os elementos
distancia_c <- dist(df[,-1], method="euclidean") #Cálculo das distâncias euclidianas
distancia_c


#(d) Faça a análise de agrupamento usando o método os 5 métodos 
#apresentados e sugira a quantidade de grupos após a análise do 
#Dendrograma, e comente seus aspectos.

clust_complete_c <- hclust(distancia_c, method="complete")
fviz_dend(clust_complete_c, main = "Método Complete")
fviz_dend(clust_complete_c, k = 3, main = "Método Complete")
print(clust_complete_c$height)