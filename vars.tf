variable "regionDefault" {
  default = "us-east-1"
}

variable "labRole" {
  default = "arn:aws:iam::615687076434:role/LabRole"
}

variable "projectName" {
  default = "goodburguer"
}

variable "subnetA" {
  default = "subnet-0c1d5d6102025a707"
}

variable "subnetB" {
  default = "subnet-00b9d57e8a157ac97"
}

variable "subnetC" {
  default = "subnet-0183c3c66a25b44ed"
}

variable "vpcId" {
  default = "vpc-07f6a22b67492e4c2"
}

variable "instanceType" {
  default = "t3a.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::615687076434:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "AWS_ACCESS_KEY_ID" {

}

variable "AWS_SECRET_ACCESS_KEY" {

}

variable "AWS_SESSION_TOKEN" {

}