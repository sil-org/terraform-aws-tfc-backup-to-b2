variable "app_env" {
  description = "The abbreviated app environment (e.g. prod or stg)"
  type = string
}

variable "app_environment" {
  description = "The full app environment (e.g. production or staging)"
  type = string
}

variable "app_name" {
  default = "tfcbackup"
  type = string
}

variable "aws_region" {
  description = "AWS region to run in (e.g., us-east-1)"
  default     = ""
  type        = string
}

variable "backup_path" {
  type = string
  default = "/tmp/tfcbackup"
}

variable "b2_application_key" {
  description = "Backblaze Application Key (the secret)"
  type = string
  default     = null
}

variable "b2_application_key_id" {
  description = "Backblaze Application Key ID"
  type = string
  default     = null
}

variable "b2_fsbackup_args" {
  default = ""
}

variable "b2_fsbackup_enabled" {
  default = true
}

# e.g., "--keep-daily 7 --keep-weekly 5  --keep-monthly 3"
variable "b2_fsbackup_forget_args" {
  default = "--keep-daily 45"
}

variable "b2_fsbackup_host" {
  default = "restic_host"
}

variable "b2_fsbackup_mode" {
  default     = "backup"
  description = "valid values: init, backup"
}

variable "b2_fsbackup_schedule" {
  default = "21 05 * * ? *" # Every day at 05:21 UTC
}

variable "cpu" {
  default = 200
}

variable "customer" {
  description = "Customer name, used in AWS tags"
  type        = string
}

variable "docker_tag" {
  default = "latest"
}

variable "ecs_cluster_arn" {
  description = "The ARN of the ECS cluster where this should run (also known as the ECS Cluster ID)"
  type        = string
}

variable "memory" {
  default = 128
}

variable "repo_string" {
  default     = null
  description = "Restic repository name, e.g., `b2:bucketname:directory`"
}

variable "tfc_access_token" {
}

variable "tfc_organization_name" {
}
