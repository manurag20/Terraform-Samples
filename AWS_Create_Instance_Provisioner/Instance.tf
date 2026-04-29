resource "aws_instance" "my_ec2_instance" {
  ami                    = var.amiID[var.region]
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.my_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.my-security-group.id]
  availability_zone      = var.zone
  tags = {
    Name    = "my-instance"
    Project = "Terraform Exercise 2"
  }
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }
  connection {
    type        = "ssh"
    user        = var.my-user
    private_key = file("myKey")
    host        = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/web.sh",
      "/tmp/web.sh"
    ]
  }
}
resource "aws_ec2_instance_state" "my_ec2_state" {
  instance_id = aws_instance.my_ec2_instance.id
  state       = "running"
}