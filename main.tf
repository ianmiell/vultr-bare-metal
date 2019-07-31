# Configure the Vultr Provider

variable "token" {}

provider "vultr" {
  api_key = "${var.token}"
}

variable "vultr_bm_region" {
  description = "Bare metal region"
  default = 2
}

variable "os_type" {
  description = "Application"
  default = "338"
}

variable "bare_metal_32g" {
  description = "bare metal server"
  default = 100
}

resource "vultr_bare_metal_server" "my_server" {
  plan_id = "${var.bare_metal_32g}"
  region_id = "${var.vultr_bm_region}"
  os_id = "${var.os_type}"
}
