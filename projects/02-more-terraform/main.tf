variable "iam_user_name_pro"{
    default="my_iam_user_abc"
}

provider "aws"{
    region="us-east-1"
}

resource "aws_iam_user" "my_iam_users"{
    count=3
    name="${var.iam_user_name_pro}_${count.index}"
}
