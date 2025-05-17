# AWS Amplify Terraform Automation

## Prerequisites

- Terraform installed
- AWS credentials configured
- GitHub personal access token with `repo` access

## Usage

1. Copy `terraform.tfvars.example` to `terraform.tfvars` and fill in your values.
2. Run:

   ```bash
   terraform init
   terraform apply
   ```

3. The output will show your Amplify app URL.

**Note:** Never commit your real `terraform.tfvars` with secrets to version control. 