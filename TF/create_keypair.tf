resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "Apache"
  public_key = tls_private_key.this.public_key_openssh
}
provisioner "local-exec" { # Create a "Apache.pem" to your computer!!
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./Apache.pem"
}