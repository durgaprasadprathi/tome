# This is a sample tfvars file which has to be overridden from the values received from the UI
# Default CIDR Block of VPC
vpc_cidr = "10.1.0.0/16"
workspace_name = "Default_Appmodz_Workspace"
enable_dns_support = true
enable_dns_hostname = true


# Sample Subnet Values
subnet_cidr = "10.1.1.0/24"
subnet_az = "us-east-1a"
subnet_tag = {"Name": "Appmodz-Subnet"}

subnet_cidr2 = "10.1.2.0/24"
subnet_az2 = "us-east-1b"
subnet_tag2 = {"Name": "Appmodz-Subnet2"}
