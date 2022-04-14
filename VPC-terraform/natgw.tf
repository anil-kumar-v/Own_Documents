resource "aws_eip" "eip" {
  vpc      = true
}

resource "aws_nat_gateway" "dev-natgw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.dev-pub-1b.id

  tags = {
    Name = "dev-natgw"
  }
}