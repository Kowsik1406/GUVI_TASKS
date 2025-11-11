output "instance_id_region1" {
    description = "ID for region1 instance"
    value = aws_instance.Instance_for_region1.id
}

output "Instance_id_region2" {
    description = "ID for region1 instance"
    value = aws_instance.Instance_for_region2.id
}

output "Instance1_public_ip" {
    description = " public IP for region1 Instance"
    value = aws_instance.Instance_for_region1.public_ip
}

output "Instance2_public_ip" {
    description = "public IP for region1 Instance "
    value = aws_instance.Instance_for_region2.public_ip
}