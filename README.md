```markdown
# Terraform Proxmox Deployment

This README provides instructions for deploying virtual machines using Terraform on a Proxmox environment. Please follow these steps to set up and manage your VMs.

## Prerequisites

1. **VM Template**: Ensure that you have a VM template on your Proxmox server, which Terraform will use as the base image. Sometimes VMs may receive the same IP address. To prevent this, delete the content of `/etc/machine-id` on the VM template.

2. **Clone the Repository**: Clone this repository to your local machine and make the necessary configuration changes in the Terraform configuration files.

3. **Proxmox Configuration**:
   - Set the `pm_api_url` variable to the URL of your Proxmox server, e.g., `https://Proxmox-IP:8006/api2/json`.
   - Create a user on your Proxmox server and generate an API token for Terraform. Make sure to grant this user permission to access `/storage/*`.
   - Set the following variables in your Terraform configuration:
     - `pm_api_token_id` to your Proxmox user's ID, e.g., "terraform@pam!terraform_token_id".
     - `pm_api_token_secret` to your Proxmox user's API token secret.
     - `pm_tls_insecure` to `true` if you want to allow insecure TLS connections. Adjust this setting based on your security requirements.

4. **Node Configuration**:
   By default, this repository assumes two nodes: Master and Worker1. If you want to change the number or names of nodes, modify the variables in the `vars` file.

## Deployment

To deploy VMs on your Proxmox server, follow these steps:

1. Initialize the Terraform configuration:
   ```bash
   terraform init
   ```

2. Preview the changes Terraform will make:
   ```bash
   terraform plan
   ```

3. Apply the changes to create the VMs:
   ```bash
   terraform apply -auto-approve
   ```

## Deletion

To delete the VMs and associated resources, use the following command:

```bash
terraform destroy -auto-approve
```

This README provides you with the basic steps to get started with Terraform for Proxmox. Make sure to refer to the official Terraform documentation for more advanced usage and customization options.


```
