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

##### Minimização de risco

Essa situação desafiadora pode ser controlada usando IaC para a infraestrutura. IaC não só
automatiza o processo, mas também serve como uma forma de documentação para sua infraestrutura e
fornece seguro para a empresa nos casos em que os funcionários deixam a empresa com
conhecimento. Como você sabe, geralmente mantemos IaC para ferramentas de controle de origem, como Azure Repos ou
GitHub. Portanto, se alguém fizer alguma alteração na configuração da infraestrutura, ela será gravada em
o repositório de controle de origem. Portanto, se alguém sair ou sair de férias, isso não afetará o
gerenciabilidade da infraestrutura porque a ferramenta de controle de versão terá acompanhado as mudanças
que foram executados na infraestrutura e isso definitivamente reduziria o risco de falha.

##### Maior eficiência no desenvolvimento de software
Hoje em dia, com o envolvimento de IaC para provisionamento e gerenciamento de infraestrutura, os desenvolvedores conseguem mais tempo para se concentrar na produtividade. Sempre que precisam lançar seus ambientes de sandbox para desenvolver seu código, eles são facilmente capazes de fazê-lo. O analista de qualidade ( QA ) será capaz de ter um cópia do código e teste-o em ambientes separados. Da mesma forma, testes de segurança e aceitação do usuário também pode ser feito em diferentes ambientes de teste. Com um único clique, o código do aplicativo e código de infraestrutura pode ser feito em conjunto seguindo Integração Contínua e Contínua
Técnicas de implantação ( CI / CD ).

##### Poupança de custos
O IaC certamente ajudaria a economizar custos para a empresa. Como mencionamos anteriormente, o script IaC pode ajudar nós criamos e automatizamos o processo de implantação de infraestrutura, o que permite que os engenheiros parem de fazer
trabalho manual e comece a gastar mais tempo na execução de tarefas de maior valor agregado para a empresa, e por causa disso, a empresa pode economizar dinheiro em termos de processo de contratação e engenheiros salários.
Como mencionamos anteriormente, o script IaC pode destruir ambientes automaticamente quando eles não estão em uso, o que irá reduzir ainda mais os custos de computação em nuvem das empresas.
Depois de obter uma compreensão justa do IaC e dos benefícios de usá-lo, vamos prosseguir e tentar aprender
alguns detalhes sobre uma tecnologia IaC - Terraform.


#### O que é Terraform?
erraform é uma das ferramentas de código aberto que foi introduzida no mercado pela HashiCorp em 2014 como
Software IaC (IaC significa que podemos escrever código para nossa infraestrutura) que é usado principalmente para construção,
mudando e gerenciando a infraestrutura com segurança e eficiência. O Terraform pode ajudar com várias nuvens
ambientes tendo um único fluxo de trabalho, em outras palavras **terraform init, terraform plan, terraform
apply**, assim por diante, para todas as nuvens.
A infraestrutura que o Terraform gerencia pode ser hospedada publicamente
nuvens, como AWS, Microsoft Azure e GCP, ou locais em nuvens privadas, como VMware
vSphere, OpenStack ou CloudStack. O Terraform lida com IaC, para que você nunca precise se preocupar com seu
infraestrutura se distanciando de sua configuração desejada.