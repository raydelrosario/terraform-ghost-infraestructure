terraform {
  required_version = ">= 1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.1"
    }
    upcloud = {
      source  = "UpCloudLtd/upcloud"
      version = "~> 2.4.2"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      Environment = "Production"
      Project     = "Ghost"
    }
  }
}
provider "upcloud" {
}