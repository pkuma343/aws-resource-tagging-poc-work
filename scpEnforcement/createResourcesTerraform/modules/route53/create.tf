

resource "aws_route53_zone" "example" {
  name = "example.test"
  // tags = var.tags
}

// resource "aws_route53_hosted_zone_dnssec" "example" {
//   depends_on = [
//     aws_route53_key_signing_key.example
//   ]
//   // hosted_zone_id = aws_route53_key_signing_key.example.hosted_zone_id
// }

// resource "aws_kms_key" "example" {
//   customer_master_key_spec = "ECC_NIST_P256"
//   deletion_window_in_days  = 7
//   key_usage                = "SIGN_VERIFY"
//   policy = jsonencode({
//     Statement = [
//       {
//         Action = [
//           "kms:DescribeKey",
//           "kms:GetPublicKey",
//           "kms:Sign",
//         ],
//         Effect = "Allow"
//         Principal = {
//           Service = "dnssec-route53.amazonaws.com"
//         }
//         Sid      = "Allow Route 53 DNSSEC Service",
//         Resource = "*"
//       },
//       {
//         Action = "kms:CreateGrant",
//         Effect = "Allow"
//         Principal = {
//           Service = "dnssec-route53.amazonaws.com"
//         }
//         Sid      = "Allow Route 53 DNSSEC Service to CreateGrant",
//         Resource = "*"
//         Condition = {
//           Bool = {
//             "kms:GrantIsForAWSResource" = "true"
//           }
//         }
//       },
//       {
//         Action = "kms:*"
//         Effect = "Allow"
//         Principal = {
//           AWS = "*"
//         }
//         Resource = "*"
//         Sid      = "IAM User Permissions"
//       },
//     ]
//     Version = "2012-10-17"
//   })
// }
// resource "aws_route53_key_signing_key" "example" {
//   hosted_zone_id             = aws_route53_zone.example.id
//   key_management_service_arn = aws_kms_key.example.arn
//   name                       = "example"
// }
