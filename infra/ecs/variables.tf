variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "List of CIDRs for subnets"
  type        = list(string)
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 3000
}

variable "image_url" {
  description = "Docker image URL for the container"
  type        = string
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "flask-ecs-cluster"
}

variable "task_family" {
  description = "Family name of ECS task definition"
  type        = string
  default     = "flask-app-task"
}

variable "service_name" {
  description = "ECS service name"
  type        = string
  default     = "flask-app-service"
}

variable "cpu" {
  description = "CPU units for task"
  type        = string
  default     = "256"
}

variable "memory" {
  description = "Memory for task"
  type        = string
  default     = "512"
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 1
}

variable "log_group_name" {
  description = "CloudWatch log group name"
  type        = string
  default     = "/ecs/flask-app-new"
}
