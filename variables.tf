# Inputs for THIS module. One module = one logical thing.
variable "name" {
  description = "REPLACE: primary name/identifier input."
  type        = string
}

variable "tags" {
  description = "Additional tags merged over mandatory tags."
  type        = map(string)
  default     = {}
}
