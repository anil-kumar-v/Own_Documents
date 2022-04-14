resource "aws_route_table" "dev-pub-route" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev-igw.id
  }

  tags = {
    Name = "dev-pub-route"
  }
}


resource "aws_route_table" "dev-private-route" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.dev-natgw.id
  }

  tags = {
    Name = "dev-private-route"
  }
}


resource "aws_route_table_association" "A1" {
  subnet_id      = aws_subnet.dev-pub-1a.id
  route_table_id = aws_route_table.dev-pub-route.id
}

resource "aws_route_table_association" "A2" {
  subnet_id      = aws_subnet.dev-pub-1b.id
  route_table_id = aws_route_table.dev-pub-route.id
}

resource "aws_route_table_association" "A3" {
  subnet_id      = aws_subnet.dev-pub-1c.id
  route_table_id = aws_route_table.dev-pub-route.id
}

resource "aws_route_table_association" "A4" {
  subnet_id      = aws_subnet.dev-private-1a.id
  route_table_id = aws_route_table.dev-private-route.id
}

resource "aws_route_table_association" "A5" {
  subnet_id      = aws_subnet.dev-private-1b.id
  route_table_id = aws_route_table.dev-private-route.id
}

resource "aws_route_table_association" "A6" {
  subnet_id      = aws_subnet.dev-private-1c.id
  route_table_id = aws_route_table.dev-private-route.id
}

resource "aws_route_table_association" "A7" {
  subnet_id      = aws_subnet.dev-data-1a.id
  route_table_id = aws_route_table.dev-private-route.id
}

resource "aws_route_table_association" "A8" {
  subnet_id      = aws_subnet.dev-data-1b.id
  route_table_id = aws_route_table.dev-private-route.id
}

resource "aws_route_table_association" "A9" {
  subnet_id      = aws_subnet.dev-data-1c.id
  route_table_id = aws_route_table.dev-private-route.id
}






