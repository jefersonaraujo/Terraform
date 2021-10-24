# Guia Para Certificação Terraform

### Capítulo 1 : Conhecendo o IaC
#### Introdução ao IaC

Hoje em dia, como a maioria dos clientes está mudando para a nuvem, e como todos sabemos, as plataformas de nuvem
nos fornecer mais elasticidade e escalabilidade em termos de infraestrutura, isso significa que você pode
utilizar facilmente os recursos e pagar pelo que usar; você não precisa pagar nada a mais. Pense
na linha de um administrador que precisa realizar a ampliação e redução de recursos e como
difícil seria para eles. Vamos supor que haja 1.000 recursos que precisam ser ampliados
durante o dia e reduzida à noite.
Nesse caso, os consumidores precisam levantar 1.000 tíquetes para realizar o escalonamento e, novamente, mais 1.000
tíquetes para redução, o que significa no final do dia, o administrador do sistema que é
gerenciar a infraestrutura ficará sobrecarregado com tantos pedidos e seria realmente impossível
para eles lidarem com isso. Então, aqui temos algo chamado IaC, que é uma maneira de implantar ou
gerenciando a infraestrutura de forma automatizada. Todos os recursos que precisam ser gerenciados serão definido no formato de código e podemos manter esse código em qualquer repositório de controle de origem, como GitHub ou
Bitbucket. Posteriormente, podemos aplicar uma abordagem DevOps para gerenciar nossa infraestrutura facilmente. Existem
muitas vantagens de usar IaC; vamos discutir alguns deles.

#### Vantagens do IaC

Usando IaC, você seria capaz de criar uma arquitetura de infraestrutura completa simplesmente executando um script.
Suponha que você precise implantar infraestrutura em vários ambientes, como desenvolvimento, teste,
pré-produção e produção. Seria muito fácil provisioná-lo com apenas um clique. Não
apenas isso, mas digamos que você precise implantar o mesmo tipo de ambientes de infraestrutura em outras regiões
onde seu provedor de nuvem oferece suporte para backup e recuperação de desastres.
Você pode fazer tudo isso escrevendo linhas de código simples.


##### Consistência de configuração

A abordagem clássica de implantação de infraestrutura é muito feia porque a infraestrutura é
provisionado e gerenciado usando uma abordagem manual que ajuda a manter alguma consistência no
processo de implantação de infraestrutura. Mas sempre introduz erro humano, o que torna difícil
execute qualquer tipo de depuração.
IaC padroniza o processo de construção e gerenciamento da infraestrutura para que a possibilidade de qualquer
erros ou desvios são reduzidos. Definitivamente, isso diminuirá quaisquer problemas de incompatibilidade com o
infraestrutura e o ajudará a executar seu aplicativo sem problemas.