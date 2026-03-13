variable "instances" {
type  = list
default = ["mongdb", "redis", "mysql", "rabbitmq", "catalouge", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id"{
    default = "Z104252710J5M6VMFFMH2"
}

variable  "domain_name"{
    default = "balaganibalaji.online"
}