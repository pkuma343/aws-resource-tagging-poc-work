// resource "aws_codedeploy_app" "poc" {
//   compute_platform = "Lambda"
//   name             = "poc"
//   // tags             =  var.tags
// }

// resource "aws_codedeploy_deployment_config" "poc" {
//   deployment_config_name = "poc-deployment-config"
//   compute_platform       = "Lambda"

//   // tags   =  var.tags
//   traffic_routing_config {
//     type = "TimeBasedLinear"

//     time_based_linear {
//       interval   = 10
//       percentage = 10
//     }
//   }
// }