variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "amplify_app_name" {
  description = "Name for the Amplify app"
  type        = string
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "github_repo" {
  description = "GitHub repository (owner/repo)"
  type        = string
}

variable "github_branch" {
  description = "Branch to connect"
  type        = string
  default     = "main"
} 