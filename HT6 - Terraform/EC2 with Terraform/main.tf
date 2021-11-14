resource "aws_instance" "app_server" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"

  tags = {
    Name = var.var-ec2-terra
  }
}
