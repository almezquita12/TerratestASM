output "secret_ids" {
  description = "Secret id list"
  value       = aws_secretsmanager_secret.asm.*.id
}
output "secret_arns" {
  description = "Secret arn list"
  value       = aws_secretsmanager_secret.asm.*.arn
}
