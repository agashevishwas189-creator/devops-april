resource "aws_vpc" "webserver_vpc" {
  cidr_block = var.vpc_cidr
        tags = {
        Name = var.webserver_vpc
    }
}

resource "aws_subnet" "webserver_subnet" {
  vpc_id     = aws_vpc.webserver_vpc.id
  cidr_block = var.subnet_cidr
  map_public_ip_on_launch = var.map_public_ip
    tags = {
    Name = var.webserver_subnet
  }
}