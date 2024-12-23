variable "revision" {
    description = "Our version number"
    type        = number
    default = 1
}

variable "created_hostnames" {
    description = "Our version number"
    type        = list(string)
    default = []
}