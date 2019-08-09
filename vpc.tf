resource "aws_vpc" "vnetwork" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "vnetwork"
  }
}
resource "aws_eip" "ip-vnetwork" {
  instance = "${aws_instance.test-ec2-instance.id}"
  vpc      = true
}
