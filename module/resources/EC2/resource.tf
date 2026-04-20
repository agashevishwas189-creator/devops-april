resource "aws_instance" "my_aws" {
    ami = var.ami_id
    instance_type = var.instance_type
    #vpc_security_group_ids = [var.vpc_security_group_ids, aws_security_group.my_sg.id]
    #vpc_id = var.ec2_vpc_id
    subnet_id =  var.ec2_subnet_id
    tags = {
        Name = "my_aws"
    }
}

resource "aws_security_group" "my_sg" {
    name = "my_sg"
    #for http
    ingress { 
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    #for ssh
    ingress { 
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    #for https
    ingress  { 
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }  
    tags = {
        Name = "my_sg" 
     }    
}
