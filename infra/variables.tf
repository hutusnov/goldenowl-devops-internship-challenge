variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "app_port" {
  type    = number
  default = 3000
}

variable "github_repo" {
  type = string
}
