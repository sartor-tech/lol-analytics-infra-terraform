resource "aws_s3_bucket" "elol_raw" {
  bucket = "elol-data-raw"
  acl    = "private"

  tags = {
    STACK = var.prod_stack_tag
    NAME = "S3_LAKE_RAW"
    PRODUCT = var.product_tag
    COST_CENTER = ""
  }

  lifecycle_rule {
    id      = "RDATA-1"
    enabled = true

    tags = {
      STACK = var.prod_stack_tag
      NAME = "S3_RAW_LIFECYCLE_RULE"
      PRODUCT = var.product_tag
      COST_CENTER = ""
    }

    transition {
      days          = 730
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 1278
      storage_class = "GLACIER"
    }

    expiration {
      days = 1825
    }
  }
}