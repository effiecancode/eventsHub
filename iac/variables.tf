# environment variables
variable "region" {
  description = "region to create resources"
  type        = string
}

variable "project_name" {
  description = "project name"
  type        = string
}

variable "environment" {
  description = "environment"
  type        = string
}

# vpc variables
variable "vpc_cidr" {
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  description = "public subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "ecr_registry" {
  description = "ecr registry"
  type        = string
}

# ecs variables
variable "architecture" {
  description = "ecs cpu architecture"
  type        = string
}

variable "image_name1" {
  description = "the web docker image name"
  type        = string
}

variable "image_name2" {
  description = "the api docker image name"
  type        = string
}

variable "image_tag" {
  description = "the docker image tag"
  type        = string
}

