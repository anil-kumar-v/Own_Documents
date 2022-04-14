
resource "aws_instance" "lab-alb" {
  ami="ami-052cef05d01020f1d"
  instance_type="t2.micro"
  vpc_security_group_ids =[ aws_security_group.lab-alb-ec2-sg.id]
  subnet_id   =  "subnet-06c10acda310a113c"
  key_name = "Apache"
  user_data = <<EOF
  #!/bin/bash
yum update -y
yum install httpd -y 
systemctl enable httpd
systemctl start httpd
mkdir -p  /var/www/html/football/
echo "this is football" >/var/www/html/football/index.html

EOF


  tags={
    Name= "lab-alb"
 }
}
