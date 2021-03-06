# ---------------------------------------------------------------------------------------------------------------------
# Bastion
# ---------------------------------------------------------------------------------------------------------------------
variable tags {
    type = map
    default = {
        "Owner" = "Pedro Bratti"
    }
}

variable ami {
    type = string
    description = "id of the ami in the instance"
    default = "ami-2757f631"
}

variable instance_type {
    type = string
    description = "instance type"
    default = "t2.micro"
}

# ---------------------------------------------------------------------------------------------------------------------
# Bastion - SG
# ---------------------------------------------------------------------------------------------------------------------
variable name_sg {
    type = string
    description = "Nombre del sg"
    default = "allow_ssh_anywhere"
}

variable name_description {
    type = string
    description = "Descripcion del sg"
    default = "Allow all inbound traffic to ssh"
}

variable vpc_id {
    type = string
    description = "Id de la VPC"
}

# ---------------------------------------------------------------------------------------------------------------------
# Bastion KP
# ---------------------------------------------------------------------------------------------------------------------
variable aws_key_pair {
    type = string
    description = "Key Pair"
}