provider "aws" {
  region = var.region
}

variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}
