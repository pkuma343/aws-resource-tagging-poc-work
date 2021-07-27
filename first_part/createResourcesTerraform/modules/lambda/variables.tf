variable "lambdaFunc_name" {
  description = "lambdaFunc_name"
  type        = string
}
variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
