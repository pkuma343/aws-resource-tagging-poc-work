provider "aws" {
    region = "us-east-1" 
}


#success
// module "elasticache" {
//   source  = "./modules/elasticache"
//   tags = var.tags
// }

// resource "aws_api_gateway_rest_api" "example" {
//   body = jsonencode({
//     openapi = "3.0.1"
//     info = {
//       title   = "example"
//       version = "1.0"
//     }
//     paths = {
//       "/path1" = {
//         get = {
//           x-amazon-apigateway-integration = {
//             httpMethod           = "GET"
//             payloadFormatVersion = "1.0"
//             type                 = "HTTP_PROXY"
//             uri                  = "https://ip-ranges.amazonaws.com/ip-ranges.json"
//           }
//         }
//       }
//     }
//   })
//   name = "example"
//   endpoint_configuration {
//     types = ["REGIONAL"]
//   }
// }

// resource "aws_api_gateway_deployment" "example" {
//   rest_api_id = aws_api_gateway_rest_api.example.id
//   triggers = {
//     redeployment = sha1(jsonencode(aws_api_gateway_rest_api.example.body))
//   }
//   lifecycle {
//     create_before_destroy = true
//   }
// }

// resource "aws_api_gateway_stage" "example" {
//   deployment_id = aws_api_gateway_deployment.example.id
//   rest_api_id   = aws_api_gateway_rest_api.example.id
//   stage_name    = "example"
// }


// resource "aws_licensemanager_license_configuration" "example" {
//   name                     = "Example"
//   description              = "Example"
//   // license_count            = 10
//   // license_count_hard_limit = true
//   license_counting_type    = "Socket"
//   // license_rules = [
//   //   "#minimumSockets=2",
//   // ]
//   tags = var.tags
// }












#success ECS:CreateService 
// module "ecs" {
//   source  = "./modules/ecs"
//   tags = var.tags
// }

#success
// module "ssm" {
//   source  = "./modules/ssm"
//   tags = var.tags
// }


#success
// module "codeDeploy" {
//   source  = "./modules/codeDeploy"
//   tags = var.tags
// }


## Success
// module "waf" {
//   source  = "./modules/waf"
//   tags = var.tags
// }


## Success
// module "cloudFront" {
//   source  = "./modules/cloudFront"
//   tags = var.tags
//   bucket_name = var.bucket_name
// }


## success aws_ami 
## but tags are not supported for launch_configuration 
// module "image" {
//   source  = "./modules/image"
//   tags = var.tags
// }

## Success
// module "cloudwatch" {
//   source  = "./modules/cloudwatch"
//   tags = var.tags
// }

## Success 
// module "ecr" {
//   source  = "./modules/ecr"
//   ecr_repo_name = var.ecr_repo_name
//   tags = var.tags
// }

## Success 
// module "rds" {
//   source  = "./modules/rds"
//   tags = var.tags
// }

#############################################################################################################

## lambda: CreateFunction Action removed from SCP "Error: Access Denied"
// module "lambda" {
//   source  = "./modules/lambda"
//   lambdaFunc_name = var.lambdaFunc_name
//   tags = var.tags
// }


## S3: CreateBucket Action removed from SCP "Error: Access Denied"

// module "s3" {
//   source  = "./modules/s3"
//   bucket_name = var.bucket_name
//   tags = var.tags
// }

## DynamoDB: CreateTable Action removed from SCP "Error: Access DeniedException"

// module "DynamoDB" {
//   source  = "./modules/DynamoDB"
//   tags = {
//     Terraform   = "true"
//     Environment = "dev"
//   }
// }

## "codepipeline:CreatePipeline" Action removed from SCP....Error creating CodePipeline: AccessDeniedException:
// module "codePipeline" {
//   source  = "./modules/codePipeline"
//   tags = var.tags
//   // bucket_arn = module.s3.arn
//  bucket_name = var.bucket_name
// }


# Error: AccessDenied: Access to the resource https://sqs.us-east-1.amazonaws.com/ is denied
// module "sqs" {
//   source  = "./modules/sqs"
//   tags = var.tags
// }

# Working with tags or without tags
// module "route53" {
//   source  = "./modules/route53"
//   tags = var.tags
// }

## Error AccessDeniedException
// module "cloudTrail" {
//   source  = "./modules/cloudTrail"
//   tags = var.tags
//   bucket_name = var.bucket_name
// }