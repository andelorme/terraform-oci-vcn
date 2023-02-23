# Outputs for VCN module
output "vcn_id" {
  description = "OCID of the VCN that is created"
  value = module.vcn.vcn_id
}
output "id-for-internet-gateway-route-table" {
  description = "OCID of the internet-route table. This route table has an internet gateway to be used for public subnets"
  value = module.vcn.ig_route_id
}
output "nat-gateway-id" {
  description = "OCID for NAT gateway"
  value = module.vcn.nat_gateway_id
}
output "id-for-nat-gateway-route-table" {
  description = "OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway."
  value = module.vcn.nat_route_id
}
# Outputs for security lists
output "private-security-list-OCID" {
  description = "OCID of the security list with network rules for private subnet"
  value = oci_core_security_list.private-security-list.id
}
output "public-security-list-OCID" {
  description = "OCID of the security list with network rules for public subnet"
  value = oci_core_security_list.public-security-list.id
}
# Outputs for private subnet
output "private-subnet-OCID" {
  description = "OCID of the private subnet"
  value = oci_core_subnet.vcn-private-subnet.id
}
output "public-subnet-OCID" {
  description = "OCID of the public subnet"
  value = oci_core_subnet.vcn-public-subnet.id
}