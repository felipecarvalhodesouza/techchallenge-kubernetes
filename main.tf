provider "aws" {
  region = "us-east-1"
}

# Criação do cluster EKS
resource "aws_eks_cluster" "goodburguer-cluster" {
  name     = "goodburguer-cluster"
  role_arn = "arn:aws:iam::615687076434:role/LabRole"
  version  = "1.29"

  vpc_config {
    subnet_ids = ["subnet-0183c3c66a25b44ed"]
  }
}

# Configuração do cluster kubeconfig
data "aws_eks_cluster_auth" "goodburguer-cluster" {
  name = aws_eks_cluster.goodburguer-cluster.name
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster_auth.goodburguer-cluster.cluster_endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster_auth.goodburguer-cluster.cluster_ca_certificate)
  token                  = data.aws_eks_cluster_auth.goodburguer-cluster.token
  load_config_file       = false
}