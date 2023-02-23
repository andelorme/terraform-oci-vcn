
module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.5.3"
  # insert the 1 required variable here
  compartment_id = var.compartment_id
  region         = var.region

  vcn_name      = var.vcn_name
  vcn_dns_label = var.vcn_dns_label
  vcn_cidrs     = ["10.0.0.0/16"]

  create_internet_gateway = true
  create_nat_gateway      = true
  create_service_gateway  = true
}
