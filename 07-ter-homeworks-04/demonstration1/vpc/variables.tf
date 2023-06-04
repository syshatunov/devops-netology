variable "vpc_name_network" {
  type        = string
  description = "Infrastructure Network Name"
}

variable "vpc_name_subnet" {
  type        = string
  description = "Infrastructure Subnet Name"
}

variable "vpc_subnet_cidr" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "Subnet CIDR"
}

variable "vpc_zone" {
  type        = string
  default     = "ru_central1-a"
  description = "Infrastructure Zones"
}