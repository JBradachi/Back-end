# Aprendendo Docker

Minucurso da SECOM descomplicando docker: do zero a prática com Ângelo Cupertino Machado

## Table of contents
- [Aprendendo Docker](#aprendendo-docker)
  - [Table of contents](#table-of-contents)
  - [Comandos mais usados](#comandos-mais-usados)

Usar outros softwares sem ter ela na máquina padrão

Infra as a Code

Na minha máquina funciona? na NOSSA maquina funciona

## Comandos mais usados

```docker ps```
- lista os sistemas rodando em seu computador

docekr ps -a 
lista todos os containers (até os q não estão em execução)

```docker pull <imagem>```
- Faz dowload de uma imagem docker 

```docker images```
- lista doas as imagens armazenadas localmente no sistema

docker rm <container_id>
- remove container

docker logs <container_id>
- log gerados por container
- criação de volumes para mapear arquivos

docker system prune
- limpa o sistema removendo containers, imagens, volumes

docker run <opcções> <imagens>

opções
- -d roda em segundo plano
- -p mapeia pra uma porta virtual:real
- --name nomeia o container

Exemplo docker run -d -p 80:80 --name bla

docker exec <opções> <container_id> <comando>

- it: executa em modo iterativo

docker build -t <nome_da_imagem> .
cria uma nova imagem baseado em um arquivo docker file

docker network ls
lista as redes de docker disponíveis

docker volume ls
lista os volumes

docker pull python:3.10-slim
docker run python:3.10-slim python -c "print('teste')"

remove o conteiner q está executando (forçado)

docker run --name <nomecontainer> -d -v volumepc:volumedocker <nomeimagem>

docker run --name <nomecontainer> -d -v ./data:/app/data modulo-01

docker exec -it <nomecontainer> bash

cat arquivo

volume: persistencia de forma geral
