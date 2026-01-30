resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-019715e0d74f695be"   #ubuntu 
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "EC2-Created-By-Jenkins"
  }
}
