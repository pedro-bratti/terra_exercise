# ---------------------------------------------------------------------------------------------------------------------
# Security Group
# ----------------------------------------------------------------------------------------------------------------------
variable name_db_sg {
    type = string
    description = "Nombre del sg para db"
    default = "allow connections from sg"
}

variable vpc_id {
    type = string
    description = "Id de la VPC"
}

variable sg_bastion {
    type = string
    description = "Id del SG del bastion"
}