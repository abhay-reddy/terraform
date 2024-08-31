provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "mykey" {
  key_name = "myec2key"
  public_key = file("~/terraform/demo/myec2key.pub")
}