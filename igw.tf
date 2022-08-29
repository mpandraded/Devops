# Create Internet Gateway and Attach it to VPC

/*
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = data.aws_vpc.vpc_devops.id //aws_vpc.vpc.id
  tags = {
    Name = "internet_gateway-devops-test"
  }
}
*/  