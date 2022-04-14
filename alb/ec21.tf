resource "aws_instance" "lab-alb-1" {
  ami="ami-052cef05d01020f1d"
  instance_type="t2.micro"
  vpc_security_group_ids = [aws_security_group.lab-alb-apache-sg.id]
  subnet_id = "subnet-0ef6e6d1957ba2231"
  key_name = "Apache"
  user_data = <<EOF
  #!/bin/bash
yum update -y
yum install httpd -y 
systemctl enable httpd
systemctl start httpd
mkdir -p  /var/www/html/cricket/
echo "this is cricket" >/var/www/html/cricket/index.html
EOF

  tags={
    Name= "lab-alb-1"
 }
}
