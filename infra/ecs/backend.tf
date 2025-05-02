terraform {
  backend "s3" {
    bucket         = "my-tf-state-bucket-123456"
    key            = "ecs-fargate/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-tf-locks"
    encrypt        = true
  }
}
