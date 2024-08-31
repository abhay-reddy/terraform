provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "mykey" {
  key_name   = "myec2key"
  public_key = file("~/terraform/demo/myec2key.pub")
}

resource "aws_instance" "myinstance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name
  tags = {
    Name = demoinstance
  }
}
