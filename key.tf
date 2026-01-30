resource "aws_key_pair" "jenkins_key" {
  key_name   = var.key_name
  public_key = file("${path.module}/terraform-aws.pub")
}
