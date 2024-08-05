# Explanation of Implementation

## Order of Execution

1. **Common Role**: 
   - Updates and upgrades apt packages to ensure the system is up-to-date.

2. **Client Role**: 
   - Installs Node.js and npm.
   - Clones the frontend repository.
   - Installs frontend dependencies and starts the frontend application.

3. **Backend Role**: 
   - Installs Node.js and npm.
   - Clones the backend repository.
   - Installs backend dependencies and starts the backend application.

## Ansible Modules Used

- `apt`: To manage apt packages.
- `git`: To clone the repositories.
- `command`: To run shell commands.

## Reasoning

The roles are defined in a sequence to ensure the dependencies are installed first, followed by cloning the repositories, installing the necessary dependencies, and finally starting the applications. This ensures a smooth setup process.

## Terraform-Ansible Integration

The Terraform script provisions the EC2 instance and installs Ansible on it. Once the instance is up, Ansible playbook is triggered to configure the server and deploy the application.
