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
Terraform é uma das ferramentas de código aberto que foi introduzida no mercado pela HashiCorp em 2014 como
Software IaC (IaC significa que podemos escrever código para nossa infraestrutura) que é usado principalmente para construção,
mudando e gerenciando a infraestrutura com segurança e eficiência. O Terraform pode ajudar com várias nuvens
ambientes tendo um único fluxo de trabalho, em outras palavras **terraform init, terraform plan, terraform
apply**, assim por diante, para todas as nuvens.
A infraestrutura que o Terraform gerencia pode ser hospedada publicamente
nuvens, como AWS, Microsoft Azure e GCP, ou locais em nuvens privadas, como VMware
vSphere, OpenStack ou CloudStack. O Terraform lida com IaC, para que você nunca precise se preocupar com seu
infraestrutura se distanciando de sua configuração desejada.
O Terraform usa principalmente arquivos Terraform que terminam em .tf ou .tf.json que contêm informações detalhadas sobre
quais componentes de infraestrutura são necessários para executar um único aplicativo ou todos os seus dados
Centro. Terraform gera um plano de execução, que descreve o que vai fazer para alcançar o
estado desejado e, em seguida, executa-o para construir a infraestrutura descrita. Se houver alguma mudança no
arquivo de configuração, o Terraform é capaz de determinar o que foi alterado e criar
planos de execução que podem ser aplicados

#####  Infraestrutura como código
A infraestrutura é definida em um formato de código baseado na sintaxe apropriada em um arquivo de configuração que pode ser
compartilhada e reutilizada. O código definido no arquivo de configuração fornecerá um esquema de seus dados
centro ou o recurso que você está planejando implantar. Você deve ser capaz de implantar um completo
infraestrutura desse arquivo de configuração seguindo o fluxo de trabalho do Terraform.


##### Planos de execução

O fluxo de trabalho do Terraform tem três etapas - **iniciar** , **planejar** e **aplicar** . Durante a etapa de planejamento ,
gera um plano de execução. O plano de execução fornece informações sobre o que o Terraform fará
quando você ligar, aplique . Isso significa que você não terá nenhum tipo de surpresa ao realizar o **terraform apply**.

##### Gráfico de recursos

Terraform constrói um gráfico de todos os seus recursos e paraleliza a criação e modificação de qualquer
recursos não dependentes. Por causa deste gráfico de recursos, o Terraform consegue construir infraestrutura
da forma mais eficiente possível que seja suficientemente inteligente para entender as dependências em sua infraestrutura.

##### Mudança de automação

Mudanças complexas em sua infraestrutura definida podem ser aplicadas com o mínimo de interação humana . Com
o plano de execução e gráfico de recursos mencionados acima, você sabe exatamente o que o Terraform mudará
e em que ordem, evitando assim vários erros humanos possível.

### CloudFormation versus Terraform
##### Plataforma cruzada
Um grande benefício do Terraform é que você pode usá-lo com uma variedade de provedores de nuvem, incluindo AWS,
GCP e Azure. Os modelos do CloudFormation são mais centrados na AWS. Então aqui, o Terraform seria
mais preferido do que AWS CloudFormation.

##### Língua
Terraform é escrito em HashiCorp Configuration Language ( HCL ). A sintaxe da HCL é muito poderosa
e permite que você faça referência a variáveis, atributos e assim por diante, enquanto o CloudFormation usa
JSON ou YAML, que são linguagens de notação simples e não são tão poderosas quanto HCL. Com
CloudFormation, você também pode referenciar parâmetros, como outras pilhas, mas no geral, pensamos que HCL
torna o Terraform mais produtivo.

Por outro lado, CloudFormation tem um bom suporte para várias funcionalidades condicionais. Terraform
tem os loops **count** , **for_each** e **for** , que tornam certas coisas fáceis (como criar N idênticos
recursos) e certas coisas um pouco mais difíceis (como a estrutura condicional do tipo **if-else**  por exemplo,
count = var.create_eip == true? 1: 0 ). CloudFormation também tem uma condição de espera e política de criação,
o que pode ser importante em certas situações de implantação onde você pode ter que esperar antes de um certo
condição é satisfeita.

Em termos de linguagem, o Terraform é simples e fácil de esboçar, o que encorajaria os desenvolvedores e
administradores para começar a explorar o Terraform, mas isso praticamente depende do cenário de caso de uso,
que pode, em alguns casos, exigir que você use CloudFormation para implantação de recursos AWS e
gerenciabilidade.

##### Modularidade
Modularidade é geralmente definida como o quanto é mais fácil para você implementar seu código de infraestrutura
usando Terraform ou CloudFormation. Os módulos do Terraform podem ser facilmente escritos e reutilizados como
código de infraestrutura em vários projetos por várias equipes. Portanto, é muito fácil modularizar Código Terraform. Você tem a opção de modularizar o código CloudFormation usando pilhas aninhadas. Vocês
não pode modularizar sua própria pilha CloudFormation da mesma forma que você pode preparar pilhas de pilhas
no Terraform. Você pode usar referências cruzadas de pilha em CloudFormation e da mesma forma, pode ser
referenciado no Terraform usando a fonte de dados terraform_remote_state , que é usada para derivar
saída do módulo raiz da outra configuração do Terraform.
Comparando o AWS CloudFormation e o Terraform em termos de modularidade, podemos ver que
O Terraform parece ser mais amigável e fácil de usar.

##### Validação
Ambas as ferramentas permitem validar a infraestrutura, mas há uma diferença. Usando CloudFormation, você
pode validar pilhas do AWS CloudFormation, o que significa que ele verificará apenas a sintaxe de sua pilha. Se
você deseja atualizar alguns recursos, você pode usar conjuntos de mudanças CloudFormation, que permitem revisar
as mudanças, significando se esse recurso específico definido no AWS CloudFormation obterá
substituído ou atualizado, antes de realmente executar as pilhas do AWS CloudFormation.

####
No fluxo de trabalho do Terraform, há uma fase de planejamento que fornece informações completas sobre o que
os recursos são modificados, excluídos ou criados antes de você implantar o código de infraestrutura
####
No AWS CloudFormation, você tem CloudFormation Designer, que pode ajudá-lo a conhecer todos os
recursos que você definiu no AWS CloudFormation. Isso irá fornecer-lhe uma visão antes de você
realmente vá em frente e execute a implantação.
Em termos de validação, tanto o Terraform quanto o AWS CloudFormation têm certas opções para executá-lo.
A única grande diferença que pode ser notada é que no AWS CloudFormation, você seria obrigado
usar vários serviços da AWS, enquanto no Terraform, somos facilmente capazes de validar apenas com seu
fluxo de trabalho.


##### Legibilidade
Não há dúvida de que quando você escreve um arquivo de configuração do Terraform, você achará mais fácil em comparação com
AWS CloudFormation. Os arquivos de configuração do Terraform são escritos em HCL, o que significa que são mais
apresentável quando você entende a sintaxe. Quando você pensa sobre CloudFormation, que é
geralmente escrito em JSON ou YAML, é bastante complexo em termos de legibilidade, especialmente JSON;
YAML é um tanto bom de ler e entender, mas o problema com YAML é em relação ao seu
espaço em branco e linting. No Terraform também, há a preocupação de linting, mas o Terraform tem uma maneira inteligente de
executar linting apenas executando o **terraform fmt -recursive** , que executará linting para todos os
Arquivos de configuração do Terraform presentes no diretório, enquanto em YAML, você deve executar
algo manualmente ou use alguma ferramenta validadora YAML que pode ajudá-lo com as validações.
Portanto, em poucas palavras, o Terraform tem mais preferência do que o AWS CloudFormation.

##### Licença e suporte
O AWS CloudFormation é um serviço gerenciado da AWS oferecido gratuitamente, enquanto o Terraform é um serviço
ferramenta de automação de infraestrutura de origem fornecida pela HashiCorp. Existe o Terraform Cloud Enterprise produto da HashiCorp que é uma versão licenciada e os clientes empresariais precisam adquiri-lo
HashiCorp.
Em termos de planos de suporte, a AWS tem seu próprio plano de suporte que pode ser obtido da AWS, na mesma
forma que o Terraform tem sua opção de suporte que pode ser usada pelos clientes.

##### Suporte do console AWS
Como o AWS CloudFormation é uma ferramenta nativa AWS IaC, naturalmente fornece excelente suporte no AWS
console. No console AWS, você pode monitorar o progresso das implantações, ver todas as implantações
eventos, verifique vários erros, integre CloudFormation com CloudWatch e assim por diante. No Terraform
CLI, não temos nenhuma opção de console, mas na versão Terraform Cloud Enterprise, há um
console onde você pode ver todo o progresso das implantações de recursos.

