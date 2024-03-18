output "user_iam_user_name" {
  description = "The user's name"
  value       = aws_iam_user.this.*.name
}

output "user_iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = aws_iam_user.this.*.arn
}