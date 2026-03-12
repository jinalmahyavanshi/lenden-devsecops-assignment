resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Secure web security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "SSH access"
    cidr_blocks = ["10.0.0.0/16"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    description = "App access"
    cidr_blocks = ["10.0.0.0/16"]
  }
}