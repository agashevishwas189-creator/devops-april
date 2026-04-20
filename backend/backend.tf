provider "aws" {
    region = "us-east-1"
    profile = "configs"
    shared_config_files = ["/root/.aws/credentials"]

}

#partationekey = LockID 
    terraform {
      backend "s3" {
      bucket = "devops-terraform-data-0118"
      key = "teraform.tfstate"
      dynamodb_table = "15lpa"
      region = "us-east-1"
      profile = "configs"
      shared_credentials_files = ["/root/.aws/credentials"]
      }
    }
    
resource "aws_instance" "my_aws" {
ami = var.ami_id
instance_type = var.instance_type
count = var.instance_count

user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo echo "hello world" >> /var/www/html/index.html
    EOF

tags = {
    Name = "terraform-state-lock-${count.index}" 
}
}