provider "aws" {
  region = var.aws_region
}

resource "aws_amplify_app" "this" {
  name       = var.amplify_app_name
  repository = "https://github.com/${var.github_repo}"
  oauth_token = var.github_token

  build_spec = <<-EOT
    version: 1.0
    frontend:
      phases:
        preBuild:
          commands:
            - npm ci
        build:
          commands:
            - npm run build
      artifacts:
        baseDirectory: build
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
    EOT

  environment_variables = {
    EXAMPLE = "value"
  }
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.this.id
  branch_name = var.github_branch
} 