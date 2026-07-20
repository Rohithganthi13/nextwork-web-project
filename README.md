# Java Web App Deployment with AWS CI/CD

Welcome to this project showcasing a Java web application deployed through a fully automated AWS CI/CD pipeline.

<br>

## Table of Contents

* [Introduction](#introduction)
* [Technologies](#technologies)
* [Setup](#setup)
* [Architecture](#architecture)
* [Contact](#contact)
* [Conclusion](#conclusion)

<br>

## Introduction

This project demonstrates how a Java-based web application can be built, packaged, and deployed automatically using AWS DevOps services.

Rather than manually compiling code and deploying updates, the entire software delivery process is automated through a CI/CD pipeline. Every code change pushed to GitHub triggers an automated workflow that retrieves dependencies, builds the application, creates a Docker image, stores artifacts, and deploys the latest version to an Amazon EC2 instance.

This wasn't just about getting the pipeline to work—it was about understanding why each AWS service exists and how they collaborate to automate software delivery.

<br>

## Technologies

This project uses the following technologies:

* **Java** – Backend application.
* **Apache Maven** – Dependency management and application build tool.
* **Amazon Linux 2023** – Development and deployment operating system.
* **Docker** – Packages the application into a portable container image.
* **Amazon EC2** – Hosts the application and deployment environment.
* **Git & GitHub** – Source code management and version control.
* **AWS CodeArtifact** – Secure Maven repository for storing and retrieving project dependencies.
* **AWS CodeBuild** – Automatically builds the application, downloads dependencies, and creates deployment artifacts.
* **AWS CodeDeploy** – Deploys the latest application version to EC2 instances.
* **AWS CodePipeline** – Orchestrates the complete CI/CD workflow from source to production.
* **AWS IAM** – Manages permissions for AWS services involved in the pipeline.
* **Visual Studio Code** – Primary development environment connected to the EC2 instance.

<br>

## Setup

To run this project locally:

1. Clone the repository:

   ```bash
   git clone https://github.com/Rohithganthi13/nextwork-web-project.git
   ```

2. Navigate into the project:

   ```bash
   cd nextwork-web-project
   ```

3. Build the application:

   ```bash
   mvn clean package
   ```

4. Run the generated application using your preferred Java server or deploy it through the AWS CI/CD pipeline.

<br>

## Architecture

The deployment workflow follows these steps:

1. Developer pushes code to GitHub.
2. AWS CodePipeline detects the new commit.
3. AWS CodeBuild retrieves dependencies from CodeArtifact and builds the application using Maven.
4. Build artifacts are prepared for deployment.
5. AWS CodeDeploy deploys the latest application to the target Amazon EC2 instance.
6. The updated application becomes available without manual deployment steps.

This pipeline provides a repeatable, reliable, and automated software delivery process while reducing manual effort and deployment errors.

<br>

## Contact

If you have any questions or feedback, feel free to reach out:

* **GitHub:** https://github.com/Rohithganthi13
* **Email:** [rohithganthi@gmail.com](mailto:rohithganthi@gmail.com)

<br>

## Conclusion

This project represents my hands-on journey into AWS DevOps and CI/CD automation. Building this pipeline helped me understand how source control, dependency management, automated builds, artifact repositories, deployment services, and infrastructure work together to deliver software efficiently.

I plan to continue enhancing this project by integrating additional AWS services, improving deployment strategies, and expanding the pipeline with more production-ready DevOps practices.
