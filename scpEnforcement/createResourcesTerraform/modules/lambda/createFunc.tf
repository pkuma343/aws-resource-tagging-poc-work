resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
tags = var.tags
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "modules/lambda/poc.zip"
  function_name = var.lambdaFunc_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda_handler.lambda_handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  // source_code_hash = filebase64sha256("poc.zip")

  // runtime = "nodejs12.x"
 runtime = "python3.7"
  environment {
    variables = {
      foo = "bar"
    }
  }
  tags = var.tags
}