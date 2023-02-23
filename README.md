# terraform-oci-vcn

Oracle Cloud Infrastructure Virtual Cloud Network using <b>oracle-terraform-modules/vcn/oci</b> module containing:
* VCN
* Private Subnet
* Public Subnet
* Security Lists
* Internet Gateway
* NAT Gateway
* Service Gateway

### Inputs:
* Profile Tenancy OCID
* Profile User OCID
* Profile private key path (.pem)
* Profile fingerprint
* OCI region
* Compartment OCID
* VCN name
* VCN DNS Label
* Public CIDR block
* Private CIDR_block

### Outputs:
* OCID of the VCN that is created
* OCID of the internet-route table. This route table has an internet gateway to be used for public subnets
* OCID for NAT gateway
* OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway.
* OCID of the security list with network rules for private subnet
* OCID of the security list with network rules for public subnet
* OCID of the private subnet
* OCID of the public subnet