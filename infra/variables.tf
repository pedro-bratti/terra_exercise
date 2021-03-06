# ---------------------------------------------------------------------------------------------------------------------
# Provider - Variables
# ---------------------------------------------------------------------------------------------------------------------
variable provider_profile {
    type = string
    description = "Perfil AWS"
    default = "default"
}

# ---------------------------------------------------------------------------------------------------------------------
# Modules - Variables
# ---------------------------------------------------------------------------------------------------------------------
variable name_preffix {
    type = string
    default = "pedro_bratti_test"
}

variable az {
    type = list
    description = "Availability Zones"
    default = ["us-east-1a", "us-east-1b"]
}

# ---------------------------------------------------------------------------------------------------------------------
# Key Pair - Variables
# ---------------------------------------------------------------------------------------------------------------------
variable key_name {
    type = string
    default = "test-pedro-keypair"
}

variable public_key {
    type = string
    default =
}