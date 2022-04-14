resource "aws_subnet" "dev-pub-1a" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "sa-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "dev-pub-1a"
  }
}

resource "aws_subnet" "dev-pub-1b" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "sa-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "dev-pub-1b"
  }
}

resource "aws_subnet" "dev-pub-1c" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "sa-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "dev-pub-1c"
  }
}

resource "aws_subnet" "dev-private-1a" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "sa-east-1a"

  tags = {
    Name = "dev-private-1a"
  }
}

resource "aws_subnet" "dev-private-1b" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "sa-east-1b"

  tags = {
    Name = "dev-private-1b"
  }
}

resource "aws_subnet" "dev-private-1c" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "sa-east-1c"

  tags = {
    Name = "dev-private-1c"
  }
}

resource "aws_subnet" "dev-data-1a" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "sa-east-1a"

  tags = {
    Name = "dev-data-1a"
  }
}

resource "aws_subnet" "dev-data-1b" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.7.0/24"
  availability_zone = "sa-east-1b"

  tags = {
    Name = "dev-data-1b"
  }
}

resource "aws_subnet" "dev-data-1c" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.8.0/24"
  availability_zone = "sa-east-1c"

  tags = {
    Name = "dev-data-1c"
  }
}