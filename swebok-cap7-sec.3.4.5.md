# CAP 7: Manutenção de software

## Table of contents

[Seção 3: processo-de-manutenção-de-software](#seção-3-processo-de-manutenção-de-software)

[Seção 4: técnicas de manutenção de software](#seção-4-técnicas-de-manutenção-de-software)

[Seção 5: ferramentas de manutenção de software](#seção-5-ferramentas-de-manutenção-de-software)


## Seção 3: Processo de manutenção de software

O processo de manutenção contém as atividades e tarefas necessárias para operar e modificar um sistema de software existente, preservando sua integridade. Essas atividades e tarefas são responsabilidade do operador e do mantenedor. Como já mencionado, muitas atividades de manutenção são semelhantes às de desenvolvimento de software. Os mantenedores realizam análise, design, codificação, testes e documentação. Eles devem acompanhar os requisitos em suas atividades - assim como no desenvolvimento - e atualizar a documentação à medida que as linhas de base mudam. A norma ISO/IEC/IEEE 14764 recomenda que, quando um mantenedor utiliza um processo de desenvolvimento, o processo deve ser adaptado para atender a necessidades específicas.

No entanto, existem vários processos, atividades e práticas especializadas para a manutenção de software:

**Compreensão do programa**: Compreende as atividades necessárias para obter um conhecimento geral do que um produto de software faz e como as partes funcionam juntas.

**Transição:** Esta é uma sequência controlada e coordenada de atividades durante as quais o software é transferido progressivamente do desenvolvedor para a equipe de operações e manutenção.

**Aceitação/rejeição de MR (Modificação/Requisição):** Modificações que requerem trabalho maior do que o tamanho, nível de esforço ou complexidade acordados podem ser rejeitadas pelos mantenedores e redirecionadas para um desenvolvedor.

**Help desk de manutenção:** O help desk é uma função de suporte coordenada entre o usuário final e a manutenção que aciona a avaliação, priorização e custeio de MRs e incidentes.
Análise de impacto: A análise de impacto identifica áreas afetadas por uma mudança potencial.

**Indicadores de nível de serviço (SLIs), objetivos de nível de serviço (SLOs), SLAs, e licenças e contratos de software e hardware de manutenção:** Estes são acordos contratuais que descrevem os serviços e objetivos de qualidade de terceiros.

#### Resumo: introdução

O processo de manutenção de software envolve atividades e tarefas para operar e modificar sistemas, preservando sua integridade. Responsabilidades incluem análise, design, codificação, testes e documentação. A norma ISO/IEC/IEEE 14764 recomenda adaptar processos de desenvolvimento às necessidades de manutenção. Atividades específicas incluem compreensão do programa, transição de software, aceitação/rejeição de modificações, help desk de manutenção, análise de impacto e gestão de contratos e SLAs.

### Atividades de Suporte e Monitoramento

Os mantenedores também podem realizar atividades de suporte contínuo, como documentação, Gestão de Configuração de Software (SCM), verificação e validação (V&V), resolução de problemas, garantia de qualidade de software (SQA), revisões, avaliações de vulnerabilidade e auditorias. Outra atividade importante de gestão dos resultados de manutenção é o monitoramento da satisfação do cliente.

### Atividades de Planejamento

Uma atividade importante para a manutenção de software é o planejamento, e este processo deve abordar questões associadas a várias perspectivas de planejamento, incluindo as seguintes:

- Planejamento de negócios (nível organizacional)

- Planejamento de manutenção (nível de transição)

- Planejamento de versão/lançamento (nível de software)

- Planejamento de requisições de modificação (nível de requisição individual)

No nível de requisição individual, o planejamento é realizado durante a análise de impacto. A atividade de planejamento de versão/lançamento exige que o mantenedor faça o seguinte:

- Colete as datas de disponibilidade das requisições individuais.

- Concorde com os usuários sobre o conteúdo das próximas versões/lançamentos.

- Identifique potenciais conflitos e desenvolva alternativas.

- Avalie o risco de uma determinada versão e desenvolva um plano de recuo caso surjam problemas.

- Informe todas as partes interessadas.

Enquanto os projetos de desenvolvimento de software têm uma duração típica de meses a alguns anos, a fase de manutenção geralmente dura até que o software seja desativado pelo processo de descarte. Estimar recursos é um elemento chave do planejamento de manutenção. O planejamento da manutenção de software deve começar com a decisão de desenvolver um novo produto de software e deve considerar os objetivos de qualidade. Um documento conceitual deve ser desenvolvido, seguido por um plano de manutenção, que deve abordar o seguinte:

- Escopo da manutenção de software.

- Adaptação dos processos e ferramentas de manutenção de software.

- Identificação da organização de manutenção de software.

- Estimativa dos custos de manutenção de software.

Um plano de manutenção de software deve ser preparado durante o desenvolvimento do software e deve especificar como os usuários solicitarão modificações e relatarão problemas ou questões. O planejamento da manutenção de software é abordado na norma ISO/IEC/IEEE 14764. Finalmente, no nível mais alto de gestão, a organização de manutenção deve conduzir atividades de planejamento de negócios de manutenção de software (por exemplo, atividades de comunicação, orçamentárias, financeiras e de recursos humanos).

#### Resumo: Atividades de Suporte e Monitoramento

Os mantenedores realizam suporte contínuo, incluindo documentação, SCM, V&V, resolução de problemas, SQA, revisões, avaliações de vulnerabilidade e auditorias. Monitorar a satisfação do cliente é crucial.

#### Resumo: Atividades de Planejamento

O planejamento da manutenção de software abrange várias perspectivas: negócios, transição, versões/lançamentos e requisições individuais. Inclui coleta de datas, acordo sobre conteúdo, identificação de conflitos, avaliação de riscos e comunicação com stakeholders. A fase de manutenção dura até o descarte do software. Estimativas de recursos e objetivos de qualidade são essenciais. O planejamento deve começar com a decisão de desenvolver um novo software, incluindo um documento conceitual e um plano de manutenção, conforme ISO/IEC/IEEE 14764.

### Gestão de Configuração 

A norma ISO/IEC/IEEE 14764 [1] descreve a Gestão de Configuração de Software (SCM) como um sistema ou serviço de suporte ao processo de manutenção. Os procedimentos de SCM devem prever a verificação, validação e auditoria de cada etapa necessária para identificar, autorizar, implementar e liberar o produto de software e seus ativos de TI que estão passando por mudanças.

Não é suficiente rastrear apenas requisições de modificação (MRs) ou requisições de problemas (PRs). Qualquer mudança feita no produto de software e em sua infraestrutura subjacente deve ser controlada. Esse controle é estabelecido pela implementação e aplicação de um processo de SCM aprovado. A área de conhecimento (KA) de SCM discute em mais detalhes a SCM, bem como o processo pelo qual as requisições de mudança são submetidas, avaliadas e aprovadas. A SCM para manutenção de software difere da SCM para desenvolvimento de software na quantidade de pequenas mudanças que devem ser controladas no ambiente operacional.

O processo de SCM é implementado desenvolvendo e seguindo um plano de SCM e procedimentos operacionais. Os mantenedores participam de conselhos de controle de configuração para determinar o conteúdo da próxima versão ou lançamento em produção.

#### Resumo Gestão de Configuração (SCM)

A ISO/IEC/IEEE 14764 define a SCM como um suporte essencial ao processo de manutenção, que inclui verificação, validação e auditoria de cada etapa para identificar, autorizar, implementar e liberar mudanças no software e sua infraestrutura. Não basta rastrear requisições de modificação e problemas; todas as mudanças devem ser controladas através de um processo de SCM aprovado. A SCM na manutenção difere do desenvolvimento devido ao maior número de pequenas mudanças no ambiente operacional. O processo é implementado via um plano de SCM e procedimentos operacionais, com mantenedores participando de conselhos de controle de configuração para decidir o conteúdo das próximas versões.

### Qualidade de Software 

Não é suficiente simplesmente esperar que a manutenção de software produza software de alta qualidade. Os mantenedores devem ter um programa de qualidade eficaz. Eles devem implementar processos para apoiar a melhoria contínua dos processos de manutenção de software. As atividades e técnicas de Garantia de Qualidade de Software (SQA), Verificação e Validação (V&V), revisões e auditorias devem ser selecionadas em conjunto com todos os outros processos para alcançar o nível desejado de qualidade. Também é recomendado que tanto as operações quanto a manutenção de software adaptem e utilizem os resultados do processo de desenvolvimento de software, suas técnicas e entregáveis (por exemplo, ferramentas de teste e documentação), e resultados de testes. Mais detalhes sobre qualidade de software podem ser encontrados na área de conhecimento (KA) de Qualidade de Software.

#### Resumo: Qualidade de Software

Para garantir alta qualidade na manutenção de software, os mantenedores devem implementar um programa de qualidade eficaz e processos de melhoria contínua. As atividades de SQA, V&V, revisões e auditorias devem ser integradas com outros processos para alcançar a qualidade desejada. É recomendável que operações e manutenção adaptem e utilizem os resultados do desenvolvimento de software, incluindo ferramentas de teste e documentação. Detalhes adicionais estão disponíveis na área de conhecimento de Qualidade de Software.

## Seção 4: Técnicas de Manutenção de Software 

Este tópico apresenta técnicas geralmente aceitas utilizadas na manutenção de software.

### Compreensão de Programas 

Os mantenedores passam considerável tempo lendo e entendendo programas para implementar mudanças. Navegadores de código são ferramentas essenciais para a compreensão de programas e são usados para organizar e apresentar o código-fonte. Documentação clara e concisa também auxilia na compreensão de programas.

### Reengenharia de Software

A reengenharia de software refere-se à análise e alteração de software para reconstituí-lo em uma nova forma. Inclui a subsequente implementação da nova forma. Muitas vezes, não é realizada para melhorar a manutenibilidade, mas para substituir software legado antigo. Refatoração é uma técnica de reengenharia que visa reorganizar um programa sem alterar seu comportamento. A refatoração busca melhorar a estrutura interna e a manutenibilidade do software. Técnicas de refatoração podem ser usadas durante atividades de manutenção para reduzir a dívida técnica da base de código antes e depois das mudanças de código. No contexto do desenvolvimento ágil de software, a natureza incremental da integração contínua (CI) muitas vezes requer que o código seja continuamente refatorado para aumentar sua qualidade e confiabilidade. Assim, a refatoração contínua apoia o ciclo de vida volátil do software, proporcionando melhores maneiras de reduzir e gerenciar a crescente complexidade dos sistemas de software, ao mesmo tempo que melhora a produtividade dos desenvolvedores.

### Engenharia Reversa 

Engenharia reversa é o processo de analisar software para identificar seus componentes e suas inter-relações e criar representações do software em outra forma ou em níveis mais altos de abstração. A engenharia reversa é passiva; não altera o software nem resulta em novo software. Esforços de engenharia reversa geralmente produzem representações gráficas de diferentes artefatos de software, como gráficos de chamadas e gráficos de fluxo de controle a partir do código-fonte. Tipos de engenharia reversa incluem:

- Re-documentação.

- Recuperação de design.

- Engenharia reversa de dados — recuperação de esquemas lógicos a partir de bancos de dados físicos.

Ferramentas são essenciais para engenharia reversa e tarefas relacionadas, como re-documentação e recuperação de design. Visualização de software é uma técnica comum de engenharia reversa que ajuda os mantenedores a explorar, analisar e entender a estrutura dos sistemas de software, bem como sua evolução. Visualização de software compreende a codificação visual e análise de sistemas de software, incluindo práticas de manutenção de software, evolução, estrutura e comportamento de execução do software, usando visualização de informações, gráficos por computador e interação homem-computador. Geralmente, ferramentas de visualização de software são acompanhadas por vários recursos de garantia de qualidade, como cálculo de métricas de qualidade, estimativa de dívida técnica e detecção de práticas de design e codificação inadequadas (code smells).

### Integração Contínua, Entrega, Testes e Implantação 

Automatizar tarefas relacionadas ao desenvolvimento, operação e manutenção economiza recursos de engenharia. Quando implementadas adequadamente, essas tarefas automatizadas são geralmente mais rápidas, fáceis e confiáveis do que se realizadas manualmente. A ISO14764 afirma que a automação inclui a distribuição e instalação de software.[1, s6.4.13.3 Nota 1]. DevOps suporta essa automação ao construir, empacotar e implantar sistemas confiáveis e seguros. DevOps combina recursos e procedimentos de desenvolvimento, operações e manutenção para realizar integração contínua (CI), entrega, testes e implantação. [9]

A CI é uma prática de engenharia de software que continuamente mescla artefatos, incluindo atualizações de código-fonte de todos os membros de uma equipe, em uma linha principal compartilhada para evoluir e testar o sistema desenvolvido. Com a CI, os membros de uma equipe podem integrar suas mudanças frequentemente, e cada integração pode ser verificada por uma build automatizada (incluindo testes) para detectar erros de integração o mais rápido possível. O objetivo fundamental da CI é detectar mudanças problemáticas o mais cedo possível. A CI ajuda a garantir o estado funcional de um sistema de software em vários pontos, desde a build até a liberação, melhorando assim a confiança e a qualidade nos produtos de software e aumentando a produtividade das equipes. Especificamente, a CI automatiza os processos de build e liberação com build contínua, entrega contínua, testes contínuos e implantação contínua. [6, c23, c24].

A entrega contínua é uma prática de engenharia de software que permite lançamentos frequentes de novos sistemas (incluindo software) para ambientes de staging ou diversos ambientes de teste por meio de ferramentas automatizadas. A entrega contínua monta continuamente o código mais recente e a configuração para criar candidatos a lançamento.

Os testes contínuos são uma prática de teste de software que envolve testar o software em cada estágio do ciclo de vida do desenvolvimento de software. O objetivo dos testes contínuos é avaliar a qualidade do software em cada etapa do processo de entrega contínua, testando cedo e frequentemente. Os testes contínuos envolvem várias partes interessadas, como desenvolvedores, mantenedores, DevOps, SQA e equipes de sistemas operacionais.

A implantação contínua é um processo automatizado de implantação de mudanças em produção, verificando recursos e validações pretendidos para reduzir riscos. Como Martin Fowler, no livro "Continuous Delivery", apontou, “O maior risco em qualquer esforço de software é acabar construindo algo que não seja útil. Quanto mais cedo e mais frequentemente você coloca o software funcional na frente de usuários reais, mais rápido você obtém feedback para descobrir o quão valioso ele realmente é.”

### Visualização da Manutenção

Manter uma compreensão clara das estruturas e dependências em evolução dos sistemas de software apresenta um desafio. A visualização é um apoio valioso na gestão da manutenção de software, oferecendo uma representação visual dos componentes do software e ajudando a tomar decisões informadas. Com o aumento do tamanho e complexidade dos sistemas de software, as representações visuais podem apoiar a manutenção de software permitindo a análise de dependências, traçando a história da evolução do software, visualizando a dinâmica de execução do software e fornecendo documentação complementar. A visualização representa uma área de pesquisa ativa que sinergiza capacidades computacionais com habilidades de detecção de padrões humanos. Produz representações visuais projetadas para melhorar o desempenho cognitivo da equipe de manutenção ao enfrentar análises de dados complexas.

#### Resumo Técnicas de Manutenção de Software

As técnicas de manutenção de software incluem:

**Compreensão de Programas:** Os mantenedores usam navegadores de código e documentação clara para entender programas e implementar mudanças.

**Reengenharia de Software:** Envolve a análise e alteração do software para reconstituí-lo em nova forma, com refatoração sendo uma técnica para melhorar a estrutura interna sem alterar o comportamento. Refatoração contínua é crucial no desenvolvimento ágil.

**Engenharia Reversa:** Analisa o software para identificar componentes e criar representações em níveis mais altos de abstração, sem modificar o software. Inclui re-documentação, recuperação de design e engenharia reversa de dados. Ferramentas e visualização de software são essenciais para essas atividades.

**Integração Contínua, Entrega, Testes e Implantação**

A automação de tarefas de desenvolvimento, operação e manutenção economiza recursos e melhora a confiabilidade. DevOps facilita essa automação, combinando desenvolvimento, operações e manutenção para realizar integração contínua (CI), entrega, testes e implantação. CI envolve a fusão contínua de código, testes automatizados e builds para detectar erros rapidamente. A entrega contínua permite lançamentos frequentes usando ferramentas automatizadas, enquanto os testes contínuos avaliam a qualidade em cada etapa. A implantação contínua automatiza a implantação em produção, reduzindo riscos.

**Visualização da Manutenção**

A visualização é essencial para compreender as estruturas e dependências dos sistemas de software. Ela ajuda a equipe de manutenção a tomar decisões informadas, analisando dependências, traçando a evolução do software e visualizando a dinâmica de execução. Representações visuais melhoram o desempenho cognitivo em análises complexas, combinando computação e habilidades humanas de detecção de padrões.

### Seção 5: Ferramentas de Manutenção de Software

Este tópico abrange ferramentas que são particularmente importantes na manutenção de software, onde o software existente está sendo modificado. Ferramentas de manutenção estão inter-relacionadas com ferramentas de desenvolvimento e operações. Juntas, elas fazem parte do SEE. Os seguintes são exemplos de ferramentas de manutenção:
    
- Ferramentas de gerenciamento de configuração, versionamento de código e revisão de código,
    
- Ferramentas de teste de software,
    
- Ferramentas de avaliação da qualidade de software (para avaliar dívida técnica e qualidade do código).
    
- Fatiadores de programas, que selecionam apenas as partes de um programa afetadas por uma mudança.
    
- Analisadores estáticos, que permitem a visualização geral e resumos do conteúdo do programa.
    
- Analisadores dinâmicos, que permitem ao mantenedor rastrear o caminho de execução de um programa.
    
- Analisadores de fluxo de dados, que permitem ao mantenedor rastrear todos os possíveis fluxos de dados de um programa.
    
- Ferramentas de referência cruzada, que geram índices dos componentes do programa.
    
- Analisadores de dependência, que ajudam os mantenedores a analisar e entender as inter-relações entre os componentes de um programa.
    
- Ferramentas de Acesso Remoto, permitindo aos mantenedores diagnosticar e modificar sistemas de usuários remotamente, crucial para a resolução de problemas em tempo real e modificações contínuas em diferentes ambientes.

Ferramentas de engenharia reversa apoiam o processo trabalhando de trás para frente a partir de um produto existente para criar artefatos como especificações e descrições de design, que podem então ser transformados para gerar um novo produto a partir de um antigo. Mantenedores também usam testes de software, SCM, documentação de software e ferramentas de medição de software.

#### Resumo Ferramentas de Manutenção de Software

Ferramentas de manutenção de software são essenciais para modificar software existente e estão interligadas com ferramentas de desenvolvimento e operações. Exemplos incluem ferramentas de gerenciamento de configuração, versionamento de código, revisão de código, teste de software, avaliação da qualidade do software, fatiadores de programas, analisadores estáticos e dinâmicos, analisadores de fluxo de dados, ferramentas de referência cruzada, analisadores de dependência e ferramentas de acesso remoto. Ferramentas de engenharia reversa ajudam a criar novos produtos a partir de antigos, e mantenedores também utilizam testes de software, SCM, documentação de software e ferramentas de medição de software.