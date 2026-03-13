# this is for map
/* variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
        payment = "t3.small"
    }
} */

# This should be converted into set 
variable "instances" {
     type  = list
     default = ["mongdb", "redis"]
}

variable "zone_id"{
    default = "Z104252710J5M6VMFFMH2"
}

variable  "domain_name"{
    default = "balaganibalaji.online"
}