resource "aws_s3_bucket" "techxcellency" {
  bucket = var.my_bucket_name

  tags = {
    Name        = "techxcellency log"
    Environment = var.environment
  }
}