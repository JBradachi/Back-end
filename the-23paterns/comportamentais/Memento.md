# Memento
Lembrança, Retrato, Snapshot

## table of contents

- [Memento](#memento)
  - [table of contents](#table-of-contents)
  - [O que é](#o-que-é)
  - [Estrutura](#estrutura)
  - [Como implementar](#como-implementar)
  - [Na prática](#na-prática)
  - [Quando usar](#quando-usar)

## O que é

O Memento é um padrão de projeto comportamental que permite que você salve e restaure o estado anterior de um objeto sem revelar os detalhes de sua implementação.

![alt text](/the-23paterns/imagesmd/MM1.png)

## Estrutura

![alt text](/the-23paterns/imagesmd/MM2.png)



1. A classe Originadora pode produzir retratos de seu próprio estado, bem como restaurar seu estado de retratos quando necessário.

2. O Memento é um objeto de valor que age como um retrato do estado da originadora. É uma prática comum fazer o memento imutável e passar os dados para ele apenas uma vez, através do construtor.

3. A Cuidadora sabe não só “quando” e “por quê” capturar o estado da originadora, mas também quando o estado deve ser restaurado.

4. Uma cuidadora pode manter registros do histórico da originadora armazenando os mementos em um pilha. Quando a originadora precisa voltar atrás no histórico, a cuidadora busca o memento mais do topo da pilha e o passa para o método de restauração da originadora.

5. Nessa implementação, a classe memento está aninhada dentro da originadora. Isso permite que a originadora acesse os campos e métodos do memento, mesmo que eles tenham sido declarados privados. Por outro lado, a cuidadora tem um acesso muito limitado aos campos do memento, que permite ela armazenar os mementos em uma pilha, mas não permite mexer com seu estado.

**Memento mais estrito**

![alt text](/the-23paterns/imagesmd/MM3.png)



1. Essa implementação permite ter múltiplos tipos de originadoras e mementos. Cada originadora trabalha com uma classe memento correspondente. Nem as originadoras nem os mementos expõem seu estado para ninguém.

2. Cuidadoras são agora explicitamente restritas de mudar o estado armazenado nos mementos. Além disso, a classe cuidadora se torna independente da originadora porque o método de restauração agora está definido na classe memento.

3. Cada memento se torna ligado à originadora que o produziu. A originadora passa a si mesmo para o construtor do memento, junto com os valores de seu estado. Graças a relação íntima entre essas classes, um memento pode restaurar o estado da sua originadora, desde que esta última tenha definido os setters apropriados.


## Como implementar

## Na prática

## Quando usar

Utilize o padrão Memento quando você quer produzir retratos do estado de um objeto para ser capaz de restaurar um estado anterior do objeto.

O padrão Memento permite que você faça cópias completas do estado de um objeto, incluindo campos privados, e armazená-los separadamente do objeto. Embora a maioria das pessoas vão lembrar desse padrão graças ao caso “desfazer”, ele também é indispensável quando se está lidando com transações (isto é, se você precisa reverter uma operação quando se depara com um erro).

Utilize o padrão quando o acesso direto para os campos/getters/setters de um objeto viola seu encapsulamento.

O Memento faz o próprio objeto ser responsável por criar um retrato de seu estado. Nenhum outro objeto pode ler o retrato, fazendo do estado original do objeto algo seguro e confiável.

