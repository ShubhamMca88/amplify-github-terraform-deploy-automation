# AWS Amplify Terraform Automation

This Terraform module automates the creation and configuration of AWS Amplify applications. It provides a simple way to set up continuous deployment for your web applications directly from GitHub repositories.

## Features

- Automated AWS Amplify app creation
- GitHub repository integration
- Branch configuration
- Customizable build specifications
- Environment variable support

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or later)
- [AWS CLI](https://aws.amazon.com/cli/) configured with appropriate credentials
- GitHub personal access token with `repo` access
- An AWS account with appropriate permissions

## Required Variables

The following variables need to be configured in `terraform.tfvars`:

- `aws_region`: The AWS region where resources will be created
- `amplify_app_name`: Name for your Amplify application
- `github_token`: GitHub personal access token (sensitive)
- `github_repo`: GitHub repository in format `owner/repo`
- `github_branch`: Branch to connect (defaults to "main")

## Usage

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd aws-amplify-terraform
   ```

2. Create a `terraform.tfvars` file with your configuration:
   ```hcl
   aws_region      = "us-east-1"
   amplify_app_name = "my-amplify-app"
   github_token    = "your-github-token"
   github_repo     = "owner/repo"
   github_branch   = "main"
   ```

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Review the planned changes:
   ```bash
   terraform plan
   ```

5. Apply the configuration:
   ```bash
   terraform apply
   ```

6. After successful deployment, Terraform will output your Amplify app URL.

## Build Configuration

The project includes a `buildspec.yml` file that defines the build process for your Amplify app. You can customize this file according to your application's needs.

## Security Notes

- Never commit your `terraform.tfvars` file to version control
- Store sensitive values like GitHub tokens securely
- Use AWS IAM roles with least privilege principle
- Consider using AWS Secrets Manager for sensitive values

## Cleanup

To destroy all created resources:
```bash
terraform destroy
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details. 