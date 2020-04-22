# AWS-LAB-S3-SECURE

### Purpose
- Used to grab python django project from secure s3 bucket (i.e private subnet, strict policy, vpc endpoint).

### Requirements
- AWS account
- AWS console access
- Python3.6

### Implementation
- Navigate in AWS console to cloudformation and create stack `cloudformation/vpc.yaml` entering required parameters
- Once above is complete, create stack `cloudformation/buckets.yaml` enter required parameters
- Place both `setup.bat` and `setup.sh` in s3 bucket

### AWS Cloud Resources
- S3
- S3 bucket policy
- VPC Endpoint
- VPC
- Subnet
- Route Table
- Route
- Security Group
"# aws_lab_s3_secure" 
