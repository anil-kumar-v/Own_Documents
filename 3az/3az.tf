resource "aws_instance" "my-instance" {
  count = 3
  ami           = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"
  key_name      = "web"
  vpc_security_group_ids = ["sg-0b9998c31f5331105"]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "my-instance - ${count.index + 1}"
  }
}
