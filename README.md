Terraform AWS Project
This project demonstrates how to use Terraform to create AWS resources on the free tier.
It provisions:

2 VPCs
2 S3 buckets
1 EC2 instance (t2.micro)
All resources are configurable using variables.

📂 Project Structure

terraform-aws-project/
│── main.tf          # Main Terraform configuration
│── variables.tf     # Input variables
│── terraform.tfvars # Values for variables (not committed)
│── outputs.tf       # Terraform outputs
│── .gitignore       # Files/folders to ignore in Git
│── README.md        # Project documentation

⚡ Prerequisites
AWS Account (Free Tier recommended)
IAM user with programmatic access or EC2 instance with proper role
Terraform installed
Git installed
🏃 Steps to Run
Initialize Terraform
terraform init
Validate syntax
terraform validate
Preview the changes
terraform plan
Apply changes
terraform apply -auto-approve
View outputs
terraform output
Destroy resources when done
terraform destroy -auto-approve
🌟 Variables
All configurable variables are defined in variables.tf. You can override them in terraform.tfvars:

aws_region → AWS region (e.g., ap-south-1)
vpc1_cidr → CIDR block for VPC 1
vpc2_cidr → CIDR block for VPC 2
instance_type → EC2 instance type (default t2.micro)
ami_id → AMI ID for EC2 instance
📤 Git Workflow
Initialize git
git init
Add files and commit
git add .
git commit -m "Initial commit"
Connect remote
git remote add origin <your-repo-url>
git branch -M main
git push -u origin main
⚠️ Notes
.terraform/, *.tfstate, and terraform.tfvars are ignored in Git for security reasons.
S3 bucket names must be globally unique, so random numbers are appended automatically.
🔗 References
Terraform Documentation
AWS Provider

