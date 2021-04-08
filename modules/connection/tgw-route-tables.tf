resource "aws_ec2_transit_gateway_route_table" "tgw_rt" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  tags               = {
    Name             = "Route-Table-TGW-pb"
  }
  depends_on = [aws_ec2_transit_gateway.tgw]
}
################################################################

#TGW Route Table association com as VPCs - Público

resource "aws_ec2_transit_gateway_route_table_association" "tgw_route_table_vpc_a_assoc" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_a_pb.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt.id

  depends_on = [aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_a_pb]
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_route_table_vpc_b_assoc" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_b_pb.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt.id

  depends_on = [aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_b_pb]
}

resource "aws_ec2_transit_gateway_route_table_association" "tgw_route_table_vpc_c_assoc" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_c_pb.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt.id

  depends_on = [aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_c_pb]
}
################################################################

#TGW Route Table propagation com as VPCs - Público

resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_route_table_pb_to_vpc_a" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_a_pb.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt.id

  depends_on = [aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_a_pb]
}

resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_route_table_pb_to_vpc_b" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_b_pb.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt.id

  depends_on = [aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_b_pb]
}

resource "aws_ec2_transit_gateway_route_table_propagation" "tgw_route_table_pb_to_vpc_c" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_c_pb.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt.id

  depends_on = [aws_ec2_transit_gateway_vpc_attachment.tgw_attach_vpc_c_pb]
}
