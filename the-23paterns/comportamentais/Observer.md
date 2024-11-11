# Observer

Observador, Assinante do evento, Event-Subscriber, Escutador, Listener

## table of contents

1. [O que é](#o-que-é)

2. [Estrutura](#estrutura)

3. [Como implementar](#como-implementar)

4. [Na pratica](#na-prática)

5. [Quando usar](#quando-usar)

## O que é

O Observer é um padrão de projeto comportamental que permite que você defina um mecanismo de assinatura para notificar múltiplos objetos sobre quaisquer eventos que aconteçam com o objeto que eles estão observando.

Definir uma dependência um para muitos entre objetos, de maneira que quando um objeto muda de estado todos os seus dependentes são notificados e atualizados automaticamente”

representações notificadas das mudanças e modificadas pela mudança (trigger)

## Estrutura

![alt text](/the-23paterns/imagesmd/OB2.png)



1. A Publicadora manda eventos de interesse para outros objetos. Esses eventos ocorrem quando a publicadora muda seu estado ou executa algum comportamento. As publicadoras contêm uma infraestrutura de inscrição que permite novos assinantes se juntar aos atuais assinantes ou deixar a lista.

1. Quando um novo evento acontece, a publicadora percorre a lista de assinantes e chama o método de notificação declarado na interface do assinante em cada objeto assinante.

1. A interface do Assinante declara a interface de notificação. Na maioria dos casos ela consiste de um único método atualizar. O método pode ter vários parâmetros que permite que a publicadora passe alguns detalhes do evento junto com a atualização.

1. Assinantes Concretos realizam algumas ações em resposta às notificações enviadas pela publicadora. Todas essas classes devem implementar a mesma interface para que a publicadora não fique acoplada à classes concretas.

1. Geralmente, assinantes precisam de alguma informação contextual para lidar com a atualização corretamente. Por esse motivo, as publicadoras quase sempre passam algum dado de contexto como argumentos do método de notificação. A publicadora pode passar a si mesmo como um argumento, permitindo que o assinante recupere quaisquer dados diretamente.

1. O Cliente cria a publicadora e os objetos assinantes separadamente e então registra os assinantes para as atualizações da publicadora.


## Como implementar

![alt text](/the-23paterns/imagesmd/OB1.png)



1. Olhe para sua lógica do negócio e tente quebrá-la em duas partes: a funcionalidade principal, independente de outros códigos, irá agir como publicadora; o resto será transformado em um conjunto de classes assinantes.

1. Declare a interface do assinante. No mínimo, ela deve declarar um único método atualizar.

1. Declare a interface da publicadora e descreva um par de métodos para adicionar um objeto assinante e removê-lo da lista. Lembre-se que publicadoras somente devem trabalhar com assinantes através da interface do assinante.

1. Decida onde colocar a lista atual de assinantes e a implementação dos métodos de inscrição. Geralmente este código se parece o mesmo para todos os tipos de publicadoras, então o lugar óbvio para colocá-lo é dentro de uma classe abstrata derivada diretamente da interface da publicadora. Publicadoras concretas estendem aquela classe, herdando o comportamento de inscrição.

1. Contudo, se você está aplicando o padrão para uma hierarquia de classe já existente, considere uma abordagem baseada na composição: coloque a lógica da inscrição dentro de um objeto separado, e faça todos as publicadoras reais usá-la.

1. Crie as classes publicadoras concretas. A cada vez que algo importante acontece dentro de uma publicadora, ela deve notificar seus assinantes.

1. Implemente os métodos de notificação de atualização nas classes assinantes concretas. A maioria dos assinantes precisarão de dados contextuais sobre o evento. Eles podem ser passados como argumentos do método de notificação.

1. Mas há outra opção. Ao receber uma notificação, o assinante pode recuperar os dados diretamente da notificação. Neste caso, a publicadora deve passar a si mesma através do método de atualização. A opção menos flexível é ligar uma publicadora ao assinante permanentemente através do construtor.

1. O cliente deve criar todas os assinantes necessários e registrá-los com suas publicadoras apropriadas.


## Na prática

## Quando usar

Utilize o padrão Observer quando mudanças no estado de um objeto podem precisar mudar outros objetos, e o atual conjunto de objetos é desconhecido de antemão ou muda dinamicamente.

Utilize o padrão quando alguns objetos em sua aplicação devem observar outros, mas apenas por um tempo limitado ou em casos específicos.