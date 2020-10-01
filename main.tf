terraform {
  required_version = ">= 0.12"
}

locals {

naming = join("", [var.entity, var.environment, var.geo_region, "asm", var.app_name, var.function, var.sequence])

}


data "aws_kms_key" "kms_key"{
  depends_on = [var.kms_key_arn]
  key_id     = var.kms_key_arn
}

resource "aws_secretsmanager_secret" "asm" {
  depends_on = [data.aws_kms_key.kms_key]
  name = local.naming
  kms_key_id = var.kms_key_arn
  recovery_window_in_days = 30
  tags = {
    "Product"       = var.product
    "Cost Center"   = var.cost_center
    "Channel"       = var.channel
    "Description"   = var.description
    "Tracking Code" = var.tracking_code
    "CIA"           = var.cia
  }

}

data "aws_secretsmanager_secret" "asmsecret" {
  depends_on = [aws_secretsmanager_secret.asm]
  arn = aws_secretsmanager_secret.asm.arn
}

  resource "aws_secretsmanager_secret_version" "asm_version" {
    depends_on = [data.aws_secretsmanager_secret.asmsecret]
    secret_id = aws_secretsmanager_secret.asm.id
    secret_string = var.is_secret_string ? var.secret : null
    secret_binary = var.is_secret_string ? null : var.secret
  }




