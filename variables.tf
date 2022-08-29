variable "vpc-cidr" {
  default     = "172.31.0.0/16" //standard aws
  description = "VPC CIDR BLOCK"
  type        = string
}
variable "Public_Subnet_Devops_Test" {
  default     = "172.31.0.0/20"
  description = "Public_Subnet"
  type        = string
}
variable "Private_Subnet_Devops_Test" {
  default     = "172.31.32.0/20"
  description = "Private_Subnet"
  type        = string
}
variable "ssh-location" {
  default     = "0.0.0.0/0"
  description = "SSH variable"
  type        = string
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "key_name" {
  default = "devops_test"
  type    = string
}
variable "amiID" {
  type    = string
  default = "ami-08ae71fd7f1449df1"
}