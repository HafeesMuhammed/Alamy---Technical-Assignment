data "aws_iam_policy_document" "iam_self_management" {
  statement {
    effect = "Allow"
    
    actions = [
      "iam:ChangePassword",
      "iam:CreateAccessKey",
      "iam:CreateLoginProfile",
      "iam:CreateVirtualMFADevice",
      "iam:DeleteAccessKey",
      "iam:DeleteLoginProfile",
      "iam:DeleteVirtualMFADevice",
      "iam:EnableMFADevice",
      "iam:GenerateCredentialReport",
      "iam:GenerateServiceLastAccessedDetails",
      "iam:Get*",
      "iam:List*",
      "iam:ResyncMFADevice",
      "iam:UpdateAccessKey",
      "iam:UpdateLoginProfile",
      "iam:UpdateUser",
      "iam:UploadSigningCertificate",
      "iam:UploadSSHPublicKey",
    ]
        resources = [
      "arn:aws:iam::${local.aws_account_id}:user/*/$${aws:username}",
      "arn:aws:iam::${local.aws_account_id}:user/$${aws:username}",
      "arn:aws:iam::${local.aws_account_id}:mfa/$${aws:username}",
    ]
  }

  statement {
    sid = "AllowIAMReadOnly"

    actions = [
      "iam:Get*",
      "iam:List*",
    ]

    resources = ["*"]
    effect    = "Allow"
  }
}