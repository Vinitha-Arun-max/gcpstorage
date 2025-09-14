variable "project" {
  description = "The GCP project ID"
  type        = string
  default     = banded-oven-469716-n3
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-east1"
}
variable "bucket_name" {
  description = "The name to use for the GCP storage bucket."
  type        = string
  default     = ""
}
