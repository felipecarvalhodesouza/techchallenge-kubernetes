resource "aws_security_group" "sg" {
  name        = "SG-${var.projectName}"
  description = "Grupo de seguranca do Cluster EKS"
  vpc_id      = var.vpcId

  ingress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}