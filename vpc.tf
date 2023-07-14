// creating  VPC 
resource "aws_vpc" "terraform7707-vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "terraform7707-vpc"
  }
}

// creating SUBNET
resource "aws_subnet" "terraform7707-subnet" {
    vpc_id = aws_vpc.terraform7707-vpc.id 
    cidr_block = var.subnet_cidr_block
    availability_zone = var.availability_zone
    map_public_ip_on_launch = "true" 
  
   tags = {
    Name = "terraform7707-subnet"
  }
}

// creating INTERNET GATEWAY
resource "aws_internet_gateway" "terraform7707-igw" {
  vpc_id = aws_vpc.terraform7707-vpc.id 

  tags = {
    Name = "terraform7707-igw"
  }
}

// creating ROUTE TABLE
resource "aws_route_table" "terraform7707-rt" {
  vpc_id = aws_vpc.terraform7707-vpc.id

  route {
    cidr_block = var.route_cidr_block
    gateway_id = aws_internet_gateway.terraform7707-igw.id 
  }
   tags = {
    Name = "terraform7707-rt"
  }
}

// Associate subnet with route table
resource "aws_route_table_association" "pub_sub" {
  subnet_id      = aws_subnet.terraform7707-subnet.id
  route_table_id = aws_route_table.terraform7707-rt.id
}