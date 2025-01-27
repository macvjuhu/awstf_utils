// Define your resources here

data "aws_security_group" "existing_sg" {
  name = var.security_group_name
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [data.aws_security_group.existing_sg.id]

  tags = {
    Name = "ExampleInstance"
  }
}
