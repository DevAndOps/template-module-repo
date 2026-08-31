# REPLACE with the module's resources. Keep secure defaults non-optional.
locals {
  mandatory_tags = {
    ManagedBy = "terraform"
    Module    = "REPLACE-ME"
  }
  tags = merge(local.mandatory_tags, var.tags)
}

# resource "aws_xxx" "this" {
#   ...
#   tags = local.tags
# }
