provider "aws" {
    region = "us-east-1" 
}


module "ecs" {
  source  = "./modules/ecs"
  tags = var.tags
}

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

