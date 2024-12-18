# Engenharia de Dados 

> Bruno

## Table of contents
- [Engenharia de Dados](#engenharia-de-dados)
  - [Table of contents](#table-of-contents)
  - [O que é](#o-que-é)
  - [Passos para a engenharia de dados](#passos-para-a-engenharia-de-dados)
    - [Ingestão](#ingestão)
    - [Datalake](#datalake)
    - [Versionamento de dados](#versionamento-de-dados)
    - [Metadados](#metadados)
    - [Compute enginnes](#compute-enginnes)
    - [Pipilines de dados](#pipilines-de-dados)
    - [](#)
    - [Governance](#governance)
  - [Minio](#minio)
  - [starrocs](#starrocs)
  - [DBeaver](#dbeaver)
  - [DBT](#dbt)

## O que é

Fornecem dados gerados e pré processados pronto para ser consumido
Se os dados são petróleo bruto a engenharia de dados entrega a gasolina 

## Passos para a engenharia de dados

### Ingestão

- Processo de input de dados
- Facilidade de integração
- Escalabilidade
- Segurança
- Natureza da informação
- Altamente dependente do cliente

### Datalake

- Coração da estrutura de dados
- "Lake" (pantano de dados)
- Diferentes estratégias de organização
- segurança
- Governança
- Multiplas arquiteturas
- Expurgo, custo, monitoramento de acessos
  
### Versionamento de dados
- Escalabilidade
- "Schema drift"
- Lidar com mudanças constantes Metadados
- Duplicação de informação
- Redução de custo
- Isolamento/Governança
  
### Metadados

### Compute enginnes
- Lidar com o processamento das informações
- Custo
- Isolamento/Governança
- Processamento/ poder de fogo
- Escolher a engine correta
  - Poder de resposta?
  - Tempo de escrita eficiente (leitura mais rapido ou escrita mais rapido?)
  - Análise de dados
  - Processamento em escala
  - Paralelismo
  - Escalabilidade


### Pipilines de dados
- Orquestradores, guiam os pipelines
- Garantem a visibilidade
- Observalidade
  - Dadso não chegaram?
  - Infraestrutura em caos?
  - Pontos criticos afetados
  - Pipelines em colapso?
- Qualidade dos dados
  - Dados fazem sentido?
  - Estatisticase métricas minimas de aceite
  - Data Drift
  - Detecção de faljhas antecipadamente
  - Confiança nos dados gerados
  
### 

### Governance
- Garantir Acesso a dados
  - Governança de dados
  - Controle de todas as estruturas anteriores
- Documentações
  - O que significa uma feature
  - Essa tabelas faz sentido
- Tier 

## Minio
para instalar use um virtual enviroment
python3 -m venv venv
source bin/venv/activate

localhost:9001
- DB parecido com AWS3

user: minioadmin
senha: minioadmin

Criar bucket (bronze)
Criar new path (mobile_device_usage)
Upload minicursos/dados/dataset
P/ visualizar:criar chave de acesso

chave de acesso
nome: 07howyo95sDcSzdIJGBg
chave: 1ejBdLcPKA3XuZbdy2xuYtCEnPprXLWhxSQRbFpC 

## starrocs

localhost:8030
user: root
senha:

## DBeaver
instalar o DBeaver
criar uma nova conexão com o starrocks
testar a conexão
editar o sql


## DBT
entrar na pasta dbt 
digitar dbt init
configurar o q se pede
entrar na pasta criada pelo dbt
rodar dbt debug
