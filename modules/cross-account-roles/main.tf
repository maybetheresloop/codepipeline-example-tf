data aws_iam_policy_document "assume_role" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      identifiers = [
        "cloudformation.amazonaws.com"
      ]
      type = "Service"
    }
  }
}

resource aws_iam_role "cloudformation_deployer_role" {
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  name = "cloudformation_deployer_role"
}