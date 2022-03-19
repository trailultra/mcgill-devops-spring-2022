terraform {
  backend "azurerm" {
    resource_group_name  = "github-actions-tfstate"
    storage_account_name = "githubactionstfstaterp"
    container_name       = "tfstatedevops"
    key                  = "lab-2-aks-cluster.tfstate"
  }
}

