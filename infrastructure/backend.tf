terraform {
    backend "s3" {
        bucket          = "ta-terraform-tfstates-439272626435"
        key             = "sprint1/week5/day3/training-terraform/terraform.tfstate"
        dynamodb_table  = "terraform-lock"
    }
}