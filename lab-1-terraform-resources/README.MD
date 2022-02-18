# Creating and Managing Cloud Resources with Terraform

In this exercise, you will practice using the core components of terraform including providers, modules and resources to create and manage the lifecycle of cloud based resources.


## Exercise objectives

Create a multi-stage GitHub Action to deploy Azure-based resources that include integration and compliance testing of IaC objects as well as a manual approval stage prior to resource deployment

## Environment Setup

All steps in this lab exercise should be completed using the Azure Cloud Shell environment. All required tools including the Azure CLI, HashiCorp Terraform and the git CLI come pre-installed in this Cloud Shell Environment

- [ ] Login to the [Azure Portal](https://portal.azure.com/) with the login information you created

    - [ ] Launch Azure Cloud Shell from the top navigation panel
        
        ![Azure Cloud Shell](../assets/lab-1/shell-icon.png)

        Select your "Free Trial" Subscription to create a storage account for your Cloud Shell and click "Create Storage"

        You will have the option of using a PowerShell or a Bash (Linux) environment to run all subsequent sections of the lab. Select the environment you're most comfortable with.
   
- [ ] Create an SSH Key to securely access your GitHUB Repos:
    ![PowerShell SSH Key]()
    ![BASH SSH Key]()
    Do not enter a passphrase when prompted, simply hit return twice  
    
    Add your [SSH Public Key to your GitHub Repository](https://github.com/settings/keys) by selecting "New SSH Key" and entering the contents of the `id_rsa.pub` file found in the `.ssh` directory of your Cloud Shell environment
    
    You can retrieve the contents of the public key in both PowerShell and Bash with : 

        cat .ssh/id_rsa.pub

- [ ] Clone your GitHub repository to your Cloud Shell environment:

    ```git clone git@github.com:<USERNAME>/<REPONAME>```
     > **Hint:** You can get your GitHub repository URL from the CODE button drop down on the repository main page


## Creating GitHub Actions



- 
https://portal.azure.com/?quickstart=true#blade/Microsoft_Azure_Resources/QuickstartCenterBlade

In the Azure Portal - use  "Cloud Shell" so you dont have to install the Azure CLI, terraform or GiT  to your personal system



## PowerShell

## Bash 


```
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"
```



Terraform must store state about your managed infrastructure and configuration. This state is used by Terraform to map real world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.

1
2
3
4
5
6
7
8
# Create Resource Group
az group create -n tamopstfstates -l eastus2
 
# Create Storage Account
az storage account create -n tamopstf -g tamopstfstates -l eastus2 --sku Standard_LRS
 
# Create Storage Account Container
az storage container create -n tfstatedevops 
Azure Service Principal
Next we create a service principal that will be used by Terraform to authenticate to Azure (Note down password)

1
2
# Create Service Principal 
az ad sp create-for-rbac --name tamopstf2
Assign role assignment to this newly created service principal (RBAC) to the required subscription. Further details on RBAC roles is documented here

Saving Service Principal credentials within GitHub Repository as secrets
Within the GitHub repository to where you are going to be running the terraform from, select settings -> secrets

Add 4 secrets

AZURE_AD_CLIENT_ID – Will be the service principal ID from above
AZURE_AD_CLIENT_SECRET – The secret that was created as part of the Azure Service Principal
AZURE_AD_TENANT_ID – The Azure AD tenant ID to where the service principal was created
AZURE_SUBSCRIPTION_ID – Subscription ID of where you want to deploy the Terraform
