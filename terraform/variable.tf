variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "us-east-1"
}

variable "subnets" {
  description = "A list of subnets to deploy the ECS service in"
  type        = list(string)
}

variable "security_group" {
  description = "The security group to associate with the ECS service"
  type        = string
}
