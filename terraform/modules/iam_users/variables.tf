variable "create_user" {
  description = "Whether to create the IAM user"
  type        = bool
  default     = true
}

variable "attach_iam_self_management_policy" {
  description = "Whether to attach IAM policy which allows IAM users to manage their credentials and MFA"
  type        = bool
  default     = false
}

variable "iam_self_management_policy_name_prefix" {
  description = "Name prefix for IAM policy to create with IAM self-management permissions"
  type        = string
  default     = "IAMSelfManagement-"
}

variable "aws_account_id" {
  description = "AWS account id to use inside IAM policies. If empty, current AWS account ID will be used."
  type        = string
  default     = ""
}