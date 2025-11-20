output "instance_id_region1" {
    description = "ID for instance1 in region1"
    value = aws_instance.instance1.id
}

output "instance_id_region2" {
    description = "ID for instance2 in region2"
    value = aws_instance.instance2.id
}

output "instance1_public_ip" {
    description = "Public IP of instance1 in region1"
    value = aws_instance.instance1.public_ip
}

output "instance2_public_ip" {
    description = "Public IP for instance2 in region2"
    value = aws_instance.instance2.public_ip
}