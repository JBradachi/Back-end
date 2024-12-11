# Template Method

## table of contents

- [Template Method](#template-method)
  - [table of contents](#table-of-contents)
  - [O que é](#o-que-é)
  - [Estrutura](#estrutura)
  - [Como implementar](#como-implementar)
  - [Na prática](#na-prática)
  - [Quando usar](#quando-usar)

## O que é

O Template Method é um padrão de projeto comportamental que define o esqueleto de um algoritmo na superclasse mas deixa as subclasses sobrescreverem etapas específicas do algoritmo sem modificar sua estrutura.

## Estrutura

![alt text](/the-23paterns/imagesmd/TM1.png)

Como você pode ver, nós temos dois tipos de etapas:

1. etapas abstratas devem ser implementadas por cada subclasse
2. etapas opcionais já tem alguma implementação padrão, mas ainda podem ser sobrescritas se necessário.

![alt text](/the-23paterns/imagesmd/TM2.png)



1. A Classe Abstrata declara métodos que agem como etapas de um algoritmo, bem como o próprio método padrão que chama esses métodos em uma ordem específica. Os passos podem ser declarados como abstratos ou ter alguma implementação padrão.

2. As Classes Concretas podem sobrescrever todas as etapas, mas não o próprio método padrão.

![alt text](/the-23paterns/imagesmd/TM3.png)

## Como implementar

## Na prática

## Quando usar

Utilize o padrão Template Method quando você quer deixar os clientes estender apenas etapas particulares de um algoritmo, mas não todo o algoritmo e sua estrutura.

O Template Method permite que você transforme um algoritmo monolítico em uma série de etapas individuais que podem facilmente ser estendidas por subclasses enquanto ainda mantém intacta a estrutura definida em uma superclasse.

Utilize o padrão quando você tem várias classes que contém algoritmos quase idênticos com algumas diferenças menores. Como resultado, você pode querer modificar todas as classes quando o algoritmo muda.

Quando você transforma tal algoritmo em um Template Method, você também pode erguer as etapas com implementações similares para dentro de uma superclasse, eliminando duplicação de código. Códigos que variam entre subclasses podem permanecer dentro das subclasses.
