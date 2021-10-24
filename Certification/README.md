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