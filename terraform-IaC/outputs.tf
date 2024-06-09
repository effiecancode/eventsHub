### outputs needed to create ecr repository
# export the image names
output "image_name1" {
  value = var.image_name1
}

### outputs needed to build docker image
# domain name
output "domain_name" {
  value = join("", [var.record_name, ".", var.domain_name])
}

# rds endpoint
output "rds_endpoint" {
  value = aws_db_instance.database_instance.endpoint
}

# export the image tag
output "image_tag" {
  value = var.image_tag
}

### outputs needed to create self-hosted aws ec2 runner
# private data subnet az1 id
output "private_data_subnet_az1_id" {
  value = aws_subnet.private_data_subnet_az1.id
}

### outputs needed to create a new revision for the ecs task definition
# task definition name
output "task_definition_name" {
  value = "${var.project_name}-${var.environment}-td"
}

### outputs needed to restart the ecs service
# ecs cluster name
output "ecs_cluster_name" {
  value = "${var.project_name}-${var.environment}-cluster"
}

# ecs service name
output "ecs_service_name" {
  value = "${var.project_name}-${var.environment}-service"
}

# website url
output "website_url" {
  value = join("", ["https://", var.record_name, ".", var.domain_name])
}
