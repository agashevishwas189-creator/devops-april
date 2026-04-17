variable "vpc_cidr" {
    type = string
  
}

variable "subnet_cidr" {
    type = string
  
}
variable "map_public_ip" {
    type = bool
  
}

variable "webserver_subnet" {
    type = string
}

variable "webserver_vpc" {
    type = string
}