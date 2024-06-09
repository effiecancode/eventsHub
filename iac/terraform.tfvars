# environment variables
region       = "us-east-1"
project_name = "eventHub"
environment  = "dev"

# vpc variables
vpc_cidr                     = "10.0.0.0/16"
public_subnet_az1_cidr       = "10.0.0.0/24"
private_app_subnet_az1_cidr  = "10.0.1.0/24"

# ecs variables
architecture = "X86_64"
ecr_registry = "767398086791.dkr.ecr.us-east-1.amazonaws.com/"
image_name1   = "hub-djangoapp"
image_name2   = "postgres"
image_tag    = "latest"
