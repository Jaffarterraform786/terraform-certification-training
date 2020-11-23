provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-2"
}
provider "aws" {
  region = "us-east-1"
  alias  = "hello"
}
resource "aws_instance" "myec2" {
  ami           = "ami-0b0f4c27376f8aa79"
  instance_type = "t2.large"
  tags = {
    name = "myec3"
  }
}
resource "aws_instance" "myec3" {
  ami           = "ami-096fda3c22c1c990a"
  instance_type = "t2.micro"
  provider      = aws.hello
}
