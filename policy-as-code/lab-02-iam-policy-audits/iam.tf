resource "aws_iam_policy" "bad_policy" {
  name        = "bad_policy"
  path        = "/"
  description = "A very bad idea."

  policy = jsonencode({
    Version = "2022-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      }
    ]
  })
}
