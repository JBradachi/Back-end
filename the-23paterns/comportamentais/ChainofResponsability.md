# Chain of responsability
CoR, Corrente de responsabilidade, Corrente de comando, Chain of command

## table of contents

- [Chain of responsability](#chain-of-responsability)
  - [table of contents](#table-of-contents)
  - [O que é](#o-que-é)
  - [Estrutura](#estrutura)
  - [Como implementar](#como-implementar)
  - [Na prática](#na-prática)
  - [Quando usar](#quando-usar)

## O que é
O Chain of Responsibility é um padrão de projeto comportamental que permite que você passe pedidos por uma corrente de handlers. Ao receber um pedido, cada handler decide se processa o pedido ou o passa adiante para o próximo handler na corrente.

![alt text](/the-23paterns/imagesmd/CR1.png)

## Estrutura

![alt text](/the-23paterns/imagesmd/CR2.png)

1. O Handler declara a interface, comum a todos os handlers concretos. Ele geralmente contém apenas um único método para lidar com pedidos, mas algumas vezes ele pode conter outro método para configurar o próximo handler da corrente.

2. O Handler Base é uma classe opcional onde você pode colocar o código padrão que é comum a todas as classes handler.

3. Geralmente, essa classe define um campo para armazenar uma referência para o próximo handler. Os clientes podem construir uma corrente passando um handler para o construtor ou setter do handler anterior. A classe pode também implementar o comportamento padrão do handler: pode passar a execução para o próximo handler após checar por sua existência.

4. Handlers Concretos contém o código real para processar pedidos. Ao receber um pedido, cada handler deve decidir se processa ele e, adicionalmente, se passa ele adiante na corrente.

5. Os handlers são geralmente auto contidos e imutáveis, aceitando todos os dados necessários apenas uma vez através do construtor.

6. O Cliente pode compor correntes apenas uma vez ou compô-las dinamicamente, dependendo da lógica da aplicação. Note que um pedido pode ser enviado para qualquer handler na corrente—não precisa ser ao primeiro.

## Como implementar

## Na prática

## Quando usar


1. Utilize o padrão Chain of Responsibility quando é esperado que seu programa processe diferentes tipos de pedidos em várias maneiras, mas os exatos tipos de pedidos e suas sequências são desconhecidos de antemão.

2. O padrão permite que você ligue vários handlers em uma corrente e, ao receber um pedido, perguntar para cada handler se ele pode ou não processá-lo. Dessa forma todos os handlers tem a chance de processar o pedido.

3. Utilize o padrão quando é essencial executar diversos handlers em uma ordem específica.

4. Já que você pode ligar os handlers em uma corrente em qualquer ordem, todos os pedidos irão atravessar a corrente exatamente como você planejou.

5. Utilize o padrão CoR quando o conjunto de handlers e suas encomendas devem mudar no momento de execução.

6. Se você providenciar setters para um campo de referência dentro das classes handler, você será capaz de inserir, remover, ou reordenar os handlers de forma dinâmica
   
