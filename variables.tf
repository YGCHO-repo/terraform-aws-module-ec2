# variable "account_id" {
#   description = "List of AWS account IDs"
#   type        = list()
#   default     = [""]
# }

variable "region" {
  description = "AWS Region"
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = ""
}

variable "ami_id" {
  description = "EC2 instance AMI(default : Amazon Linux 2)"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "Key name to use for EC2 instance"
  type        = string
  default     = ""
}

variable "volume_size" {
  description = "The size of the volume in gigabytes"
  type        = number
}

variable "volume_type" {
  description = "The type of volume (gp2, gp3, io2, standard)"
  type        = string
  default     = ""
}

variable "sg_ingress_rule" {
  description = "Ingree Security Group rule"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "Bastion subnet"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "AWS VPC ID"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}