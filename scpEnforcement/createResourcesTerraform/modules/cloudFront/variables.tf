variable "tags" {
  description = "Tags to set on the cloudwatch."
  type        = map(string)
  default     = {}
}

variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}