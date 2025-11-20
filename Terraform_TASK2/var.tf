variable "region1" {
    default = "ap-south-1"
}

variable "region2" {
    default = "us-east-1"
}

variable "ami_id_region1" {
    description = "AMI ID for region1"
    type = string
}

variable "ami_id_region2" {
    description = "AMI ID for region2"
    type = string
}

variable "instance_type" {
    description = "Instance type for both region"
    type = string
    default = "t2.micro"
}


#ami-0fa3fe0fa7920f68e (us-east-1)
#ami-0d176f79571d18a8f (ap-south-1)