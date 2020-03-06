Terraform & Cloudfront
======================


Example how to use terraform for managing your cloudfront distribution


Install
-------

  - Create S3 bucket for terraform states (for example TFSTATE-DIR)
  - Create IAM user with policy bellow
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:ListBucket",
            "Resource": "arn:aws:s3:::TFSTATE-DIR"
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject"
            ],
            "Resource": "arn:aws:s3:::TFSTATE-DIR/*"
        }
    ]
  }
  - Get AWS_SECRET_KEY_ID and AWS_SECRET_ACCESS_KEY
  - Set these env in your gitlab
  - Set cloudflare token as env in your gitlab
  - Run pipeline to test it



2019 Marek Sirovy
