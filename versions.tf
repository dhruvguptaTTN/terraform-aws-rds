terraform {
  required_version = ">= 1.10.5"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.29.0"
    }
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.37"
    }
  }
}
