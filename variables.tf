
variable "kms_key_arn"{
  description = "(Required) ARN of the KMS to encrypt all the volumes."
  type        = string
}

variable "recovery_window_in_days" {
  description = "(Required) Days recovery"
  type = string
}

variable "is_secret_string" {
  description = "(Required) If true the secret it will be string if not it will be binary"
  type = bool
}
variable "secret" {
  description = "(Required) Value secret"
  type = string

}


############################

variable "region" {
  description = "(Required) The AWS region this ALB should reside in"
  type        = string
}

# Custom tags
variable "product" {
  description = "(Required) The product tag will indicate the product to which the associated resource belongs to."
  type        = string
}

variable "cost_center" {
  description = "(Required) This tag will report the cost center of the resource."
  type        = string
}

variable "channel" {
  description = "(Optional) This tag will indicate the distribution channel to which the associated resource belongs to."
  type        = string
}

variable "description" {
  description = "(Required) This tag will allow the resource operator to provide additional context information"
  type        = string
}

variable "tracking_code" {
  description = "(Required) Its value will be provided by the staff member deploying the resource during deployment."
  type        = string
}

variable "cia" {
  description = "(Required) CIA(Confidentiality[A,B,C] Integrity[L,M,H] Availability[L,M,C])"
  type        = string
}

//NAMING VARIABLES

variable "entity" {
  description = "(Required) Santander entity code. Used for Naming. (3 characters) "
  type        = string
}

variable "environment" {
  description = "(Required) Santander environment code. Used for Naming. (2 characters) "
  type        = string
}

variable "geo_region" {
  description = "(Required) AWS region where is going to be the resource. Used for Naming. (3 characters) "
  type        = string
}

variable "app_name" {
  description = "(Required) App acronym of the resource. Used for Naming. (6 characters) "
  type        = string
}

variable "function" {
  description = "(Required) App function of the resource. Used for Naming. (4 characters) "
  type        = string
}

variable "sequence" {
  description = "(Required) Secuence number of the resource. Used for Naming. (2 characters) "
  type        = string
}
