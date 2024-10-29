# CAP 9: Gestão de Engenharia de Software

## Table of contents

[Seção 3: Execução de Projetos de Software](#seção-3-processo-de-manutenção-de-software)

[Seção 4: técnicas de manutenção de software](#seção-4-técnicas-de-manutenção-de-software)

[Seção 5: ferramentas de manutenção de software](#seção-5-ferramentas-de-manutenção-de-software)

## Seção 3 Execução de Projetos de Software

Durante a realização de um **projeto de software** (também conhecida como **execução do projeto**), os **planos são implementados** e os **processos incorporados** nos planos **são realizados**. Ao longo do processo, deve haver um **foco na adesão aos processos do SDLC selecionados**, com uma expectativa predominante de que essa adesão atenderá aos requisitos das partes interessadas e alcançará os objetivos do projeto. Fundamental para a realização do projeto são as atividades contínuas de gerenciamento de monitoramento, controle e relatório.

### Implementação dos Planos

As atividades do projeto devem seguir o plano do projeto e os planos de suporte. As atividades do projeto utilizam recursos (pessoal, tecnologia e financiamento) e geram produtos de trabalho (design de software, código de software e casos de teste de software).

### Aquisição de Software e Gestão de Contratos com Fornecedores

- pega os trem q precisa pra fazer o software (bibliotecas, IDEs), cuidado com vulnerabilidades de segurança

A aquisição de software e a gestão de contratos com fornecedores tratam das **questões envolvidas na contratação de clientes** da organização de desenvolvimento de software que adquirem os produtos de trabalho entregáveis e com fornecedores que fornecem produtos ou serviços para a organização de engenharia de software.

A aquisição de software é uma prática comum em projetos de desenvolvimento de software, com **ambientes de desenvolvimento integrados (IDEs)** e **bibliotecas de pacotes** permitindo que engenheiros de software adquiram bibliotecas de terceiros com passos mínimos, facilitando a avaliação de risco, legalidade e adequação.

No entanto, o software não é mais adquirido exclusivamente como um produto embalado através de um processo complexo de cadeia de suprimentos e rota de compra. A facilidade de adquirir software resultou em uma superfície de ataque comum e levou a vulnerabilidades de segurança. As organizações devem considerar a introdução de controles técnicos ou procedimentais para minimizar os riscos potencialmente expostos pelo acesso não filtrado a repositórios de bibliotecas externas.

As diferentes classes de aquisição de software incluem 

- **software comercial pronto para uso** (COTS) — um produto existente adquirido "como está" de outro fornecedor de software, com termos de licença aplicáveis; 

- **software desenvolvido exclusivamente para a organização por outra parte** — tipicamente contratado e, às vezes, uma customização de software COTS;

- **software de código aberto** — nominalmente gratuito, embora a organização possa comprar suporte ou manutenção aprimorada e deve revisar a licença para restrições de uso;

- **software emprestado pelo cliente** — tipicamente para fornecer simulação ou integração com outro elemento do sistema;

- **software como serviço (SaaS)** — que pode incluir software que a organização aluga para atender a uma necessidade particular (por exemplo, um ambiente de hospedagem em nuvem, controle de versão ou desenvolvimento).

Os **projetos de software** geralmente usam diferentes abordagens de aquisição para obter os componentes de software necessários. No entanto, independentemente de como os componentes de software são obtidos, **as seguintes atividades devem ser realizadas**:

- verificar se cada componente está completo, correto e consistente em relação ao design arquitetônico e aos requisitos de software para aquele componente;

- integrar os componentes;

- verificar se os componentes integrados estão corretos, completos e consistentes em relação ao design arquitetônico e aos requisitos de software;

- validar se os componentes integrados satisfarão seu propósito pretendido quando usados em seu ambiente operacional pretendido.

Diferentes abordagens de aquisição (para obter componentes de software) requerem diferentes abordagens para gerenciar o projeto. Por exemplo, o desenvolvimento personalizado requer planejamento detalhado para os números e habilidades dos desenvolvedores de software, organização das equipes de desenvolvimento, alocação de requisitos para as equipes, especificação de métricas do projeto a serem coletadas, monitoramento do progresso e aplicação de ações corretivas quando o progresso real não estiver de acordo com o progresso planejado. A licenciamento de componentes envolve

- a avaliação de componentes candidatos;

- a seleção de componentes apropriados;

- e a negociação de termos, condições e datas de entrega para os componentes selecionados.

Isso pode envolver a seleção de contratos apropriados, como preço fixo, tempo e material, custo mais taxa fixa e custo mais taxa de incentivo. Os acordos com clientes e fornecedores geralmente especificam o escopo do trabalho e os entregáveis. Os acordos também podem incluir cláusulas especiais, como cláusulas que estabelecem penalidades por atraso na entrega ou não entrega, e acordos de propriedade intelectual que especificam o que os fornecedores estão fornecendo e o que o adquirente está pagando, além do que será entregue e de propriedade do adquirente. Para software desenvolvido por fornecedores (tanto internos quanto externos à organização de desenvolvimento de software), os acordos geralmente estabelecem requisitos de qualidade de software.

Nos contratos de software com fornecedores, a aquisição de conjuntos de dados é geralmente importante. Inclui o processo de obtenção de conjuntos de dados específicos de fornecedores externos ou parceiros como parte de um projeto de desenvolvimento de software ou acordo de serviço. Isso pode ocorrer em vários cenários, como: acordos de licenciamento de dados, provisionamento de dados, aquisição personalizada de dados e serviços de integração de dados.

Após a formalização do acordo, a execução do projeto em conformidade com os termos do acordo deve ser gerenciada.

### Implementação do Processo de Medição

O processo de medição deve ser implementado durante o projeto de software para garantir que dados relevantes e úteis sejam coletados.

### Monitoramento do Processo

A **aderência ao escopo**, **plano do projeto e planos relacionados** deve ser continuamente avaliada e em intervalos predeterminados. **Saídas e critérios de conclusão para cada tarefa** também devem ser avaliados. Os **entregáveis** devem ser avaliados quanto às suas características exigidas (por exemplo, por meio de inspeções ou demonstrando funcionalidade em funcionamento). 

Devem ser analisados o **gasto de esforço**, **a adesão ao cronograma**, os **custos** até a data e o **uso de recursos**. O perfil de risco do projeto (veja a Seção 2.5, Gestão de Riscos) deve ser revisitado, e a conformidade com os requisitos de qualidade do software deve ser avaliada (veja Requisitos de Qualidade de Software na KA de Qualidade de Software).

Os dados de medição devem ser analisados. (Veja Análise Estatística na KA de Fundamentos de Engenharia.) A análise de variância deve ser conduzida para determinar a variação entre os resultados reais e os esperados. Esta análise pode examinar **estouros de custos**, **atrasos no cronograma** ou outras medidas. **Identificação de outliers** e **análise de qualidade** e outros dados de medição devem ser realizadas (por exemplo, análise de defeitos). (Veja Medição da Qualidade do Software na KA de Qualidade de Software.) As **exposições a riscos devem ser recalculadas**. (Veja Seção 2.5, Gestão de Riscos.) 

Essas atividades podem permitir a detecção de problemas e a identificação de exceções com base em limites que foram excedidos. Os resultados devem ser relatados conforme necessário ou quando os limites tiverem sido excedidos. Por exemplo, a identificação, mitigação e resolução oportuna de vulnerabilidades e fraquezas de segurança do software que excedem as expectativas podem afetar a postura de segurança do sistema [11].

### Processo de Controle 

As **atividades de monitoramento** do projeto fornecem a base para a tomada de decisões. Onde apropriado, e quando a probabilidade e o impacto dos fatores de risco são compreendidos, **mudanças podem ser feitas no projeto**. Isso pode tomar a forma de **ações corretivas** (por exemplo, retestar certos componentes de software). Pode envolver a **incorporação de ações adicionais** (por exemplo, decidir usar prototipagem para auxiliar na validação de requisitos de software; consulte Prototipagem na KA de Requisitos de Software). Pode também implicar na revisão do plano do projeto e outros documentos do projeto (por exemplo, a especificação de requisitos de software) para acomodar eventos não antecipados e suas implicações.

Em algumas instâncias, o processo de controle pode levar ao abandono do projeto. Em todos os casos, a equipe de desenvolvimento de software deve aderir aos procedimentos de controle de configuração de software e gestão de configuração de software. (Consulte a KA de Gestão de Configuração de Software.) Decisões devem ser documentadas e comunicadas a todas as partes relevantes, planos devem ser revisados e revisados quando necessário, e dados relevantes devem ser registrados. (Consulte a Seção 6.3, Executar o Processo de Medição.)

### Relatórios 

O progresso até a data deve ser relatado em momentos especificados e acordados tanto dentro da organização (por exemplo, para um comitê de direção do projeto) quanto para stakeholders externos (por exemplo, clientes ou usuários). Relatórios devem focar nas necessidades de informação do público-alvo, em oposição ao detalhamento do status dentro da equipe do projeto.

### Resumo Execução de Projetos de Software

Durante a execução de projetos de software, os planos são implementados e os processos planejados são realizados. O foco deve ser na adesão aos processos do ciclo de vida do desenvolvimento de software (SDLC) selecionados para atender aos requisitos das partes interessadas e alcançar os objetivos do projeto. Atividades contínuas de monitoramento, controle e relatório são essenciais.

#### 3.1. Implementação dos Planos

As atividades do projeto devem seguir o plano principal e os planos de suporte, utilizando recursos e gerando produtos de trabalho como design de software, código de software e casos de teste de software.

#### 3.2 Aquisição de Software e Gestão de Contratos com Fornecedores

A aquisição de software e a gestão de contratos envolvem a contratação de clientes e fornecedores para a entrega de produtos e serviços de software. A facilidade de adquirir software atualmente trouxe desafios de segurança, requerendo controles técnicos e procedimentais. Diferentes tipos de software, como COTS, open source e SaaS, têm suas especificidades de aquisição. As atividades de verificação e integração dos componentes de software são cruciais, independentemente do método de aquisição. A gestão dos projetos de software deve ser adaptada conforme a abordagem de aquisição, incluindo planejamento detalhado, avaliação de componentes, e negociação de contratos. A aquisição de conjuntos de dados específicos é também uma parte importante dos contratos com fornecedores. A execução do projeto deve seguir os termos acordados nos contratos.

#### 3.3 Implementação do Processo de Medição 

O processo de medição é crucial durante o projeto de software para coletar dados relevantes e úteis. Isso inclui planejamento e execução adequados conforme descrito nas seções pertinentes.

#### 3.4 Monitoramento do Processo 

A aderência ao escopo do projeto, ao plano do projeto e aos planos relacionados deve ser continuamente monitorada. Isso inclui avaliar saídas e critérios de conclusão, avaliar entregáveis, analisar o gasto de esforço, adesão ao cronograma, custos e uso de recursos. O perfil de risco do projeto deve ser revisitado e a conformidade com os requisitos de qualidade do software deve ser avaliada. A análise de dados de medição deve ser realizada, incluindo análise de variância e identificação de outliers. Essas atividades ajudam na detecção de problemas e identificação de exceções, e os resultados devem ser relatados conforme necessário.

#### 3.4 Processo de Controle 

O processo de controle envolve tomar decisões baseadas nas atividades de monitoramento do projeto. Isso pode incluir ações corretivas, ações adicionais, revisão de planos do projeto e documentos para acomodar eventos imprevistos. Em alguns casos, pode levar ao abandono do projeto. A equipe deve seguir os procedimentos de controle de configuração de software e as decisões devem ser documentadas e comunicadas.

#### 3.5 Relatórios 

O progresso do projeto deve ser relatado em momentos especificados tanto dentro da organização quanto para stakeholders externos. Os relatórios devem atender às necessidades de informação do público-alvo.

## Seção 4 Revisão e Avaliação de Software

Em momentos pré-especificados e conforme necessário, o progresso geral em relação aos objetivos declarados e a satisfação dos requisitos dos stakeholders (usuários e clientes) deve ser avaliado. Da mesma forma, as avaliações da eficácia do processo de software, do pessoal envolvido e das ferramentas e métodos utilizados também devem ser realizadas regularmente e conforme as circunstâncias exigirem.

### Determinação da Satisfação dos Requisitos 

Alcançar a satisfação dos stakeholders é um objetivo principal do gerente de engenharia de software. O progresso em direção a esse objetivo deve ser avaliado periodicamente. O progresso deve ser avaliado ao atingir um marco importante do projeto (por exemplo, concluir a arquitetura de design de software ou concluir uma revisão técnica de software) ou ao concluir um ciclo de desenvolvimento iterativo que resulte em um incremento do produto. Variações em relação aos requisitos de software devem ser identificadas e ações apropriadas devem ser tomadas. Como na atividade do processo de controle acima (ver Seção 3.5, Processo de Controle), os procedimentos de controle de configuração de software e gestão de configuração de software devem ser seguidos (ver a KA de Gestão de Configuração de Software). Decisões devem ser documentadas e comunicadas a todas as partes relevantes; os planos devem ser revisados e revisados conforme necessário; e dados relevantes devem ser registrados (ver Seção 6.3, Executar o Processo de Medição).

### Revisão e Avaliação de Desempenho 

Revisões periódicas de desempenho para o pessoal do projeto podem fornecer insights sobre a probabilidade de aderência aos planos e processos e possíveis áreas de dificuldade (por exemplo, conflitos entre membros da equipe). Os diversos métodos, ferramentas e técnicas do projeto devem ser avaliados quanto à sua eficácia e adequação. O processo do projeto também deve ser sistematicamente e periodicamente avaliado quanto à sua relevância, utilidade e eficácia. Onde apropriado, mudanças no projeto devem ser feitas e gerenciadas.

### Resumo Revisão e Avaliação de Software 

O progresso em relação aos objetivos do projeto e a satisfação dos requisitos dos stakeholders deve ser avaliado periodicamente. A eficácia do processo de software, do pessoal envolvido e das ferramentas e métodos utilizados também deve ser avaliada regularmente.

#### 4.1 Determinação da Satisfação dos Requisitos 

A satisfação dos stakeholders é um objetivo principal, e o progresso deve ser avaliado ao atingir marcos importantes do projeto ou ao concluir ciclos de desenvolvimento iterativos. Variações em relação aos requisitos de software devem ser identificadas e ações apropriadas devem ser tomadas.

#### 4.2 Revisão e Avaliação de Desempenho 

Revisões periódicas de desempenho do pessoal do projeto podem fornecer insights sobre a aderência aos planos e processos e identificar possíveis áreas de dificuldade. Métodos, ferramentas e técnicas do projeto devem ser avaliados quanto à sua eficácia e adequação. O processo do projeto deve ser avaliado periodicamente quanto à sua relevância, utilidade e eficácia.

## Seção 5 Encerramento 

Um projeto inteiro, uma fase importante do projeto ou um ciclo de desenvolvimento iterativo atinge o encerramento quando **todos os planos e processos foram implementados e concluídos**. Os critérios de sucesso do projeto, fase ou iteração devem então ser avaliados. Uma vez estabelecido o encerramento, atividades de arquivamento, retrospectiva e melhoria de processo podem ser realizadas.

### Determinação do Encerramento 

O encerramento ocorre quando as tarefas especificadas para um projeto, uma fase ou uma iteração foram concluídas e a realização satisfatória dos critérios de conclusão foi confirmada. Os **requisitos de software podem ser confirmados como satisfeitos ou não**, e o grau de realização dos objetivos pode ser determinado. Os processos de encerramento devem envolver stakeholders relevantes e documentar a aceitação dos stakeholders; **quaisquer problemas conhecidos devem ser documentados**.

### Atividades de Encerramento 

Após a confirmação do encerramento, os materiais do projeto devem ser arquivados de acordo com as regras acordadas com os stakeholders para métodos de arquivamento, localização e duração — possivelmente incluindo a destruição de informações sensíveis, software e o meio em que as cópias residem. 

Por exemplo, essas regras podem exigir que, durante o encerramento, todos os dados sejam removidos e destruídos de quaisquer dispositivos que contenham informações relevantes antes do descarte físico dos dispositivos (por exemplo, os discos rígidos de computadores pessoais, servidores, mainframes, assistentes digitais pessoais (PDAs), roteadores, firewalls, switches, fitas, disquetes, CDs, DVDs, telefones celulares, impressoras, dispositivos de armazenamento de dados USB).

A base de dados de medição da organização deve ser atualizada com os dados relevantes do projeto. Uma análise retrospectiva do projeto, fase ou iteração deve ser realizada para que questões, problemas, riscos e oportunidades encontrados possam ser analisados. (Ver Tópico 4, Revisão e Avaliação.) Lições aprendidas devem ser extraídas do projeto e alimentadas em iniciativas de aprendizagem e melhoria organizacional.

### Resumo Encerramento 

O encerramento ocorre quando todas as tarefas especificadas para um projeto, fase ou iteração são concluídas e a realização dos critérios de conclusão é confirmada.

#### 5.1 Determinação do Encerramento 

O encerramento é confirmado quando as tarefas foram concluídas e os critérios de conclusão foram satisfeitos. Stakeholders devem estar envolvidos e qualquer problema deve ser documentado.

#### 5.2 Atividades de Encerramento 

Materiais do projeto devem ser arquivados de acordo com as regras acordadas, incluindo a possível destruição de informações sensíveis. A base de dados de medição deve ser atualizada e uma análise retrospectiva deve ser realizada para identificar lições aprendidas e melhorar futuros projetos.
