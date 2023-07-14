variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "my-cluster"
}

variable "key_name" {
  description = "Key pair name"
  default     = "actions"
}

variable "public_key" {
  description = "Public SSH Key"
  type        = string
}