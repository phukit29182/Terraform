output "instance_ip_jenkins-master" {
  value = aws_instance.jenkins-master.public_ip
}

output "instance_ip_jenkins-slave01" {
  value = aws_instance.jenkins-slave01.public_ip
}


output "instance_ip_jenkins-slave02" {
  value = aws_instance.jenkins-slave02.public_ip
}