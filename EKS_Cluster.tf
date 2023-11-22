resource "aws_eks_cluster" "BudCluster" {
  name     = "my-eks-cluster"
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids 
    endpoint_private_access = true
    endpoint_public_access  = false
  }
}
