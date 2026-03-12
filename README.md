This repo contains code relating to central platform and orchestrating code
for my ecommerce application.

### Requirements
- Docker and Docker Compose
- Terraform 1.0+
- minikube
- kubectl
- Git

### To run locally:
```bash
# Clone the repo
git clone https://github.com/yourusername/mpcs56550-platform
cd mpcs56550-platform

# Copy environment template
cp .env.example .env

# Start minikube
minikube start

# Start the full stack with Docker Compose
docker compose up --build
```

### Docker
```bash
# Start the full stack
docker compose up --build

# Stop the full stack
docker compose down

# Stop and remove volumes
docker compose down -v
```

### Terraform
```bash
cd terraform

# Initialize
terraform init

# Select or create a workspace
terraform workspace select dev
# or
terraform workspace new dev

# Plan
terraform plan -var-file="envs/dev.tfvars"

# Apply
terraform apply -var-file="envs/dev.tfvars"
```

Repeat these commands for the staging and prod environments.

### Minikube
Minikube's API server port changes on every restart. Please run the following
to configure Jenkins any time you restart minikube.
```bash
kubectl config view --raw --minify --flatten | sed 's/127.0.0.1:[0-9]*/host.docker.internal:$(kubectl cluster-info | grep -oP "(?<=https://127.0.0.1:)\d+")/g' > kubeconfig-jenkins.txt
```