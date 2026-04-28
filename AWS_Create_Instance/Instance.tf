resource "aws_instance" "my_ec2_instance" {
  ami                    = data.aws_ami.amiID.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.my_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.my-security-group.id]
  availability_zone      = "us-east-1a"
  tags = {
    Name    = "my-instance"
    Project = "Terraform Exercise 2"
  }
}