resource "aws_s3_bucket" "state_file_bucket" {
    bucket = "talent-academy-monika-lab-tfstates"

    tags = {
        Name = "talent-academy-monika-lab-tfstates"
        Environment = "Lab"
    }
    lifecycle {
        prevent_destroy = true
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
    bucket = aws_s3_bucket.state_file_bucket.id
    versioning_configuration {
        status = "Enabled"
    }
}