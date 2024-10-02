# Hello World Node.js application

This is a simple Node.js application that serves a "Hello World" message. The application is containerized using Docker and deployed to AWS ECS/Fargate using Terraform and GitHub Actions.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Node.js](https://nodejs.org/) (includes npm)
- [Docker](https://www.docker.com/get-started)
- [Terraform](https://www.terraform.io/downloads)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Git](https://git-scm.com/)

## Project Structure

```
hello-world-nodejs/
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── Dockerfile
├── app.js
├── package.json
└── package-lock.json
```

## Setup Instructions

### Step 1: Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/your-github-username/hello-world-nodejs.git
cd hello-world-nodejs
```

### Step 2: Initialize the Node.js Project

Ensure you are in the project directory and initialize the Node.js project:

```bash
npm install
```

This command installs the dependencies listed in the `package.json` file and creates a `node_modules` directory.

### Step 3: Build and Run the Docker Container

To build and run the Docker container locally, use the following commands:

1. **Build the Docker Image:**

    ```bash
    docker build -t hello-world-nodejs .
    ```

2. **Run the Docker Container:**

    ```bash
    docker run -p 3000:3000 hello-world-nodejs
    ```

Your application should now be running on [http://localhost:3000](http://localhost:3000).

### Step 4: Terraform Setup for AWS ECS/Fargate

Navigate to the `terraform` directory:

```bash
cd terraform
```

Initialize Terraform:

```bash
terraform init
```

```bash
terraform apply -auto-approve
```

This will deploy your application to AWS ECS/Fargate.

### Step 5: Set Up GitHub Actions for Continuous Deployment

Ensure that you have the following GitHub Secrets configured in your GitHub repository:

- `DOCKER_USERNAME`: Your Docker Hub username
- `DOCKER_PASSWORD`: Your Docker Hub password
- `AWS_ACCESS_KEY_ID`: Your AWS access key ID
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret access key

These secrets are used by GitHub Actions to build and push your Docker image and deploy it to AWS ECS/Fargate.

### Running the Application

After following the setup steps, your application should be available at the public endpoint provided by AWS ECS. You can verify this by checking the AWS ECS console or using the AWS CLI.

## Conclusion

You now have a Node.js application that is containerized with Docker and deployed to AWS ECS/Fargate using Terraform and GitHub Actions. This setup ensures a robust CI/CD pipeline for your application.
