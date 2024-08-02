resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  security_groups = [var.security_group_id]

  tags = {
    Name = "web-instance"
  }
}
