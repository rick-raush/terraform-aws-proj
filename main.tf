 # VPCs
resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc1_cidr
  tags = { Name = "MyVPC-1" }
}

resource "aws_vpc" "vpc2" {
  cidr_block = var.vpc2_cidr
  tags = { Name = "MyVPC-2" }
}

# S3 Buckets
resource "random_integer" "rand1" {
  min = 1000
  max = 9999
}

resource "random_integer" "rand2" {
  min = 1000
  max = 9999
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "my-terraform-bucket-1-${random_integer.rand1.result}"
  acl    = "private"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "my-terraform-bucket-2-${random_integer.rand2.result}"
  acl    = "private"
}

# EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = { Name = "MyTerraformEC2" }
} 
