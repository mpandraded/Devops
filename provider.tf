terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.16.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.3.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region                   = "sa-east-1"            //"us-east-1"
  shared_credentials_files = ["~/.aws/credentials"] //Path to your credentials file(~/.aws/credentials) 

  //Or input credendial here
  // access_key = "my-access-key"
  //secret_key = "my-secret-key"

  #Tip: first way is better as it doesn't expose the credentials

}