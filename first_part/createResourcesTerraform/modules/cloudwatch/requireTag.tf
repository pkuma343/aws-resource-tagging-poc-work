resource "aws_cloudwatch_metric_alarm" "testcloudWatch" {
  alarm_name                = "terratest-CloudWatch"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "2"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "80"
  alarm_description         = "This metric monitors ec2 cpu utilization"
  insufficient_data_actions = []
  tags = var.tags
}

resource "aws_cloudwatch_log_group" "poc-logGroup" {
  name = "poc-logGroup"
  tags = var.tags
}
