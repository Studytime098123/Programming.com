terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"  # You can change this region if needed
}

# S3 Bucket
resource "aws_s3_bucket" "my_encrypted_bucket" {
  bucket = "proggramming-com-s3-bucket-12345"  # Must be globally unique; adjust this name
}

# Server-side encryption configuration
resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.my_encrypted_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
