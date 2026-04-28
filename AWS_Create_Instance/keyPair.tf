resource "aws_key_pair" "my_key_pair" {
  key_name   = "ec2_key_pair"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEEsn375+v9WwyzBvjDMIQtefatGSadyI/Zf8qqX3h0w mishr@LAPTOP-K2O0UPI9"
}