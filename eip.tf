resource "aws_eip" "this" {
  vpc  = true
  tags = merge(var.tags, tomap({ Name = format("%s-eip", var.instance_name) }))
}

resource "aws_eip_association" "this" {
  instance_id   = aws_instance.this.id
  allocation_id = aws_eip.this.id

  depends_on = [aws_instance.this]
}