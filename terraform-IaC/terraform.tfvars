# environment variables
region       = "us-east-1"
project_name = "eventshub"
environment  = "dev"

# vpc variables
vpc_cidr                     = "10.0.0.0/16"
public_subnet_az1_cidr       = "10.0.0.0/24"
public_subnet_az2_cidr       = "10.0.1.0/24"
private_app_subnet_az1_cidr  = "10.0.2.0/24"
private_app_subnet_az2_cidr  = "10.0.3.0/24"
private_data_subnet_az1_cidr = "10.0.4.0/24"
private_data_subnet_az2_cidr = "10.0.5.0/24"

# rds variables
multi_az_deployment          = "false"
database_instance_identifier = "app-db"
database_instance_class      = "db.t3.micro"
publicly_accessible          = "false"
username                     = "postgres"
password                     = "postgres"
rds_db_name                  = "postgres"

# ecs variables
architecture = "X86_64"
ecr_registry = "767398086791.dkr.ecr.us-east-1.amazonaws.com"
image_name1   = "eventhub-api-app"
image_tag    = "latest"

# acm variables
domain_name       = "effiecancode.buzz"
alternative_names = "eventshub.effiecancode.buzz"

# route-53 variables
record_name = "eventshub"
