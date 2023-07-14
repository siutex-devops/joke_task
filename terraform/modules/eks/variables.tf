variable "cluster_name" {
  description = "EKS cluster name"
  default     = "my-cluster"
}

variable "vpc_id" {
  description = "VPC ID to launch the EKS cluster in"
}

variable "subnet_ids" {
  description = "Subnet IDs to launch the EKS cluster in"
  type        = list(string)
}

variable "key_name" {
  description = "Key pair name"
}
