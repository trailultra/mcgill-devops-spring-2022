terraform {
  backend "azurerm" {
    resource_group_name  = "rg-devops-tf-ddc66959-9ae1-7c57-f34a-7f643c7b8042"
    storage_account_name = "githubactionstfstate"
    container_name       = "tfstatedevops"
    key                  = "aks"
  }
}

