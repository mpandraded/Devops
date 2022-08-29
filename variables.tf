variable "vpc-cidr" {
  default     = "10.0.0.0/16"
  description = "VPC CIDR BLOCK"
  type        = string
}
variable "Public_Subnet_Devops_Test" {
  default     = "10.0.0.0/24"
  description = "Public_Subnet"
  type        = string
}
variable "Private_Subnet_Devops_Test" {
  default     = "10.0.2.0/24"
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