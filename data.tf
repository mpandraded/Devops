
//Get VPC ID
data "aws_vpc" "vpc_devops" {
  filter {
    name   = "tag:Name"
    values = ["VPC"]
  }
}

//Get Subnet ID
data "aws_subnet" "public_sub_devops" {
  filter {
    name   = "tag:Name"
    values = ["public-sub-1a"]
  }
}

//Get Subnet ID
data "aws_subnet" "private_sub_devops" {
  filter {
    name   = "tag:Name"
    values = ["private-sub-1c"]
  }
}

data "aws_internet_gateway" "devops" {
  filter {
    name   = "tag:Name"
    values = ["internet_gateway-devops-aws"]
  }
}
