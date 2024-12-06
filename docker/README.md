# Aprendendo Docker

Minucurso da SECOM descomplicando docker: do zero a prática com Ângelo Cupertino Machado

## Table of contents
- [Aprendendo Docker](#aprendendo-docker)
  - [Table of contents](#table-of-contents)
  - [Comandos mais usados](#comandos-mais-usados)
  - [Volumes](#volumes)
  - [Networks](#networks)
  - [Docker compose](#docker-compose)

Usar outros softwares sem ter ela na máquina padrão

Infra as a Code

Na minha máquina funciona? na NOSSA maquina funciona

## Comandos mais usados

```systemctl start --user docker```

```docker ps```
- lista os sistemas rodando em seu computador

```docekr ps -a ```
lista todos os containers (até os q não estão em execução)

```docker pull <imagem>```
- Faz dowload de uma imagem docker 

```docker images```
- lista doas as imagens armazenadas localmente no sistema

```docker rm <container_id>```
- remove container

```docker logs <container_id>```
- log gerados por container
- criação de volumes para mapear arquivos

```docker system prune```
- limpa o sistema removendo containers, imagens, volumes


```docker image prune```
- limpa as imagens não usadas

```docker volume prune```
- limpa os volumes não usados

```docker run <opcções> <imagens>```

opções
- -d roda em segundo plano
- -p mapeia pra uma porta virtual:real
- --name <nomde> nomeia o container
- -rm 
- -v <volume>:app/data
- -p portahost:portacontainer

Exemplo docker run -d -p 80:80 --name bla

```docker exec <opções> <container_id> <comando>```

- it: executa em modo iterativo

```docker rm <nomecontainer>```
- -f força a remoção

```docker build -t <nome_da_imagem> .```
cria uma nova imagem baseado em um arquivo docker file

```docker network ls```
lista as redes de docker disponíveis

## Volumes

```docker volume ls```
lista os volumes

docker pull python:3.10-slim
docker run python:3.10-slim python -c "print('teste')"

remove o conteiner q está executando (forçado)

```docker run --name <nomecontainer> -d -v volumepc:volumedocker <nomeimagem>```

docker run --name <nomecontainer> -d -v ./data:/app/data modulo-01

pode usar um volume do próprio docker

```docker volume create <nomevolume>```

```docker run --name <nomecontainer> -d -v v2:/app/data modulo-01```


docker exec -it <nomecontainer> bash

cat arquivo

volume: persistencia de forma geral

## Networks

- bridge
- conectar ips (API python e BD)
- portas e exposição (docker não expõe)
  
```docker run -p 8081:5000 --name flaskcontainer --network my-network flaskimg```


Pode mapear volume > arquivo para arquivo e diretório para diretório
Sobrescreve o COPY . .

```docker run --name flaskcontainer -p 8081:5000 --network my-network -v ./app.py:/app/app.py flaskimg```


## Docker compose

```docker compose up```

```docker compose down```

services:
containers q serão executados
    image: imagem a ser executada (build: path dockerfile)
    container_name: nome do container
    restart: unless-stopped (always) reinicia container se morre
    ports: 
        - "8081:5000"
        - "443:443"
    volumes:
        - diretóriolocal:diretóriocontainer
        - .:/var/www 
    networks:
        nome da network:
            driver: bridge