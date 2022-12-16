resource "aws_security_group" "node_group_one" {
  name_prefix = "node_group_one"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
    ]
  }
    
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }
}

