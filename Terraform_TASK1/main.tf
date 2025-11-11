provider "aws" {
    region = var.region1
}

provider "aws" {
    alias = "region2"
    region = var.region2
}

resource "aws_instance" "Instance_for_region1" {
    ami = var.ami_id_region1
    instance_type = var.instance_type
    
    tags = {
        name = "linux-instance-${var.region1}"
        environment = "prod"
    }
}

resource "aws_instance" "Instance_for_region2" {
    provider      = aws.region2
    ami = var.ami_id_region2
    instance_type = var.instance_type
    
    tags = {
        name = "linux-instance-${var.region2}"
        environment = "prod"
    }
}

