###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}



### ADDED

locals {
  vms_ssh_root_key = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
}

variable "resources_for_each_vm" {
  description = "For Each VM resources"
  type = list(object(
    {
      vm_name       = string
      cpu           = number
      ram           = number
      disk          = number
      core_fraction = number
    }
  ))

  default = [
    {
      vm_name       = "one"
      cpu           = 2
      ram           = 1
      disk          = 5
      core_fraction = 5
    },
    {
      vm_name       = "two"
      cpu           = 4
      ram           = 2
      disk          = 10
      core_fraction = 20
    }
  ]
}
