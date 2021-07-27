variable "tags" {
  description = "Tags to set on the cloudwatch."
  type        = map(string)
  default     = {}
}

// variable "code_pipeline_name" {
//   description = "Name of the code_pipeline_name. Must be unique."
//   type        = string
// }

// variable "bucket_arn" {
//   description = "Bucket_Arn"
//   type        = string
// }

variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}
