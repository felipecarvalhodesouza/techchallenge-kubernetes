# Repositório IaC do TechChallenge - Fase 3 #

Como boa prática, o código de infraestrutura como código ficou em um projeto apartado do código da aplicação, para desacoplar o trabalho do Desenvolvedor e da Operação.

Nesse projeto, existem arquivos **Terraform** divididos na seguinte estrutura.

* eks-access-entry.tf   -> Responsável pelo provisionamento do Access Entry
* eks-access-policy.tf  -> Responsável pelas políticas de acesso
* eks-cluster.tf        -> Responsável pela criação do Cluster EKS
* eks-nodeg.tf          -> Responsável pela criação do grupo de nós do cluster
* provider.tf           -> Definião do provider da aws
* sg.tf                 -> Responsável pela criação do Security Group associado ao cluster
* vars.tf               -> Definição das variáveis em arquivo separado

Projeto seguiu as boas práticas e estrutura demonstrada na live sobre trabalho com Terraform.

Além disso, foi implementado fluxo no GitHub Actions para que o provisionamento não dependa da execução manual de processos.

![image](https://github.com/felipecarvalhodesouza/techchallenge-kubernetes/assets/36648569/5070356b-636b-4288-b671-53ef529dd6ee)
