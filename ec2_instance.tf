resource "aws_instance" "demo_server" { 
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key
    vpc_security_group_ids = [aws_security_group.terraform7707_sg.id]
    subnet_id = aws_subnet.terraform7707-subnet.id
    for_each = toset(["master", "slave", "ansible"])
    tags = {
        Name = each.key
    }
  
} 