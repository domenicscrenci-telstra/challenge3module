variable "address_space" {
  description = "The address space that is used by the virtual network. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
  type        = string
  validation {
    condition     = can(cidrnetmask(var.source_address))
    error_message = "Must be a valid IPv4 CIDR block address."
  }
}

variable "prefix" {
  description = "Prefix to be used for your resources. Suggest you use your name, or be creative, up to you, it's your AWS"
  default     = "domenic-screnci"
  type        = string
}

variable "region" {
  description = "The region where the resources are created."
  default     = "ap-southeast-1"
  type        = string
  validation {
    condition     = contains(["ap-southeast1", "ap-southeast2"], var.region)
    error_message = "You're in Sydney, no one else is ever gonna see this stuff except Burkey..."
  }
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
  type        = string
  validation {
    condition     = can(cidrnetmask(var.source_address))
    error_message = "Must be a valid IPv4 CIDR block address."
  }
}

variable "instance_type" {
  description = "Specifies the EC2 instance type."
  default     = "t2.micro"
  type        = string
  validation {
    condition     = contains(["t2.nano", "t2.micro", "t2.small"], var.instance_type)
    error_message = "Choose your EC2 type more wisely..."
  } 
}