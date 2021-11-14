module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    name = "my-vpc"
    cidr = "10.0.0.0/16"

    azs = ["us-east-2a", "us-east-2b"]
    private_subnets = ["10.0.5.0/24", "10.0.6.0/24"]
    public_subnets = ["10.0.14.0/24", "10.0.16.0/24"]
}