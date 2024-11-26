### SG group

resource "aws_security_group" "squad-5" {
  name        = "squad-5"
  vpc_id      = aws_vpc.squad-vpc.id
}



  ## creating vpc

resource "aws_vpc" "squad-vpc" {
  cidr_block       = "10.0.0.0/24"
  enable_dns_hostnames = "true"

  tags = {

    Name = "squad-5-vpc"
}

}
    

## creating IGW and associated with vpc

resource "aws_internet_gateway" "squad-5-igw" {
  vpc_id = aws_vpc.squad-vpc.id

tags = {

    Name = "squad-5-igw"
}


}

# creating public subnets

resource "aws_subnet" "public" {
vpc_id     = aws_vpc.squad-vpc.id
cidr_block = "10.0.0.128/25"

  tags = {

    Name = "squad-5-public-subnet"
}
}



# creating private subnets

resource "aws_subnet" "private" {
vpc_id     = aws_vpc.squad-vpc.id
cidr_block = "10.0.0.0/25"

  tags = {

    Name = "squad-5-private-subnet"
}
}


### creating public route table

resource "aws_route_table" "squad-5-public-route" {
  vpc_id = aws_vpc.squad-vpc.id

  tags = {

    Name = "squad-5-public-route"
  }
}

### creating private route table
resource "aws_route_table" "squad-5-private-route" {
  vpc_id = aws_vpc.squad-vpc.id

  tags = {

    Name = "squad-5-private-route"
  }
} 