module "tgw"{           #Child module de Network. Vou exportar para lá meus VPC IDs
    source = "../connection"
    aws_region = var.aws_region
    infra_name = var.infra_name
    instance_id_a = aws_vpc.infra_vpc_a.id
    instance_id_b = aws_vpc.infra_vpc_b.id
    instance_id_c = aws_vpc.infra_vpc_c.id

    subnet_id_pb_a = [
      aws_subnet.vpc-public-subnet-a[0].id,
      aws_subnet.vpc-public-subnet-a[1].id,
      aws_subnet.vpc-public-subnet-a[2].id,
      aws_subnet.vpc-public-subnet-a[3].id
      ]

    subnet_id_pb_b = [
      aws_subnet.vpc-public-subnet-b[0].id,
      aws_subnet.vpc-public-subnet-b[1].id,
      aws_subnet.vpc-public-subnet-b[2].id,
      aws_subnet.vpc-public-subnet-b[3].id
      ] 
    
    subnet_id_pb_c = [
      aws_subnet.vpc-public-subnet-c[0].id,
      aws_subnet.vpc-public-subnet-c[1].id,
      aws_subnet.vpc-public-subnet-c[2].id,
      aws_subnet.vpc-public-subnet-c[3].id
      ] 
}
