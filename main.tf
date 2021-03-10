
resource "aws_vpc" "sample_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "sample_igw" {
  vpc_id = aws_vpc.sample_vpc.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_subnet" "private_subnet1a" {
    vpc_id  = aws_vpc.sample_vpc.id
    cidr_block = var.private_subnet1a
    availability_zone = var.private_subnet1a_zone
    tags = {
    Name = var.private_subnet1a_name
    }
}

resource "aws_subnet" "private_subnet1b" {
    vpc_id  = aws_vpc.sample_vpc.id
    cidr_block = var.private_subnet1b
    availability_zone = var.private_subnet1b_zone
    tags = {
    name = var.private_subnet1b_name
    }

}

resource "aws_subnet" "public_subnet1a" {
    vpc_id  = aws_vpc.sample_vpc.id
    cidr_block = var.public_subnet1a
    availability_zone = var.public_subnet1a_zone
    tags = {
    name = var.public_subnet1a_name
    }

}
resource "aws_subnet" "public_subnet1b" {
    vpc_id  = aws_vpc.sample_vpc.id
    cidr_block = var.public_subnet1b
    availability_zone = var.public_subnet1b_zone
    tags = {
    name = var.public_subnet1b_name
    }
}

resource "aws_route_table" "private1a_route_table" {
  vpc_id = aws_vpc.sample_vpc.id
  route {
    cidr_block = var.private1a_route
    gateway_id = aws_internet_gateway.sample_igw.id
  }
  tags = {
   name = var.private1a_route_name
}
}

resource "aws_route_table" "private1b_route_table" {
  vpc_id = aws_vpc.sample_vpc.id
  route {
    cidr_block = var.private1b_route
    gateway_id = aws_internet_gateway.sample_igw.id
  }
tags = {
   name = var.private1b_route_name
}
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.sample_vpc.id
  route {
    cidr_block = var.public_route
    gateway_id = aws_internet_gateway.sample_igw.id
  }
  tags = {
   name = var.public_route_name
}
}

resource "aws_eip" "public1a_nat_eip" {
  vpc      = true
  tags = {
   name = var.public1a_eip_name
}
}

resource "aws_nat_gateway" "nat_public1a" {
  allocation_id = aws_eip.public1a_nat_eip.id
  subnet_id     = aws_subnet.public_subnet1a.id

  tags = {
    Name = var.nat_public1a_name
} 
}

resource "aws_eip" "public1b_nat_eip" {
  vpc      = true
  tags = {
   name = var.public1b_eip_name
}
}

resource "aws_nat_gateway" "nat_public1b" {
 allocation_id = aws_eip.public1b_nat_eip.id
  subnet_id     = aws_subnet.public_subnet1b.id

  tags = {
    Name = var.nat_public1b_name
} 
}

resource "aws_s3_bucket" "terraform-s3-logs" {
  bucket = "terraform-s3-logs"
  acl    = "private"

  tags = {
    Name        = "terraform-s3-logs"
    Environment = "Dev"
  }
}












