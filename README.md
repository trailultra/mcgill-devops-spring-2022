# DevOps Concepts for Leaders - McGill



This set of exercises uses GitHub, GitHub Actions, and the Azure Portal.

- [ ] Create a GitHub account if you do not already have one by following the instructions found on the [GitHub Signup Page](https://github.com/signup)
    - [ ] Use this repository as the starting point for your labs by creating a Fork. 
        
        ![Fork Button](assets/lab-1/fork_button.jpeg)

    > **Note:** If your github is a member of an organization, ensure your Fork is created under your personal GitHub account

- [ ] Create a new Azure Portal Account by following the instructions found on the [Azure Signup Page](https://azure.microsoft.com/en-ca/free/)
    
    > **Note:** Use a personal email address, not one that is associated with an existing Azure account    



## Next Steps

## Lab Exercise 1: Configuring Cloud Deployments with Terraform

In this exercise, you will practice using the core components of terraform including providers, modules and resources to create and manage the lifecycle of cloud based resources.


### Exercise objectives

Create a multi-stage GitHub Action to deploy Azure-based resources that include integration and compliance testing of IaC objects as well as a manual approval stage prior to resource deployment

### Lab Instructions

[Lab Exercise 1: Configuring Cloud Deployments with Terraform](lab-1-terraform-resources/README.MD)

## Lab Exercise 2: Deploying Kubernetes Resources

In this exercise, you will practice building and deploying containerized applications to Azure Kubernetes Service.

### Exercise objectives

Create a multi-stage GitHub Action to deploy a an Azure Kubernetes Service cluster, and to build and deploy containerized application `Azure Voting` to the new AKS environment

### Lab Instructions

[Lab Exercise 2: Deploying Kubernetes Resources](lab-2-kubernetes-resources/README.MD)
