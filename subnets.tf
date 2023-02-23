resource "oci_core_subnet" "vcn-private-subnet" {
  compartment_id = var.compartment_id
  vcn_id = module.vcn.vcn_id
  cidr_block = var.private_cidr_block
  route_table_id = module.vcn.nat_route_id
  security_list_ids = [oci_core_security_list.private-security-list.id]
  display_name = "private-subnet"
}

resource "oci_core_subnet" "vcn-public-subnet"{
  compartment_id = var.compartment_id
  vcn_id = module.vcn.vcn_id
  cidr_block = var.public_cidr_block
  route_table_id = module.vcn.ig_route_id
  security_list_ids = [oci_core_security_list.public-security-list.id]
  display_name = "public-subnet"
}