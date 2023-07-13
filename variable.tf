variable "instance_type" {
    default = "t2.medium"
}

variable "ami" {
    default = "ami-06464c878dbe46da4"
}

variable "key" {
    default = "testkey"
}

variable "region" {
    default = "eu-west-2"
}

variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
    default = "10.0.1.0/24"
}

variable "availability_zone" {
    default = "eu-west-2a"
}

variable "route_cidr_block" {
    default = "0.0.0.0/0"
}