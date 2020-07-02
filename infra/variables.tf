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
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCu2Se2JBynky3C8RLihmqhy6Iw4xAMZbelnKOEXozclElfiKx5JlERMrS480b4274zW4DFZFYhmTBQinbjmeYhIHgAox1qPWNZ8T6HSLTD52PEermqsyF1XYOZKGdTs0ki/q/9EVH8FVFC+42O7jCTuLwPRpbv7o8kKd0R6I76vsh3QKnhCHYYxYXvlNE7zIlXk+eQPRc9k+1RoWHdKPXyaUypzoVbgN8ZwBzy2E+3aRtoDFLxJICjYEeZujRHKz1J2CNeCCihoPKSnSKuaritHVXJC2pAY/0j41m5Mzyay1uXLtb4i7Ttcoj6QRPsjnlHEg0Q2DTtriwsBy2h48ae1ToUA4zW3ch0aHdh/r7jDzXhWoaw2BiX9u7AokKFjmulf7oPYha9vj+POdJ7KYIGiyKu4byU43iyayjHdtrZ7qyJssoq4s3aijoV39yvXQkaT7AYXTOaEnMeswU2WBbeNBCbYv90WKnlS5EzofClsXeFJUykICq4PMyDjnNBwYs= pbratti@pbratti-dinocloud"
}