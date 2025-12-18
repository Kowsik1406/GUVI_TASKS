provider "aws" {
  region = var.region1
}

provider "aws" {
  alias  = "region2"
  region = var.region2
}

resource "aws_instance" "instance1" {
  ami                         = var.ami_id_region1
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name = "terraform_test1"

  tags = {
    Name        = "linux-instance-${var.region1}"
    Environment = "prod"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("C:/Users/kowsi/OneDrive/Documents/GUVI/Terraform/GUVI_TASKS/Terraform_TASK2/terraform_test1.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]
  }
}

resource "aws_instance" "instance2" {
  provider                    = aws.region2
  ami                         = var.ami_id_region2
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name = "terraform_test2"

  tags = {
    Name        = "linux-instance-${var.region2}"
    Environment = "prod"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("C:/Users/kowsi/OneDrive/Documents/GUVI/Terraform/GUVI_TASKS/Terraform_TASK2/terraform_test2.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]
  }

}
