
resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    "Name" = var.instance_name
  }
}