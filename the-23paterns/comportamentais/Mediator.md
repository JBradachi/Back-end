# Mediator
Mediador, Intermediário, Intermediary, Controlador, Controller

## table of contents

- [Mediator](#mediator)
  - [table of contents](#table-of-contents)
  - [O que é](#o-que-é)
  - [Estrutura](#estrutura)
  - [Como implementar](#como-implementar)
  - [Na prática](#na-prática)
  - [Quando usar](#quando-usar)

## O que é
O Mediator é um padrão de projeto comportamental que permite que você reduza as dependências caóticas entre objetos. O padrão restringe comunicações diretas entre objetos e os força a colaborar apenas através do objeto mediador.

## Estrutura

![alt text](/the-23paterns/imagesmd/MD1.png)

1. Os Componentes são várias classes que contém alguma lógica de negócio. Cada componente tem uma referência a um mediador, declarada com o tipo de interface do mediador. O componente não está ciente da classe atual do mediador, então você pode reutilizar o componente em outros programas ao ligá-lo com um mediador diferente.

2. A interface do Mediador declara métodos de comunicação com os componentes, os quais geralmente incluem apenas um método de notificação. Os componentes podem passar qualquer contexto como argumentos desse método, incluindo seus próprios objetos, mas apenas de tal forma que nenhum acoplamento ocorra entre um componente destinatário e a classe remetente.

3. Os Mediadores Concretos encapsulam as relações entre vários componentes. Os mediadores concretos quase sempre mantém referências de todos os componentes os quais gerenciam e, algumas vezes, até gerenciam o ciclo de vida deles.

4. Componentes não devem estar cientes de outros componentes. Se algo importante acontece dentro ou para um componente, ele deve apenas notificar o mediador. Quando o mediador recebe a notificação, ele pode facilmente identificar o remetente, o que é suficiente para decidir que componente deve ser acionado em retorno.

Da perspectiva de um componente, tudo parece como uma caixa preta. O remetente não sabe quem vai acabar lidando com o seu pedido, e o destinatário não sabe quem enviou o pedido em primeiro lugar.

![alt text](/the-23paterns/imagesmd/MD2.png)


## Como implementar

## Na prática

## Quando usar

Utilize o padrão Mediator quando é difícil mudar algumas das classes porque elas estão firmemente acopladas a várias outras classes.

O padrão lhe permite extrair todas as relações entre classes para uma classe separada, isolando quaisquer mudanças para um componente específico do resto dos componentes.

Utilize o padrão quando você não pode reutilizar um componente em um programa diferente porque ele é muito dependente de outros componentes.

Após você aplicar o Mediator, componentes individuais se tornam alheios aos outros componentes. Eles ainda podem se comunicar entre si, mas de forma indireta, através do objeto mediador. Para reutilizar um componente em uma aplicação diferente, você precisa fornecer a ele uma nova classe mediadora.

Utilize o Mediator quando você se encontrar criando um monte de subclasses para componentes apenas para reutilizar algum comportamento básico em vários contextos.

Como todas as relações entre componentes estão contidas dentro do mediador, é fácil definir novas maneiras para esses componentes colaborarem introduzindo novas classes mediadoras, sem ter que mudar os próprios componentes.
