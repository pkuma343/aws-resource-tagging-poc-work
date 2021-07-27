variable "ecr_repo_name" {
  description = "Name of the ECR Repository"
  default     = "terratest-poc"
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
