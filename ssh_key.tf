#Dynamically create an SSH Key pair that will be associated with the EC2 instances

// Write the private key to a local file and upload the public key to AWS

//set the algorithm to RSA and the rsa_bits property to 4096
resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = "4096"
}

//ssh -i devops_test.pem user@address
resource "local_file" "private_key" {
  filename        = "${var.key_name}.pem"
  content         = tls_private_key.key.private_key_pem
  file_permission = "0600"
}

//Upload this public key to aws 
//Open the Amazon EC2 console at https://console.aws.amazon.com/ec2/ 
//Under Network & Security, choose Key Pairs
// On the Key Pairs page choose => Import key pair
//Type same name as saved file
//Click on import key pair
resource "aws_key_pair" "key_pair" {
  key_name   = "devops_test"
  public_key = tls_private_key.key.public_key_openssh
}