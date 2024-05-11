resource "aws_eks_access_entry" "access-entry" {
  cluster_name      = aws_eks_cluster.goodburguer-eks-cluster.name
  principal_arn     = var.principalArn
  kubernetes_groups = ["techchallenge"]
  type              = "STANDARD"
}