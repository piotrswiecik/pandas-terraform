variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "aws_key_name" {
  type        = string
  description = "panda_nonroot_key"
}

variable "ssh_key_path" {
  description = "local path to ssh key"
}

variable "bucket_name" {}