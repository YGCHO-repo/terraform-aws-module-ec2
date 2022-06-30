resource "aws_security_group" "this" {
  name        = "${var.instance_name}-sg"
  description = "${var.instance_name} Security group"
  vpc_id      = var.vpc_id

  egress {
    description = "EC2 instance egress SG rule"
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    #   ipv6_cidr_blocks = [ "value" ]
    #   prefix_list_ids = [ "value" ]
    #   security_groups = [ "value" ]
    #   self = false
  }

  tags = merge(var.tags, tomap({ Name = format("%s-sg", var.instance_name) }))
}

resource "aws_security_group_rule" "this" {
  description       = "Remote connection with SSG for admin"
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 22
  to_port           = 22
  security_group_id = aws_security_group.this.id
  cidr_blocks       = var.sg_ingress_rule
}