/*provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-south-1"
}
resource "aws_instance" "myec2" {
  ami           = "ami-026669ec456129a70"
  instance_type = "t2.large"
  key_name      = "yyyy"

  tags = {
    name = "myec3"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo service httpd on",
      "sudo service httpd start"
    ]
  }
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./yyyy.pem")
    host        = self.public_ip
  }
}
*/
