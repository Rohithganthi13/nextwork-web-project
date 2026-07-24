# Java Web App Deployment with AWS Docker CI/CD

Welcome to this project showcasing a Java web application deployed through a fully automated AWS CI/CD pipeline using Docker and Amazon ECR.

<br>
Table of Contents
Introduction
Technologies
Setup
Architecture
Project Structure
Deployment Workflow
Contact
Conclusion
<br>
Introduction

This project demonstrates how a Java web application can be containerized with Docker and deployed automatically using AWS DevOps services.

Instead of manually building and deploying the application, every code change pushed to GitHub automatically triggers a CI/CD pipeline. The pipeline builds a Docker image, pushes it to Amazon Elastic Container Registry (ECR), and deploys the latest version to an Amazon EC2 instance using AWS CodeDeploy.

The deployment process is fully automated through deployment scripts executed by CodeDeploy lifecycle hooks, ensuring that the latest container replaces the previous version with minimal manual intervention.

This project helped me understand not only how to automate deployments but also the responsibility of each AWS service within a modern CI/CD pipeline.

<br>

## Technologies

This project uses the following technologies:

Java – Backend application.
Apache Maven – Compiles and packages the Java application.
Docker – Packages the application into a portable container image.
Amazon Elastic Container Registry (ECR) – Stores Docker images.
Amazon EC2 – Hosts and runs the Docker container.
AWS CodeBuild – Builds the Docker image and pushes it to Amazon ECR.
AWS CodeDeploy – Automates deployment of the latest Docker image to EC2.
AWS CodePipeline – Orchestrates the end-to-end CI/CD workflow.
AWS IAM – Provides secure permissions for AWS services.
Git & GitHub – Source code management and pipeline trigger.
Amazon Linux 2023 – Operating system for the deployment server.
Visual Studio Code – Development environment.
<br>

## Setup

Clone the repository:

git clone https://github.com/Rohithganthi13/nextwork-web-project.git

Navigate into the project:

cd nextwork-web-project

Build the Docker image locally:

docker build -t web-app .

Run the container:

docker run -d -p 8080:8080 web-app

The application can also be deployed automatically through the AWS CI/CD pipeline by pushing changes to GitHub.

<br>

## Architecture

The deployment workflow is illustrated below:

Developer
    │
    ▼
GitHub
    │
    ▼
AWS CodePipeline
    │
    ▼
AWS CodeBuild
    │
    ├── Build Docker Image
    ├── Tag Docker Image
    └── Push Image to Amazon ECR
    │
    ▼
AWS CodeDeploy
    │
    ▼
Amazon EC2
    │
    ├── Stop Existing Container
    ├── Authenticate with Amazon ECR
    ├── Pull Latest Docker Image
    └── Run New Container

This architecture separates continuous integration from continuous deployment while ensuring that every deployment uses a versioned Docker image stored in Amazon ECR.

<br>

## Project Structure
.
├── src/
├── Dockerfile
├── pom.xml
├── buildspec.yml
├── appspec.yml
├── scripts/
│   ├── stop_container.sh
│   └── start_container.sh
└── README.md
<br>

## Deployment Workflow

A developer pushes code to GitHub.
AWS CodePipeline detects the commit.
AWS CodeBuild builds a Docker image from the application source.
CodeBuild tags the image and pushes it to Amazon ECR.
CodeDeploy transfers the deployment bundle (appspec.yml and deployment scripts) to the EC2 instance.
The ApplicationStop hook stops and removes the currently running container.
The AfterInstall hook:
Authenticates Docker with Amazon ECR.
Pulls the latest Docker image.
Starts a new container from the updated image.
The latest version of the application is now available on the EC2 instance.

This deployment process eliminates manual deployment steps while ensuring consistent and repeatable releases.

<br>

## Contact

If you have any questions or feedback, feel free to reach out:

GitHub: https://github.com/Rohithganthi13
Email: rohithganthi@gmail.com
<br>

## Conclusion

This project represents my hands-on journey into AWS DevOps and modern container-based CI/CD.

Through this project, I learned how Docker, Amazon ECR, CodeBuild, CodeDeploy, and CodePipeline work together to automate application delivery. More importantly, I gained an understanding of the role each service plays in the deployment lifecycle—from building container images to orchestrating deployments on Amazon EC2.

Going forward, I plan to extend this architecture by deploying containers to Amazon ECS with AWS Fargate, exploring Infrastructure as Code with Terraform and CloudFormation, and implementing production-ready monitoring and logging practices.