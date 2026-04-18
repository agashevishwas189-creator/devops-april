variable "ami_id" {
    type = string 
  
}
variable "instance_type" {
    type = string
}
 variable "vpc_security_group_ids" {
    type = string
    default = "sg-0c78535db3865697a"
   
 }
  #variable "ec2_vpc_id" {
    #type = string
    
  #}
    variable "ec2_subnet_id" {
        type = string
        
    }