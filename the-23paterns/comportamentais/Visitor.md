# Visitor

## table of contents

- [Visitor](#visitor)
  - [table of contents](#table-of-contents)
  - [O que é](#o-que-é)
  - [Estrutura](#estrutura)
  - [Como implementar](#como-implementar)
  - [Na prática](#na-prática)
  - [Quando usar](#quando-usar)

## O que é

O Visitor é um padrão de projeto comportamental que permite que você separe algoritmos dos objetos nos quais eles operam.

## Estrutura

![alt text](/the-23paterns/imagesmd/VS1.png)



1. A interface Visitante declara um conjunto de métodos visitantes que podem receber elementos concretos de uma estrutura de objetos como argumentos. Esses métodos podem ter os mesmos nomes se o programa é escrito em uma linguagem que suporta sobrecarregamento, mas o tipo dos parâmetros devem ser diferentes.

2. Cada Visitante Concreto implementa diversas versões do mesmo comportamento, feitos sob medida para diferentes elementos concretos de classes.

3. A interface Elemento declara um método para “aceitar” visitantes. Esse método deve ter um parâmetro declarado com o tipo da interface do visitante.

4. Cada Elemento Concreto deve implementar o método de aceitação. O propósito desse método é redirecionar a chamada para o método visitante apropriado que corresponde com a atual classe elemento. Esteja atento que mesmo se uma classe elemento base implemente esse método, todas as subclasses deve ainda sobrescrever esse método em suas próprias classes e chamar o método apropriado no objeto visitante.

5. O Cliente geralmente representa uma coleção de outros objetos complexos (por exemplo, uma árvore Composite). Geralmente, os clientes não estão cientes de todas as classes elemento concretas porque eles trabalham com objetos daquela coleção através de uma interface abstrata.

![alt text](/the-23paterns/imagesmd/VS2.png)


## Como implementar

## Na prática

## Quando usar

Utilize o Visitor quando você precisa fazer uma operação em todos os elementos de uma estrutura de objetos complexa (por exemplo, uma árvore de objetos).

O padrão Visitor permite que você execute uma operação sobre um conjunto de objetos com diferentes classes ao ter o objeto visitante implementando diversas variantes da mesma operação, que correspondem a todas as classes alvo.

Utilize o Visitor para limpar a lógica de negócio de comportamentos auxiliares.

O padrão permite que você torne classes primárias de sua aplicação mais focadas em seu trabalho principal ao extrair todos os comportamentos em um conjunto de classes visitantes.

Utilize o padrão quando um comportamento faz sentido apenas dentro de algumas classes de uma uma hierarquia de classe, mas não em outras.

Você pode extrair esse comportamento para uma classe visitante separada e implementar somente aqueles métodos visitantes que aceitam objetos de classes relevantes, deixando o resto vazio.
