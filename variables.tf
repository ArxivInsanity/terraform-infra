variable "org" {
  type        = string
  description = "The organization of the terraform cloud for terraform backend"
}

variable "workspace-name" {
  type        = string
  description = "The name of the terraform workspace"
}

variable "gcp-project" {
  type        = string
  description = "The name of the google cloud project"
}

variable "gcp-region" {
  type        = string
  description = "The region of the google cloud deployment"
}

variable "gcp-zone" {
  type        = string
  description = "The availability zone of the google cloud deployment"
}
