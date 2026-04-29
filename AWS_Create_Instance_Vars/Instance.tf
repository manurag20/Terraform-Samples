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
}
resource "aws_ec2_instance_state" "my_ec2_state" {
  instance_id = aws_instance.my_ec2_instance.id
  state       = "running"
}