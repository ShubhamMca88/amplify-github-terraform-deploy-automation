resource "aws_amplify_app" "myapp" {
  name       = var.amplify_app_name
  repository = var.github_repo

  # oauth_token  = var.github_token
  # access_token = var.github_token
  # ONE TIME MANUAL STEP GO TO AWS CONSOLE 


  build_spec = file("buildspec.yml")

  environment_variables = {
    EXAMPLE = "value"
  }
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.myapp.id
  branch_name = var.github_branch
} 