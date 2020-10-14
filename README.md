# Trabalho de Conclusão de Curso - PUC Minas

**Aluno**: Rafael da Silva Rosa (**RE: 1223770**)

Este trabalho tem como objetivo avaliar os dados de lutas do UFC e validar a performance de alguns Modelos de Machine Learning para avaliar a previsão de qual lutador irá vencer com base a algumas informações da luta.

- **Fontes de dados**: https://www.kaggle.com/rajeevw/ufcdata


- **Scrapping e enriquecimento dos dados dos lutadores**:
    - https://www.tapology.com/fightcenter/fighters/
    - https://www.sherdog.com/fighter/
	
## Introdução

**O que é (MMA)**: 

    "As artes marciais mistas (MMA) são um esporte de combate de contato que permitem uma ampla variedade de técnicas e habilidades de luta, a partir da mistura de vários outros esportes de combate. As regras permitem o uso de golpes tanto em pé quanto no chão. A arte possibilita que atletas de diferentes origens participem da competição"
    
Além das diferentes estilos de luta existentes, no MMA existem as seguintes formas de vencer:

- **Finalização**: quando o atleta comunica desistência de forma física (usando a mão, dando tapas no chão) ou verbal.
- **Nocaute**: quando o atleta fica inconsciente ou desacordado por causa de golpes ou impacto.
- **Nocaute Técnico**: o árbitro interrompe a luta.
- **Decisão via pontuação, incluindo Unânime**: todos os juízes escolhem o mesmo atleta como vencedor.
- **Dividida**: um juiz escolhe um atleta e os outros dois juízes, o adversário.
- **Majoritária**: dois juízes escolhem o mesmo atleta como vencedor. O terceiro juiz vê empate.
- **Empate**: pode ser unânime, majoritário ou dividido.

**Fonte**: https://www.ufc.com.br/intro-mma