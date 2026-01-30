resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-03f4878755434977f"   # Amazon Linux 2 (Mumbai)
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "EC2-Created-By-Jenkins"
  }
}
