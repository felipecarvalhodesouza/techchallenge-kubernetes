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
  default = "subnet-0c6de2813149569c6"
}

variable "subnetB" {
  default = "subnet-0d4bf8ba4dab43ebb"
}

variable "subnetC" {
  default = "subnet-09969bb6b2d8487f0"
}

variable "vpcId" {
  default = "vpc-06bfcd03a849b1909"
}

variable "instanceType" {
  default = "t3a.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::221772931871:role/voclabs"
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
