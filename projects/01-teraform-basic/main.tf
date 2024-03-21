provider "aws"{
    region="us-east-1"
}

resource "aws_s3_bucket" "my_s3_bucket"{
    bucket="jai252-bucket1-1st-bucket"
}

resource "aws_s3_bucket_versioning" "my_s3_bucket_versioning"{
    bucket=aws_s3_bucket.my_s3_bucket.id
    versioning_configuration{
        status="Enabled"
    }
}


resource "aws_iam_user" "my_iam_user"{
    name="my_iam_user_abc_update"
}

