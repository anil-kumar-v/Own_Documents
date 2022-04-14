resource "aws_instance" "F2" {


    name="Modified_Terraform_Instance"
    count=2

    ami= "ami-052cef05d01020f1d"
    instance_type="t2.micro"
    key_name="ec2_KEYS"
    tags={
        Dept="Devops"
        
    }
     
}