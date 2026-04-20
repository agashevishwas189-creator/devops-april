module "ec2" {
  source = "ubantu/april.d/terraform/module/resources/EC2"
  ami_id = "ami-0e12ffc2dd465f6e4"
  instance_type = "t3.micro"
  #vpc_security_group_ids = "sg-0c78535db3865697a"
  #ec2_vpc_id = module.vpc.vpc_id
  ec2_subnet_id = module.vpc.subnet_id
  
}

module "vpc" {
    source = "ubantu/april.d/terraform/module/resources/VPC"
    vpc_cidr = "192.168.0/16"
    subnet_cidr = "192.168.1/24"
    map_public_ip = true
    webserver_subnet = "webserver-subnet"
    webserver_vpc = "webserver-vpc"
  
} # if you want the out put of all data crearte output.tf file and write the code there.