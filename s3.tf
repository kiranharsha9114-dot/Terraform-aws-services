###############
# S3 Bucket
###############
resource "aws_s3_bucket" "one" {
  bucket = "my-bucket-name"
}

###############################
# Ownership Controls (Required before ACL)
###############################
resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.one.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

###############
# Bucket ACL
###############
resource "aws_s3_bucket_acl" "acl" {
  depends_on = [aws_s3_bucket_ownership_controls.ownership]

  bucket = aws_s3_bucket.one.id
  acl    = "private"
}

###############
# Bucket Versioning
###############
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.one.id

  versioning_configuration {
    status = "Enabled"
  }
}
