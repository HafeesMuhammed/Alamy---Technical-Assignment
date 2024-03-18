// IAM User
resource "aws_iam_user" "user" {
  count = length(var.create_user)
  name  = "${var.create_user[count.index]}_${var.environment}"
}

// IAM policy attachements
resource "aws_iam_user_policy_attachment" "iam_self_management" {

  user       = aws_iam_user.user[0].name
  policy_arn = aws_iam_policy.iam_self_management[0].arn
}

//IAM policies
resource "aws_iam_policy" "iam_self_management" {

  name_prefix = var.iam_self_management_policy_name_prefix
  policy      = data.aws_iam_policy_document.iam_self_management.json
}