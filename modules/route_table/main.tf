resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.vpc_cidr
    gateway_id = var.internet_gateway_id
  }
  tags = {
    Name      = var.name_pub_rtb_tag
    Terraform = var.tf_tag
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.vpc_cidr
    nat_gateway_id = var.nat_gateway_id
  }
  tags = {
    Name      = var.name_priv_rtb_tag
    Terraform = var.tf_tag
  }
}

resource "aws_route_table_association" "public" {
  depends_on     = [var.public_subnets]
  route_table_id = aws_route_table.public_route_table.id
  for_each       = var.public_subnets
  subnet_id      = each.value.id
}

resource "aws_route_table_association" "private" {
  depends_on     = [var.private_subnets]
  route_table_id = aws_route_table.private_route_table.id
  for_each       = var.private_subnets
  subnet_id      = each.value.id
}