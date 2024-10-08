# Hello World Lambda Function

This project deploys a simple "Hello World" AWS Lambda function using Terraform and GitHub Actions.

## Prerequisites

- AWS account
- GitHub account
- Terraform Cloud account

## Setup

1. Fork this repository
2. Set up a Terraform Cloud workspace:
   - Create an organization in Terraform Cloud if you haven't already
   - Create a new workspace for this project
   - Connect the workspace to this GitHub repository
3. Set up GitHub secrets:
   - AWS_ACCESS_KEY_ID: Your AWS Access Key ID
   - AWS_SECRET_ACCESS_KEY: Your AWS Secret Access Key
   - AWS_REGION: Your preferred AWS region (e.g., us-east-1)
4. Update the `main.tf` file:
   - Replace `playground4220` with your Terraform Cloud organization name
   - Replace `TF-Pipeline` with your Terraform Cloud workspace name

## Deployment

The Lambda function will be automatically deployed when changes are pushed to the main branch. The GitHub Actions workflow will run Terraform to create or update the Lambda function in AWS.

## Testing the Lambda Function

After deployment, you can test the Lambda function using the AWS Console or AWS CLI.

## Customization

To modify the Lambda function's behavior, edit the `lambda/index.js` file. To change the infrastructure configuration, modify the `main.tf` file.

## Security Note

By using HCP Terraform and GitHub Secrets, we're leveraging secure storage for sensitive information like AWS credentials. Never commit these values directly to your repository.
