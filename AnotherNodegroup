resource "aws_eks_node_group" "BudCluster" {
  cluster_name    = aws_eks_cluster.example.name
  node_group_name = "ANOTHER"
  node_role_arn   = "arn:aws:iam::173278684542:role/AmazonEKSNodeRole"  # Replace with your IAM role ARN
  subnet_ids      = ["subnet-0081d4e8f1f3a2c68", "subnet-0fcf489706f708d5f, subnet-09cdefedcb2756073, subnet-0d73f49f1059d0e99"]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  instance_types = ["t2.small"]

}
