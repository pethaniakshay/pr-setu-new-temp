# Private Route Table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
resource "aws_route_table" "private_route_table" {
  vpc_id     = aws_vpc.vpc.id
  depends_on = [aws_vpc.vpc, aws_internet_gateway.ig]
  tags = {
    Environment = var.env
    App         = var.product
    Name        = "${var.product}-${var.env}-private-rt"
  }
}
