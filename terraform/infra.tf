
provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}


resource "aws_security_group" "workshop_serverspec" {
  name = "workshop_serverspec"
    description = "Allow All Trafic"

  ingress {
      from_port = 0
      to_port = 65535
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

}


resource "aws_key_pair" "workshop" {
    key_name = "deployer-key"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2rRZdBkHkygV4ev30sU1dmoC4Yga3qs4r4ABccJ60jVSy49JuKVR5XrEOXgJU2MG6Bj52RAlM+u1DG6+5jDbx72LBCeZF5o16tI7kPjWciKx+CDAKJpNlDEOLDpi1YYCRwvZz3JyLavD5XfDh0azje0Q2neXFkhQ1+kO/Y5usOwbDPjmgPmSN6LU4t5j+RfCWI8Ak4A2ccUvyHIB8NbvKuc48SnAQjpdNhVYD+ZzSMQ9HFGK/QoLWQbl4v7+BXPMlMe/DxpslfDxxfQN1GVgpsCuv7Cdxix723f4vKcCwPqlV3zEpN4xC2ODQcjDY1aV43ZLkG6/19uqXPhUi2JSr spencer.herzberg@gmail.com"
}


resource "aws_instance" "infra" {
    count = 1
    ami = "ami-408c7f28"
    tags {
        Name = "workshop"
    }
    instance_type = "t1.micro"
    key_name = "${aws_key_pair.workshop.key_name}"
    security_groups = ["${aws_security_group.workshop_serverspec.name}"]
}
