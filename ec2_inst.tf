//servers.tf
resource "aws_instance" "test-ec2-instance"{
  ami = "ami-0960de83329d12f2f"
  instance_type = "t2.micro"
  key_name =  " aws_key_pair.deployer.key_name "
  vpc_security_group_ids =[ aws_security_group.ingress-all-test.id]

  tags ={
    Name = "sara_vpc"
  }
}
