
resource "aws_instance" "dashboard" {
  ami           = var.ami
  instance_type = var.instance_type
  
  tags = {
    "Name" = var.ec2_name_tags
  }
}