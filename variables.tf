##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  type        = string
  description = "(Optional) AWS Region to use. Default: us-east-1"
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module. Default: globo-dev"
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all RESOURCES"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

variable "cidr_block" {
  type        = string
  description = "(Required) The CIDR block for the VPC. Default:10.42.0.0/16"
}

variable "public_subnets" {
  type        = map(string)
  description = "(Optional) Map of public subnets to create with CIDR blocks. Key will be used as subnet name with prefix. Default: {subnet-1 ="
  default = {
    public-1 = "10.42.10.0/24"
    public-2 = "10.42.11.0/24"
  }
}

