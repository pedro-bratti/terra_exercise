# ---------------------------------------------------------------------------------------------------------------------
# AWS Security Group - DB
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "sg_db" {
  name = var.name_db_sg
  vpc_id = aws_vpc.vpc.id
  
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_group_id = var.sg_bastion
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}