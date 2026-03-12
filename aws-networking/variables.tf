variable "instance_type" {
  default = "t3.micro"
}

variable "ami" {
  description = "AMI ID for EC2 instances"
  default     = "ami-02dfbd4ff395f2a1b"
}

variable "key_name" {
  description = "SSH key pair name"
  default     = "key-pair.us"

}
