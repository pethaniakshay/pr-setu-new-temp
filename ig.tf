# Internet Gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.vpc.id

  depends_on = [aws_vpc.vpc]
  tags = {
    Environment = var.env
    App         = var.product
    Name        = "${var.product}-${var.env}-ig"
  }
}
