resource "aws_key_pair" "deployer" {

  key_name   = var.server_tag_Name
  public_key = var.key_pair
}

resource "aws_security_group" "basic_security" {


  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {

  ami                    = var.ami_info
  instance_type          = var.instance_size
  vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]
  key_name               = aws_key_pair.deployer.key_name
  tags = {
    Name = var.server_tag_Name
  }
}


