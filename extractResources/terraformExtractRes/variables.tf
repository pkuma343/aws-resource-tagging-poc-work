variable "Region" {
    default = "us-east-1"
}
variable "sender" {
    type  = string
}
variable "cron"{
    type  = string
    default = "cron(44 11 * * ? *)"
}
variable "recipients" {
    // default = "shraddha.jain@nagarro.com, sanchali.gupta@nagarro.com"
    type        = string
    default     = "31shraddhajain@gmail.com"   
}
variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
variable "file" {
    default = "resources"
}
variable "FUNCTION_NAME" {
    default = "lambdaFuncGetResources"
}
variable "lambdaRole" {
    default = "lambda_get_resources_role"
}
variable "lambdaPolicy" {
    default = "lambda_get_resources_policy"
}
variable "event_rule" {
    default = "get_resources_rule"
}


