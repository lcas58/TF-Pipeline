# Terraform GitHub Actions Starter Template with HCP Terraform

This repository contains a starter template for using Terraform with GitHub Actions and HCP Terraform to manage infrastructure as code.

## Prerequisites

- An AWS account
- GitHub account
- HCP Terraform account
- Terraform installed locally (for testing)

## Setup

1. Fork this repository
2. Set up an HCP Terraform workspace:
   - Create an organization in HCP Terraform if you haven't already
   - Create a new workspace for this project
   - Generate an API token for Terraform CLI authentication
3. Set up GitHub secrets:
   - TF_API_TOKEN: Your HCP Terraform API token
4. Update the `main.tf` file:
   - Replace `your-organization-name` with your HCP Terraform organization name
   - Replace `your-workspace-name` with your HCP Terraform workspace name
5. In HCP Terraform, add the following variables to your workspace:
   - aws_access_key_id (marked as sensitive)
   - aws_secret_access_key (marked as sensitive)
   - aws_region
   - bucket_name
6. Customize the Terraform configuration in `main.tf` as needed

## Usage

- Push changes to the `main` branch to trigger the Terraform workflow
- The workflow will run `terraform plan` on pull requests
- Merging to `main` will run `terraform apply`

## Customization

- Modify `main.tf` to add or change resources
- Update `variables.tf` to add new variables
- Add outputs to `outputs.tf` as needed
- Customize the GitHub Actions workflow in `.github/workflows/terraform.yml`

## Security Note

By using HCP Terraform, we're leveraging its secure variable storage for sensitive information like AWS credentials. Never commit these values directly to your repository.
