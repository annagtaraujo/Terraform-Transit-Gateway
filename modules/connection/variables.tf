variable "aws_region" {}

variable "infra_name" {}

variable "instance_id_a"{
    description = "VPC A ID recebido do módulo network"
    type = string
}

variable "instance_id_b"{
    description = "VPC B ID recebido do módulo network"
    type = string
}

variable "instance_id_c"{
    description = "VPC C ID recebido do módulo network"
    type = string
}

variable "subnet_id_pb_a"{
    description = "Subnets ID de A recebidos do módulo network para fazer o TGW attachment"
    type = list(string)
}

variable "subnet_id_pb_b"{
    description = "Subnets ID de A recebidos do módulo network para fazer o TGW attachment"
    type = list(string)
}

variable "subnet_id_pb_c"{
    description = "Subnets ID de A recebidos do módulo network para fazer o TGW attachment"
    type = list(string)
}
