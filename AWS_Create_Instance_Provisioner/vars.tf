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
    "us-east-1" = "ami-091138d0f0d41ff90"
    "us-west-2" = "ami-0d13e2317a7e75c95"
  }
}
variable "my-user" {
  description = "The username for SSH connection."
  type        = string
  default     = "ubuntu"
}