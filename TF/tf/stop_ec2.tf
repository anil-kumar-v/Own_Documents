resource "aws_instance" "hulk" {
    name= "spot-instance"

    create_spot_instance= true

    ami= "ami-052cef05d01020f1d"
    instance_type="t2.micro"
    key_name="ec2_KEYS"
    tags={
        name="a1"
    }
     
}