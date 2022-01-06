resource "aws_instance" "ec2-virtual-machine" {
  ami                         = ami-12345
  instance_type               = t2.micro
  key_name                    = aws_key_pair.master-key.key_name
  associate_public_ip_address = [aws_security_group.jenkins-sg.id]
  subnet_id                   = aws_subnet.subnet.id
  provisioner "local-exec" {
    command = "aws ec2 wait instance-status-ok --region us-east-1 --instance-ids ${self.id}"
  }
}
