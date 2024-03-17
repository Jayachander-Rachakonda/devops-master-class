variable "users" {
  default = {
    ravs : { country : "Netherlands", departmnet : "ABC" },
    jai : { country : "India", departmnet : "XYZ" },
    tom : { country : "US", departmnet : "DEF" },
    jane : { country : "Russia", departmnet : "GHI" }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_users" {
  for_each = var.users
  name     = each.key
  tags = {
    #country:each.value
    country : each.value.country
    departmnet : each.value.departmnet
  }
}
