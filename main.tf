# Configure the Vultr Provider
provider "vultr" {
  api_key = "${var.token}"
}

resource "vultr_bare_metal_server" "my_server" {
  plan_id   = "${var.bare_metal_32g}"
  region_id = "${var.vultr_bm_region}"
  os_id     = "${var.os_type}"
  script_id = "563352"
}
