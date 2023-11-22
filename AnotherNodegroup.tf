resource "aws_eks_node_group" "BudCluster" {
  cluster_name    = aws_eks_cluster.BudCluster.name
  node_group_name = "ANOTHER"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  instance_types = ["t2.small"]

}
