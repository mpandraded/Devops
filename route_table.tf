# Create Route Table and Add Public Route

/*resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }
  tags = {
    Name = "Public Route Table Devops Test"
  }
}
# Associate Public Subnet  to "Public Route Table"

resource "aws_route_table_association" "public-subnet-route-table-association" {
  subnet_id      = aws_subnet.public-subnet-devops-test.id
  route_table_id = aws_route_table.public-route-table.id
}
*/


