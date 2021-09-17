resource "aws_elasticache_cluster" "poc" {
  cluster_id           = "cluster-poc"
  engine               = "memcached"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 2
  parameter_group_name = "default.memcached1.6"
  port                 = 11211
  tags                 = var.tags
}