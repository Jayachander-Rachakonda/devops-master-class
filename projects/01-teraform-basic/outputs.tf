
output "my_s3_version_enable"{
    value=aws_s3_bucket.my_s3_bucket.versioning[0].enabled
}

output "my_s3_total_details"{
    value=aws_s3_bucket.my_s3_bucket
}

output "my_iam_total_details"{
    value=aws_iam_user.my_iam_user
}