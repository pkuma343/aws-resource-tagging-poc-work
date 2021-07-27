variable "table_name" {
  description = "The name to set for the dynamoDB table."
  default = "terratest-example"
}
variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}