provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "jenkins-master" {
  ami                     = "ami-0d6ba217f554f6137"
  instance_type           = "t2.micro"
  key_name                = "phukitec2"
  vpc_security_group_ids  = ["sg-07d3320d9566712e6"]

  tags = {
    Name = "jenkins-master"
  }
}

resource "aws_instance" "jenkins-slave01" {
  ami                     = "ami-0d6ba217f554f6137"
  instance_type           = "t2.micro"
  key_name                = "phukitec2"
  vpc_security_group_ids  = ["sg-07d3320d9566712e6"]
  
  tags = {
    Name = "jenkins-slave01"
  }
}

resource "aws_instance" "jenkins-slave02" {
  ami                     = "ami-0d6ba217f554f6137"
  instance_type           = "t2.micro"
  key_name                = "phukitec2"
  vpc_security_group_ids  = ["sg-07d3320d9566712e6"]

  tags = {
    Name = "jenkins-slave02"
  }
}