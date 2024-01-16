variable "default_tags" {
  type = map(string)
  default = {
    "env" = "dcerino"
  }
  description = "for subnets"
}
variable "public_subnet_count" {
  type = number
  description = "avoiding overlap"
  default = 2
}