output "ecs_cluster_id" {
  value = aws_ecs_cluster.hello_world.id
}

output "ecs_service_id" {
  value = aws_ecs_service.hello_world.id
}
