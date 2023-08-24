output "b2_restic_repo_password" {
  description = "The (generated) password for your Restic repo on Backblaze"
  sensitive   = false
  value       = random_password.b2_repo_password.result
}
