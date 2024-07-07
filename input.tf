variable "project" {
  type = string
}

variable "name" {
  type = string
}

variable "auto_create_subnetworks" {
  type    = string
  default = false
}

variable "routing_mode" {
  type    = string
  default = "REGIONAL"
}

variable "mtu" {
  type    = number
  default = 1460
}

variable "description" {
  type    = string
  default = null
}

variable "subnets" {
  type = map(object({
    ip_cidr_range = string
  }))
}
