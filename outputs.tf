#Syntax : value = <RESOURCE_TYPE>.<RESOURCE_NAME>.<ATTRIBUTE>

# Existing outputs
output "bucket1_name" {
  value = aws_s3_bucket.bucket1.bucket
}

output "bucket2_name" {
  value = aws_s3_bucket.bucket2.bucket
}

output "ec2_public_ip" {
  value = aws_instance.my_ec2.public_ip
}

output "vpc1_id" {
  value = aws_vpc.vpc1.id
}

output "vpc2_id" {
  value = aws_vpc.vpc2.id
}

# New outputs for variables
output "aws_region_used" {
  value = var.aws_region
}

output "instance_type_used" {
  value = var.instance_type
}

output "ami_id_used" {
  value = var.ami_id
}


