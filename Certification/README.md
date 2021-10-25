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

##### Fluxo de Trabalho

Você deve estar pensando que o AWS CloudFormation será mais maduro do ponto de vista operacional,
e isso é verdade até certo ponto, mas aqui você precisa entender a área da dor. Vamos dar uma
exemplo, onde você tem uma infraestrutura complexa de cerca de 50 recursos e você a está criando
usando AWS CloudFormation. Depois de correr por cerca de 20-30 minutos, sua pilha AWS CloudFormation
recebe um erro em um dos recursos e por causa disso, a pilha falha. Nesse caso, pode rolar
voltar e destruir tudo o que foi criado na AWS ou, às vezes, pode ser capaz de implantar alguns dos
recursos, embora tenha falhado, desde que você tenha desativado a reversão em caso de falha no AWS
CloudFormation.
#####
Mas, para ser muito honesto, se ele retrocedeu e destruiu o que havia criado, então como um
operador, você não estará procurando por algo assim porque adiciona mais tempo e esforço. Agora,
quando você provisiona sua infraestrutura AWS usando o fluxo de trabalho Terraform, isso provisiona todos os infraestrutura necessária na AWS. Mesmo que, suponhamos, o fluxo de trabalho do Terraform tenha falhado, ele manter os recursos existentes que já foram criados antes da falha. Você pode executar novamente o Configuração do Terraform, e isso simplesmente provisionará os recursos restantes em vez de criar todos os recursos do zero, o que economizará uma quantidade significativa de tempo e esforço do ponto de vista de retrabalho.
Portanto, com base no parágrafo anterior, parece que o AWS CloudFormation e o Terraform fluxos de trabalho podem ser usados. Depende totalmente do consumidor e de qual ele prefere.

##### Compreensão da mensagem de erro

Erros lançados pelo Terraform podem ser difíceis para um novato entender porque às vezes eles fornecem
um erro estranho gerado pelas APIs do respectivo provedor. Para ter um
compreensão de todos os diferentes tipos de erros, você precisa ter uma compreensão dos argumentos que
são suportados pelos provedores no Terraform.
Portanto, comparando a compreensibilidade das mensagens de erro entre o Terraform e o AWS CloudFormation,
ocasionalmente, você pode descobrir que AWS CloudFormation é simples, pois você terá experiência de trabalhando com o último, e então, com seu conhecimento do Terraform, você poderá facilmente descobrir
a maioria dos erros.

##### Gestão do estado da infraestrutura
Tanto o AWS CloudFormation quanto o Terraform mantêm o estado da infraestrutura à sua maneira. No
Terraform, os arquivos de estado são armazenados no disco local ou você pode fornecer um local de back-end remoto, como
como AWS S3, onde você deseja armazenar seu arquivo de estado do Terraform. Este arquivo de estado seria escrito em JSON
e conteria as informações da infraestrutura definida no arquivo de configuração do Terraform.
Portanto, é muito fácil para o Terraform validar e verificar qualquer tipo de desvio de configuração.
Em contraste, o AWS CloudFormation é nativo do AWS, então não precisamos nos preocupar com o modo como o AWS
CloudFormation manteria seu estado. AWS CloudFormation usado para obter um sinal do
recursos que tem provisionados ou geridos pela AWS CloudFormation. Se houver algum
desvio de configuração, o AWS CloudFormation pode não ser capaz de detectá-lo.

##### Validação
Ambas as ferramentas permitem que você tenha validação de infraestrutura, mas há uma diferença. Usando a CLI do Azure
ou PowerShell, você pode validar um modelo executando **az group deployment validate**, o que significa
ele apenas verificará a sintaxe do seu modelo. Para validar quais são todos os recursos que obtêm
provisionado, você deve implantar o modelo ARM completo.
O Terraform fornece uma validação com a fase do plano que verifica a implantação atual no
Arquivo de estado do Terraform, atualiza o status da configuração real da nuvem e, em seguida, calcula o
delta entre a configuração atual e a configuração de destino.
Em termos de validação, se você comparar os dois, aqui também o Terraform vence o ARM
modelos.


#### Modelos ARM do Azure versus Terraform
##### Plataforma cruzada
O principal benefício do Terraform é que você pode usá-lo com muitos provedores de nuvem, incluindo AWS, GCP,
e Azure. O modelo ARM é mais central para o Azure, enquanto para o Terraform, você só precisa aprender
a sintaxe da linguagem HCL e o fluxo de trabalho do Terraform e comece a usar qualquer provedor de nuvem, como o GCP,
Azure ou AWS. Portanto, podemos entender que o Terraform é agnóstico em relação à nuvem e seria
fácil para o usuário implementar a infraestrutura em qualquer uma dessas plataformas usando o Terraform.

##### Língua

Terraform é escrito em HCL . A sintaxe da HCL é muito poderosa e permite que você faça referência a variáveis,
atributos e assim por diante, enquanto os modelos ARM usam JSON e são um pouco complexos, mas muito poderosos,
porque você pode usar instruções condicionais, modelos aninhados e assim por diante.
Mantendo tudo isso em mente, também aqui, encorajamos os usuários finais e desenvolvedores a usar o Terraform.

##### Modularidade
Modularidade geralmente significa quão mais fácil para você é implementar seu código de infraestrutura usando
Modelos Terraform ou ARM. Os módulos do Terraform podem ser facilmente escritos e reutilizados como infraestrutura
código em vários projetos por várias equipes. Portanto, é muito fácil modularizar o código do Terraform.
Você tem a opção de modularizar os modelos ARM usando um modelo ARM aninhado, embora você também tem a opção de formar um modelo aninhado, o primeiro da linha em seu modelo principal, e o
o segundo usando arquivos JSON separados chamados de seu modelo principal.
Aqui, comparando os modelos ARM e o Terraform, o Terraform ganha mais pontos do que o ARM
modelos, embora, neste caso, os modelos ARM ainda sejam uma opção viável para os usuários finais se eles forem
planejando criar recursos no Azure.

### Legibilidade

Não há dúvida de que quando você pretende escrever um arquivo de configuração do Terraform, você o encontrará
mais legível em comparação com os modelos ARM. Os arquivos de configuração do Terraform escritos em HCL são mais
apresentável quando você entende sua sintaxe, e a melhor parte é que se você aprendeu o
sintaxe, você seria capaz de escrever e usá-lo em qualquer lugar em qualquer provedor de nuvem, incluindo Azure, GCP,
e AWS. Quando você considera os modelos ARM, que geralmente são escritos em JSON, eles são bastante
complexo em termos de legibilidade.

##### Licença e suporte

Os modelos ARM usam uma abordagem IaC nativa do Azure e estão disponíveis gratuitamente, enquanto o Terraform é um
ferramenta de código aberto disponível na HashiCorp. Existe a versão Terraform Cloud Enterprise do
Terraform que os clientes empresariais podem comprar. Com relação ao suporte, Azure e Terraform
têm seus próprios planos de suporte que podem ser utilizados pelo cliente.

##### Suporte ao portal do Azure

Como um modelo ARM é uma ferramenta nativa do Azure IaC, ele naturalmente fornece excelente suporte no Azure
portal. Você pode monitorar o andamento da implantação no portal do Azure.
Não há suporte do portal do Azure para Terraform, mas se um cliente estiver disposto a usar o Terraform Cloud
Produto corporativo, então eles podem utilizar um portal que mostra informações suficientes sobre o
infraestrutura que eles planejam gerenciar por meio do Terraform.

##### Fluxo de Trabalho
Em termos de fluxo de trabalho, os modelos ARM e o Terraform têm recursos muito bons. Se a implantação
de recursos é interrompido na metade, os modelos Terraform e ARM têm a capacidade de
implantar os recursos restantes durante a segunda execução, ignorando os recursos existentes.
Porém, há uma pequena diferença. A implantação do modelo ARM requer um grupo de recursos do Azure
no lugar antes de executar o código do modelo ARM, enquanto o código de configuração do Terraform é capaz de
criar um grupo de recursos do Azure durante o próprio tempo de execução, assim como você seria obrigado a definir um
bloco de código do grupo de recursos no arquivo de configuração. Portanto, parece que ambos os modelos ARM e
O Terraform é bastante satisfatório em termos de fluxo de trabalho.


##### Compreensão da mensagem de erro

O código do Terraform pode gerar alguns erros estranhos. Não há dúvida de que no backend, seria
usando APIs de provedor de ARM, o que mostraria esses erros, e pode ser difícil para os usuários finais
que são novos no Terraform para entendê-los, enquanto nos modelos ARM, os erros podem ser facilmente
identificados e corrigidos, pois os usuários finais podem ter experiência de trabalho com modelos ARM.
Então, em termos de comparação da compreensão da mensagem de erro entre os modelos Terraform e ARM,
este processo pode ser mais fácil em modelos ARM.

##### Gestão do estado da infraestrutura
Os modelos ARM e o Terraform fornecem um bom gerenciamento de estado. Terraform fornece arquivo de estado
gerenciamento usando o mecanismo de estado de back-end. No arquivo de estado, o Terraform mapeia o recurso
que foi definido no arquivo de configuração com o que realmente foi implantado para que possa facilmente rastrear qualquer desvio de configuração. O ARM é capaz de reverter para uma implantação anterior bem-sucedida. Você pode
li que o ARM não tem estado, pois não armazena nenhum arquivo de estado.

####

#### Google Cloud Deployment Manager versus Terraform

##### Plataforma cruzada
Como você já viu uma comparação entre AWS e Azure, agora você deve ter uma compreensão
do Terraform, que pode ser usado em qualquer plataforma, inclusive no GCP. Você só precisa saber como você
pode escrever arquivos de configuração do Terraform usando HCL e seu fluxo de trabalho.
Cloud Deployment Manager é um serviço de implantação de infraestrutura que automatiza a criação e
gerenciamento de recursos do Google Cloud. Então, aqui, o Terraform vence o Cloud Deployment
Gerente.


##### Língua
Terraform é escrito em HCL . A sintaxe da HCL é muito fácil e poderosa e permite que você faça referência
variáveis, atributos e assim por diante, enquanto o Cloud Deployment Manager usa YAML para criar um
arquivo de configuração e você pode definir vários modelos no arquivo de configuração, que é escrito usando
Jinja ou Python.
Tendo tudo isso em mente, também aqui encorajamos os usuários finais ou desenvolvedores a usar o Terraform
porque, para usar a implantação em nuvem, seria necessário ter o comando de Python ou
Jinja e YAML.

##### Modularidade
Modularidade significa a facilidade com que você pode definir arquivos de configuração e reutilizá-los para infraestrutura
provisionamento e gerenciamento usando Terraform ou Cloud Deployment Manager. Módulos do Terraform
podem ser escritos e publicados facilmente, e esses módulos podem ser facilmente consumidos por outro produto
equipes em seus projetos. Portanto, modularizar o código do Terraform é bastante simples.
Você tem a opção de modularizar o Cloud Deployment Manager usando um modelo aninhado dentro de um
arquivo de configuração. Esses modelos podem ser escritos em Python ou Jinja . Uma única configuração pode importe os modelos Jinja e Python. Esses arquivos de modelo devem estar presentes localmente ou colocados em um
URL de terceiros para que o Cloud Deployment Manager possa acessá-los.
Aqui, comparando o Cloud Deployment Manager e o Terraform, o Terraform marca mais pontos do que
Google Cloud Deployment Manager, embora o Google Cloud Deployment Manager continue viável
opção para usuários finais aqui também, se eles estiverem planejando criar recursos no Google.
##### Validação
Ambas as ferramentas permitem validar a infraestrutura, mas há uma diferença. Para descobrir quaisquer erros de sintaxe
no arquivo de configuração, você deverá executá-lo no Google Cloud Deployment Manager. Esse
lançará quaisquer erros possíveis, bem como validará quais recursos são provisionados. Neste caso, você
precisa implantar um arquivo de configuração completo do Google Cloud Deployment Manager no Google Cloud.
O Terraform fornece uma validação com a fase do plano que informa quais recursos ele criará,
destruir ou atualizar. Ele é usado para fins de comparação com o arquivo de estado existente do Terraform e
consequentemente, fornece insights detalhados para o administrador de quando eles irão executar o **terraform plan**
antes de ser implantado no Google Cloud.
Em termos de validação, se você comparar os dois, aqui também o Terraform vence o Google
Cloud Deployment Manager.
##### Legibilidade
Se você pretende escrever um arquivo de configuração do Terraform, você o achará mais legível em comparação com um
Arquivo de configuração do Google Cloud Deployment Manager. Os arquivos de configuração do Terraform escritos em HCL são
mais apresentável, e a melhor parte é que se você aprendeu as sintaxes do Terraform, poderá
para escrevê-los e usá-los em qualquer lugar em qualquer nuvem, incluindo Google, GCP e AWS, ou mesmo em
instalações.
Quando você pensa no Cloud Deployment Manager, que geralmente é escrito em YAML, também é fácil
entender, mas quando você precisar introduzir um modelo no arquivo de configuração, que está escrito em
Jinja ou Python, torna-se complexo de ler e entender.
Portanto, eu definitivamente sou da opinião de que o Terraform é mais fácil de usar em comparação com o Cloud
Deployment Manager.

##### Capacidade de Manutenção
Em um determinado nível, acho que o Terraform é mais sustentável por causa de sua modularidade superior e como
você pode criar diferentes recursos no Google Cloud e armazenar seu arquivo de estado no Google Cloud Storage.
Um arquivo de configuração do Cloud Deployment Manager que é escrito em YAML e cujo modelo é escrito
em Python ou Jinja não é tão fácil de ler, o que significa que o consumidor precisa aprender vários códigos
línguas. O modelo aninhado parece muito complexo e você precisa armazenar o arquivo de modelo em
localhost ou um URL de terceiros. Definir seu código de modelo localmente no arquivo de configuração e
consumi-lo no arquivo de configuração não é possível.
O Cloud Deployment Manager não tem nenhum tipo de arquivo de estado, enquanto o Terraform tem um arquivo de estado que
é armazenado no back-end remoto.
A configuração do código Terraform pode ser armazenada em qualquer ferramenta de controle de versão, como Git, Azure Repos,
ou Bitbucket, se estivermos planejando usar pipelines de DevOps CI / CD.

Manter o código Terraform e os modelos do Google Cloud Deployment Manager seria um pouco
pouco complexo porque ambos precisam ser armazenados localmente ou nas ferramentas de controle de origem.
##### Suporte para console do Google
Como o Google Cloud Deployment Manager é uma ferramenta nativa do Google IaC usada para provisionamento e
manutenção da infraestrutura, fornece excelente suporte no console do Google Cloud. Você pode ver
o progresso em termos de implantação no console do Google Cloud.
Não há suporte do console do Google Cloud para Terraform, embora haja um portal separado se você for
usando a versão Terraform Cloud Enterprise.
##### Fluxo de Trabalho
Em termos de fluxo de trabalho, tanto o Cloud Deployment Manager quanto o Terraform têm recursos muito bons. Se o
a implantação de recursos é interrompida na metade, tanto do Terraform quanto do Cloud Deployment
O gerente tem a capacidade de implantar os recursos restantes durante a segunda execução, ignorando
recursos existentes.
Porém, há uma pequena diferença. A implantação do Cloud Deployment Manager requer um projeto em
antes de executar o arquivo de configuração usando o Cloud Deployment Manager, enquanto o Terraform
o código de configuração é capaz de criar um projeto do Google durante o próprio tempo de execução, assim como você faria
necessário para definir um código de bloco de recursos de projeto do Google no arquivo de configuração. Portanto, eu sinto tanto
deles são bastante satisfatórios no que diz respeito ao fluxo de trabalho.
##### Compreensão da mensagem de erro
Nas comparações anteriores da AWS e do Azure, mencionamos que os erros costumavam surgir do
APIs dos respectivos provedores, e aprender como lidar com esses erros vem com a experiência. Se você
já estiveram equipados com esse conhecimento, então você poderá facilmente retificar esses problemas.
Mais uma vez, em comparação com o Google Cloud Deployment Manager, o código Terraform apresenta uma série de
erros que seriam difíceis de entender se você fosse novo no Terraform. Não significa que
você pode entender facilmente os erros do Google Cloud Deployment Manager simplesmente porque eles envolvem
várias linguagens de codificação, como YAML, JSON ou Jinja.
Portanto, em termos de comparação da compreensibilidade das mensagens de erro entre o Terraform e o Google
Cloud Deployment Manager, se você tivesse experiência com o Google Cloud, seria instintivo para
você e isso o ajudará a entender os erros facilmente. Em relação ao tratamento de erros com o Terraform,
pode levar algum tempo para você descobrir, já que as APIs de recursos do Google Cloud liberam erros específicos para
naquela.

##### Gestão do estado da infraestrutura
Tanto o Cloud Deployment Manager quanto o Terraform fornecem um bom gerenciamento de estado. Terraform fornece
gerenciamento de arquivos de estado usando um mecanismo de estado de back-end e arquivos de estado podem ser armazenados no Google
Armazenamento na núvem. O Cloud Deployment Manager é capaz de reverter a uma situação anterior bem-sucedida
implantação, uma vez que a implantação costumava acontecer de forma incremental por padrão, e é muito fácil
implementar todas as alterações que você deseja fazer em termos de recursos do Google usando o Cloud Deployment
Gerente.
Vimos como o Terraform difere de outras opções de IaC, principalmente em termos de plataforma cruzada, como
bem como sua modularidade, legibilidade, gerenciamento de estado de infraestrutura, linguagem, facilidade de manutenção,
fluxo de trabalho, suporte de console de nuvem e assim por diante, e como pode ser usado por grandes provedores de nuvem, como AWS, Azure e GCP. Todas essas comparações ajudarão você a entender como o Terraform é uma
IaC poderoso e como você pode escolher efetivamente o Terraform IaC para o provisionamento de sua infraestrutura
em vez de selecionar qualquer IaC específico. 

#### Uma compreensão da arquitetura do Terraform
Terraform é inteiramente
construído em uma arquitetura baseada em plugins. Os plug-ins do Terraform permitem que todos os desenvolvedores estendam o Terraform
uso escrevendo novos plug-ins ou compilando versões modificadas de plug-ins existentes.

Como você pode ver na arquitetura anterior do Terraform, existem dois componentes principais nos quais
O funcionamento do Terraform depende de: Terraform Core e plug-ins do Terraform. Terraform Core usa Remote
Chamadas de procedimento ( RPCs ) para se comunicar com plug-ins Terraform e oferece várias maneiras de descobrir
e carregue os plug-ins para usar. Os plug-ins do Terraform expõem uma implementação para um serviço específico, como
AWS ou um provisionador e assim por diante.
#####  Terraform Core

Terraform Core é um binário compilado estaticamente escrito na linguagem de programação Go. Ele usa RPCs
para se comunicar com plug-ins do Terraform e oferece várias maneiras de descobrir e carregar plug-ins para uso.
O binário compilado é o Terraform CLI. Se você estiver interessado em aprender mais sobre isso, você deve
comece sua jornada no Terraform CLI, que é o único ponto de entrada. O código é de código aberto e
hospedado em github.com/hashicorp/Terraform

As responsabilidades do Terraform Core são as seguintes:
###### IaC: Leitura e interpolação de arquivos e módulos de configuração
###### Gerenciamento de estado de recursos
###### Construção de gráfico de recursos
###### Execução do plano
###### Comunicação com plug-ins via RPC

##### Plug-ins do Terraform

Os plug-ins do Terraform são escritos na linguagem de programação Go e são binários executáveis ​que obtêm
invocado pelo Terraform Core via RPCs. Cada plugin expõe uma implementação para um serviço específico,
como AWS, ou um provisionador, como Bash. Todos os provedores e provisionadores são plug-ins que são
definido no arquivo de configuração do Terraform. Ambos são executados como processos separados e
comunicar-se com o binário principal do Terraform por meio de uma interface RPC. O Terraform tem muitos
provisionadores, enquanto os provedores são adicionados dinamicamente como e quando necessário. O Terraform Core oferece um
estrutura de alto nível que abstrai os detalhes da descoberta do plug-in e da comunicação RPC, então
que os desenvolvedores também não precisam gerenciar.
Os plug-ins do Terraform são responsáveis ​ pela implementação específica do domínio de seu tipo.
As responsabilidades dos plug-ins do provedor são as seguintes:
´´´´´´ 
Inicialização de quaisquer bibliotecas incluídas usadas para fazer chamadas de API
Autenticação com o provedor de infraestrutura
A definição de recursos que mapeiam para serviços específicos

´´´
As responsabilidades dos plug-ins provisionadores são as seguintes:
Executar comandos ou scripts no recurso designado após a criação ou destruição

#### Capítulo 3 : Introdução ao Terraform

