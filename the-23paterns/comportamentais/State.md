# State

Estado

## table of contents

1. [O que é](#o-que-é)

2. [Estrutura](#estrutura)

3. [Como implementar](#como-implementar)

4. [Na pratica](#na-prática)

5. [Quando usar](#quando-usar)

## O que é

O **State** é um padrão de projeto comportamental que permite que um objeto altere seu comportamento quando seu estado interno muda. Parece como se o objeto mudasse de classe.

O padrão State é intimamente relacionado com o conceito de uma Máquina de Estado Finito 

Encapsula comportamentos baseados em estados e usa a delegação para alternar comportamentos

Permite que um objeto altere seu comportamento quando seu estado interno muda.

O objeto parece ter mudado de classe

Retira a necessidade de usar switch case engessado

Classes modificam os estados, não o objeto.

Necessário ter a característica de mudança de estado

## Estrutura

![alt text](/the-23paterns/imagesmd/ST2.png)



1. O Contexto armazena uma referência a um dos objetos concretos de estado e delega a eles todos os trabalhos específicos de estado. O contexto se comunica com o objeto estado através da interface do estado. O contexto expõe um setter para passar a ele um novo objeto de estado.

1. A interface do Estado declara métodos específicos a estados. Esses métodos devem fazer sentido para todos os estados concretos porque você não quer alguns dos seus estados tendo métodos inúteis que nunca irão ser chamados.

1. Os Estados Concretos fornecem suas próprias implementações para os métodos específicos de estados. Para evitar duplicação ou código parecido em múltiplos estados, você pode fornecer classes abstratas intermediárias que encapsulam alguns dos comportamentos comuns.

1. Objetos de estado podem armazenar referências retroativas para o objeto de contexto. Através dessa referência o estado pode buscar qualquer informação desejada do objeto contexto, assim como iniciar transições de estado.

1. Ambos os estados de contexto e concretos podem configurar o próximo estado do contexto e realizar a atual transição de estado ao substituir o objeto estado ligado ao contexto.


## Como implementar

![alt text](/the-23paterns/imagesmd/ST1.png)



1. Decida qual classe vai agir como contexto. Poderia ser uma classe existente que já tenha código dependente do estado; ou uma nova classe, se o código específico ao estado estiver distribuído em múltiplas classes.

1. Declare a interface do estado. Embora ela vai espelhar todos os métodos declarados no contexto, mire apenas para aqueles que possam conter comportamento específico ao estado.

1. Para cada estado real, crie uma classe que deriva da interface do estado. Então vá para os métodos do contexto e extraia todo o código relacionado a aquele estado para dentro de sua nova classe.

1. Ao mover o código para a classe estado, você pode descobrir que ela depende de membros privados do contexto. Há várias maneiras de contornar isso:

* Torne esses campos ou métodos públicos.
* Transforme o comportamento que você está extraindo para um método público dentro do contexto e chame-o na classe estado. Essa maneira é feia mas rápida, e você pode sempre consertá-la mais tarde.
* Aninhe as classes estado dentro da classe contexto, mas apenas se sua linguagem de programação suporta classes aninhadas.

1. Na classe contexto, adicione um campo de referência do tipo de interface do estado e um setter público que permite sobrescrever o valor daquele campo.

1. Vá até o método do contexto novamente e substitua as condicionais de estado vazias por chamadas aos métodos correspondentes do objeto estado.

1. Para trocar o estado do contexto, crie uma instância de uma das classes estado e a passe para o contexto. Você pode fazer isso dentro do próprio contexto, ou em vários estados, ou no cliente. Aonde quer que isso seja feito, a classe se torna dependente da classe estado concreta que ela instanciou.


## Na prática

## Quando usar

Utilize o padrão State quando você tem um objeto que se comporta de maneira diferente dependendo do seu estado atual, quando o número de estados é enorme, e quando o código estado específico muda com frequência.

O padrão sugere que você extraia todo o código estado específico para um conjunto de classes distintas. Como resultado, você pode adicionar novos estados ou mudar os existentes independentemente uns dos outros, reduzindo o custo da manutenção.

Utilize o padrão quando você tem uma classe populada com condicionais gigantes que alteram como a classe se comporta de acordo com os valores atuais dos campos da classe. (if, switch case)

O padrão State permite que você extraia ramificações dessas condicionais para dentro de métodos de classes correspondentes. Ao fazer isso, você também limpa para fora da classe principal os campos temporários e os métodos auxiliares envolvidos no código estado específico.

Utilize o State quando você tem muito código duplicado em muitos estados parecidos e transições de uma máquina de estado baseada em condições.

O padrão State permite que você componha hierarquias de classes estado e reduza a duplicação ao extrair código comum para dentro de classes abstratas base.


