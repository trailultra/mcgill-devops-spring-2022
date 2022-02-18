# Creating and Managing Cloud Resources with Terraform

In this exercise, you will practice using the core components of terraform including providers, modules and resources to create and manage the lifecycle of cloud based resources.


## Exercise objectives

Create a multi-stage Azure DevOps Pipeline to deploy Azure-based resources that include integration and compliance testing of IaC objects as well as a manual approval stage prior to resource deployment

## Environment Setup

All steps in this lab exercise should be completed using the Azure Cloud Shell environment. All required tools including the Azure CLI, HashiCorp Terraform and the git CLI come pre-installed in this Cloud Shell Environment

- [ ] Install the [Terraform build/release tasks extension](https://marketplace.visualstudio.com/items?itemName=charleszipp.azure-pipelines-tasks-terraform) into your Azure DevOps organization.

- [ ] Create a [Service Connection]() to enable Azure DevOps Pipelines to create resources in your Azure subscription

- [ ] Login to the [Azure Portal](https://portal.azure.com/) with the login information you created

    - [ ] Launch Azure Cloud Shell from the top navigation panel
        
        ![Azure Cloud Shell](../docs/images/lab-1/shell-icon.png)

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


## Creating a new Azure DevOps Pipeline


Open your Azure DevOps project and go into the Azure Pipelines section. Click on the `Create Pipeline` button. On the `Where is your code?` select GitHub (YAML):

![Where is your code?](assets/new-pipeline-where-github-yaml.png)

> Note: At this step, you might have to authorize Azure DevOps to access your organization, if you've not done that already. If you are not familiar with building GitHub repositories using Azure Pipelines you can have a look to [this documenation page](https://docs.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops&tabs=yaml).

In the repositories list, select the fork of this repository that you have created previously in your GitHub organization. In the `Configure your pipeline` step, choose to start from an existing YAML pipeline:

![Existing YAML pipeline](assets/new-pipeline-existing-yaml.png)

In the popup that opens, fill with the branch `main` and the path to the YAML pipeline `examples/basic-testing/src/azure-pipeline.yaml`:

![Select existing YAML pipeline](assets/select-existing-yaml-pipeline.png)

Click on the `Continue` button. This will load the Azure YAML pipeline from GitHub. On the next page, you can click the `Run` button to create and manually trigger the pipeline for the first time:

![Run Azure Pipeline](assets/run-pipeline.png)

- 
https://portal.azure.com/?quickstart=true#blade/Microsoft_Azure_Resources/QuickstartCenterBlade

In the Azure Portal - use  "Cloud Shell" so you dont have to install the Azure CLI, terraform or GiT  to your personal system



## PowerShell

## Bash 


```
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${SUBSCRIPTION_ID}"
```