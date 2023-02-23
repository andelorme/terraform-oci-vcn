# provider variables
variable "tenancy_ocid" {
  type        = string
  description = "Profile Tenancy OCID"
}
variable "user_ocid" {
  type        = string
  description = "Profile User OCID"
}
variable "private_key_path" {
  type        = string
  description = "Profile private key path (.pem)"
}
variable "fingerprint" {
  type        = string
  description = "Profile fingerprint"
}
variable "region" {
  type        = string
  description = "OCI region"
}
# vcn variables
variable "compartment_id" {
  type        = string
  description = "Compartment OCID"
}
variable "vcn_name" {
  type         = string
  description = "VCN name"
}
variable "vcn_dns_label" {
  type         = string
  description = "VCN DNS Label"
}
# subnet variables
variable "public_cidr_block" {
  type        = string
  description = "Public CIDR block"
}
variable "private_cidr_block" {
  type        = string
  description = "Private CIDR_block"
}