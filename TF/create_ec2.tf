
provider "aws"{
    region="ap-south-1"
} 
resource "aws_instance" "Apache" {

    ami= "ami-052cef05d01020f1d"
    instance_type="t2.micro"
    key_name="Apache"
    tags={
        name="Apache-keypair"
    }
     
}