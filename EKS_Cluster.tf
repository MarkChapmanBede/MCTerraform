resource "aws_eks_cluster" "example" {
  name     = "my-eks-cluster"
  role_arn = "arn:aws:iam::173278684542:role/eksClusterRole"

  vpc_config {
    subnet_ids = ["subnet-0081d4e8f1f3a2c68", "subnet-0fcf489706f708d5f, subnet-09cdefedcb2756073, subnet-0d73f49f1059d0e99"]
    endpoint_private_access = true
    endpoint_public_access  = true
  }
}
