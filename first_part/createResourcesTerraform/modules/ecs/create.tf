resource "aws_ecs_cluster" "poc" {
  name = "poc"
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_ecs_task_definition" "poc_service" {
  family = "service"
  container_definitions = jsonencode([
    {
      name      = "first"
      image     = "service-first"
      cpu       = 5
      memory    = 32
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])

  volume {
    name      = "service-storage"
    host_path = "/ecs/service-storage"
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [us-east-1a]"
  }
}
resource "aws_ecs_service" "poc" {
  name                = "poc"
  cluster             = aws_ecs_cluster.poc.id
  task_definition     = aws_ecs_task_definition.poc_service.arn
  // scheduling_strategy = "DAEMON"
  
  tags = var.tags
}