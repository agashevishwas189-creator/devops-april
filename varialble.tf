variable "ami_id" {
    type = string 
    default = "ami-0e12ffc2dd465f6e4"
  
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
 variable "vpc_security_group_ids" {
    type = string
    default = "sg-0c78535db3865697a"
   
 }