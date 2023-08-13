provider "aws" {
    region = "us-east-2"
}

data "aws_ami" "ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "architecture"
        values = ["x86_64"]
    }
}

resource "aws_instance" "instance" {
    ami = data.aws_ami.ami.id
    instance_type = "t2.micro"
    tags = {
        Name = var.instance_name
    }
}