terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.35.1"
    }
  }
}
terraform {
  backend "s3" {
    bucket         = "balagani-dev" # Replace with your bucket name
    key            = "locals-demo.tfstate"      # The path within the bucket
    region         = "us-east-1"                            # The AWS region
    encrypt        = true                                   # Enable server-side encryption
   use_lockfile     = true                       
  }
}


provider "aws" {
 # Configuration options
 region = "us-east-1"
}