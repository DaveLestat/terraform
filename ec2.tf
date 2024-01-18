resource "aws_instance" "main" {
  ami                    = data.aws_ssm_parameter.instance_ami.value
  instance_type          = "t3.micro"
  key_name               = "dcerino" #use the pem file you created
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = ["sg-075549384a791fe8d"]
  tags = {
    Name = "${var.default_tags.env}-EC2"
  }


  user_data = base64encode(file("user.sh"))
}
