output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster"
  value       = aws_eks_cluster.main.vpc_config.0.cluster_security_group_id
}

output "cluster_iam_role_name" {
  description = "IAM role name associated with EKS cluster"
  value       = aws_iam_role.cluster.name
}

output "cluster_certificate_authority_data" {
  description = "Nested attribute containing certificate authority data for your cluster"
  value       = aws_eks_cluster.main.certificate_authority.0.data
}
output "cluster_name" {
  description = "Cluster name"
  value       = aws_eks_cluster.main.name
}
