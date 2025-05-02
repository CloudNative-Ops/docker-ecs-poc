output "alb_dns_name" {
  description = "Public URL to access the Flask app"
  value       = aws_lb.app_alb.dns_name
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "security_group_id" {
  value = aws_security_group.ecs_sg.id
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.flask_task.arn
}

output "alb_target_group_arn" {
  value = aws_lb_target_group.ecs_tg.arn
}

output "alb_listener_arn" {
  value = aws_lb_listener.http.arn
}
