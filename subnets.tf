/* # Create Public Subnet 

resource "aws_subnet" "public-subnet-devops-test" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.Public_Subnet_Devops_Test
  availability_zone       = "us-east-1"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-devops-test"
  }
}

//############################ Private Subnet ########################


resource "aws_subnet" "private-subnet-devops-test" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.Private_Subnet_Devops_Test
  availability_zone       = "us-east-1"
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-devops-test"
  }
}
 */