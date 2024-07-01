
# Public-subnet 1
resource "aws_subnet" "public1" {
  availability_zone       = "us-east-1a"
  cidr_block              = "172.120.1.0/24"
  vpc_id                  = aws_vpc.vpc1.id
  map_public_ip_on_launch = true

  tags = {
    Name = "utc-app-public-subnet-1a"
  }
}

# Public-subnet 2
resource "aws_subnet" "public2" {
  availability_zone       = "us-east-1b"
  cidr_block              = "172.120.2.0/24"
  vpc_id                  = aws_vpc.vpc1.id
  map_public_ip_on_launch = true

  tags = {
    Name = "utc-app-public-subnet-1b"
  }
}

# Private-subnet 1
resource "aws_subnet" "private1" {
  availability_zone = "us-east-1a"
  cidr_block        = "172.120.3.0/24"
  vpc_id            = aws_vpc.vpc1.id

  tags = {
    Name = "utc-app-private-subnet-1a"
  }
}

# Private-subnet 2
resource "aws_subnet" "private2" {
  availability_zone = "us-east-1b"
  cidr_block        = "172.120.4.0/24"
  vpc_id            = aws_vpc.vpc1.id

  tags = {
    Name = "utc-app-private-subnet-1b"
  }


}