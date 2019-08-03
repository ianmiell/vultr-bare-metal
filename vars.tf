variable "token" {}

variable "vultr_bm_region" {
  description = "Bare metal region"
  default     = 5
}

variable "os_type" {
  description = "Application"
  default     = "338"
}

variable "bare_metal_32g" {
  description = "bare metal server"
  default     = 100
}
