# Run tfc-backup-b2 via schedule in existing AWS ECS Cluster

Creates the infrastructure on AWS to run a backup of the Terraform Cloud
data (to a Backblaze B2 bucket) on a scheduled basis.

## Required setup

* Obtain a Terraform Cloud access token.
* Obtain a Backblaze Application Key.
* Create a Backblaze B2 bucket.
