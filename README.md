# gcpstorage

This repository provides Terraform configurations for creating and managing Google Cloud Storage buckets and related resources on GCP. It is designed to help automate GCP storage provisioning with easy customization through variables.

## Features

- **Google Cloud Storage Bucket Creation**  
  Create GCP storage buckets using configurable variables for bucket name and region.
- **Object Versioning**  
  Enable object versioning for improved data protection.
- **Remote State Backend**  
  Store Terraform state remotely in a GCP bucket for collaboration and security.
- **Parameterization**  
  All major options (bucket name, region, etc.) are managed via variables for flexibility.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- Access to a Google Cloud Platform project
- Service account credentials with sufficient permissions

### Setup Steps

1. **Clone the repository**
    ```sh
    git clone git@github.com:Vinitha-Arun-max/gcpstorage.git
    cd gcpstorage
    ```

2. **Configure variables**
    - Edit `variables.tf` to set bucket name, region, etc.
    - Optionally, add a `terraform.tfvars` file for overrides.

3. **Initialize Terraform**
    ```sh
    terraform init
    ```

4. **Plan and Apply**
    ```sh
    terraform plan
    terraform apply
    ```

## File Structure

- `variables.tf` – Variable definitions for bucket name, region, and more  
- `bucket.tf` – Resource block for creating the GCP storage bucket  
- `backend.tf` – Terraform backend configuration for remote state  
- `.gitignore` – Ignores Terraform state and backend config files  
- `README.md` – Project documentation  

## Example Variable Block

```hcl
variable "bucket_name" {
  description = "The name of the GCP storage bucket."
  type        = string
}

variable "region" {
  description = "The GCP region for the bucket."
  type        = string
  default     = "us-east1"
}
```

## License

This project is licensed under the MIT License.

## Author

Vinitha Arun
