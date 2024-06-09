### outputs needed to create ecr repository
# export the image names
output "image_name1" {
  value = var.image_name1
}

output "image_name2" {
  value = var.image_name2
}

# export the image tag
output "image_tag" {
  value = var.image_tag
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
