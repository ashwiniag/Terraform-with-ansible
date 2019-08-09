 resource "aws_internet_gateway" "vnetwork-gw" {
  vpc_id = "${aws_vpc.vnetwork.id}"
tags = {
    Name = "vnetwork-gw"
  }
}
