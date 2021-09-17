data "aws_caller_identity" "current" {}

resource "aws_cloudtrail" "mytagpoc" {
  name                          = "mytagpoc"
  s3_bucket_name                = aws_s3_bucket.mytagpoc.id
  s3_key_prefix                 = "prefix"
  include_global_service_events = false
  tags                          = var.tags
}

resource "aws_s3_bucket" "mytagpoc" {
  bucket        = "mytagpoc"
  force_destroy = true

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AWSCloudTrailAclCheck",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "*",
            "Resource": "arn:aws:s3:::mytagpoc"
        },
        {
            "Sid": "AWSCloudTrailWrite",
            "Effect": "Allow",
            "Principal": {
              "Service": "cloudtrail.amazonaws.com"
            },
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::mytagpoc/prefix/AWSLogs/${data.aws_caller_identity.current.account_id}/*",
            "Condition": {
                "StringEquals": {
                    "s3:x-amz-acl": "bucket-owner-full-control"
                }
            }
        }
    ]
}
POLICY
}


