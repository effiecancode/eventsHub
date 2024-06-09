# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "eventhub-terraform-remote-state"
    key            = "eventHub-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "eventhub-state-lock"
  }
}
