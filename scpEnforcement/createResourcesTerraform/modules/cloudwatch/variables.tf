variable "tags" {
  description = "Tags to set on the cloudwatch."
  type        = map(string)
  default     = {}
}