# Outputs are this module's public API. Adding is safe; renaming is breaking.
# output "id" {
#   description = "REPLACE."
#   value       = aws_xxx.this.id
# }

output "tags" {
  description = "Tags this module applies to every taggable resource it creates."
  value       = local.tags
}
