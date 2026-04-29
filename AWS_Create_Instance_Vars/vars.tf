variable "region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-east-1"
}
variable "zone" {
  description = "The AWS availability zone to create resources in."
  type        = string
  default     = "us-east-1a"
}
variable "amiID" {
  type = map(any)
  default = {
    "us-east-1" = "ami-098e39bafa7e7303d"
    "us-west-2" = "ami-0cc96c4cd98401dae"
  }
}