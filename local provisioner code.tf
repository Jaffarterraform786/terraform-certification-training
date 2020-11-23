provider "aws" {
  access_key = ""
  secret_key = ""
  region     = ""
}


resource aws_instance "myec23" {
  ami           = "ami-0e306788ff2473ccb"
  instance_type = "t2.large"

  provisioner "local-exec" {
    command = "echo ${aws_instance.myec23.private_ip} >> private_ips.txt"
  }
}
