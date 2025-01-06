variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
  default = ""
}

resource "aws_instance" "example" {
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "Simple-EC2"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
