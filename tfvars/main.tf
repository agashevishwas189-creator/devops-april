provider "aws" {
region = "ap-south-1" # Change the region as per your requirement
profile = "configs" # Change the profile name as per your AWS CLI configuration

}

resource "aws_instance" "my_aws" {
ami = var.ami_id
instance_type = var.instance_type
vpc_security_group_ids = var.vpc_security_group_ids


tags = {
    name = "my_aws"
}
}