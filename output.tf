output "vpc_id" {
    description = "vpc id name"
    value = "vpc_id = aws_vpc.terraform7707-vpc.id"
}  

output "Jenkins-public-ip" {
    description = "this is jenkins master ip"
    value = try(aws_instance.demo_server["master"].public_ip,"")
}  

output "Slave-public-ip" {
    description = "this is jenkins slave ip"
    value = try(aws_instance.demo_server["slave"].public_ip,"")
}  

output "security_group" {
    value = "aws_security_group.terraform7707_sg.id"
}  

output "Ansible-public-ip" {
    description = "this is ansible-public ip"
    value = try(aws_instance.demo_server["ansible"].public_ip,"")
} 