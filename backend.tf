terraform {
    backend "s3" {
        bucket = "talent-academy-monika-lab-tfstates"
        key = "talent-academy/backend/terraform.tf.states"
    }
}