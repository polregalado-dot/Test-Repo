module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type = "t3.micro"
  key_name      = "ec2_key_pair"
  monitoring    = true
  subnet_id     = "subnet-02120f9fda19e8dac"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
