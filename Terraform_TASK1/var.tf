variable "region1" {
    description = "Primary region or region1"
    type = string
    default = "us-east-1"
}

variable "region2" {
    description = "Primary region or region1"
    type = string
    default = "ap-south-1"
}

#Using instance type for both region is same
variable "instance_type" {
    description = "Instance type of EC@ instance"
    type = string
}

variable "ami_id_region1" {
    description = "ami_id for region1"
    type = string
}

variable "ami_id_region2" {
    description = "ami_id for region2"
    type = string
}


#ami-0157af9aea2eef346 (us-east-1)
#ami-0305d3d91b9f22e84 (ap-south-1)
