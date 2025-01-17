###############################################################################
# AFT Account Request for Infix-PreProd OU
###############################################################################
module "infix_dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "dev@infix.cloud"
    AccountName               = "Infix-Dev"
    ManagedOrganizationalUnit = "Infix-PreProd"
    SSOUserEmail              = "mukesh.awasthi@adex.ltd"
    SSOUserFirstName          = "Mukesh"
    SSOUserLastName           = "Awasthi"
  }

  account_tags = {
    "Provisioned By" = "mukesh.awasthi"
    "Environment" = "Development"
    "Provisioned Via" = "AFT"
    "Project" = "Infix"
  }

  change_management_parameters = {
    change_requested_by = "DevOps Team"
    change_reason       = "Account for deploying the development environment of Infix"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Infix-Dev"
}

module "infix_stage" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "stage@infix.cloud"
    AccountName               = "Infix-Stage"
    ManagedOrganizationalUnit = "Infix-PreProd"
    SSOUserEmail              = "mukesh.awasthi@adex.ltd"
    SSOUserFirstName          = "Mukesh"
    SSOUserLastName           = "Awasthi"
  }

  account_tags = {
    "Provisioned By" = "mukesh.awasthi"
    "Provisioned Via" = "AFT"
    "Environment" = "Staging"
    "Project" = "Infix"
  }

  change_management_parameters = {
    change_requested_by = "DevOps Team"
    change_reason       = "Account for deploying the staging environment of Infix"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Infix-Stage"
}

###############################################################################
# AFT Account Request for Infix-Prod OU
###############################################################################
module "infix_prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "prod@infix.cloud"
    AccountName               = "Infix-Prod"
    ManagedOrganizationalUnit = "Infix-Prod"
    SSOUserEmail              = "mukesh.awasthi@adex.ltd"
    SSOUserFirstName          = "Mukesh"
    SSOUserLastName           = "Awasthi"
  }

  account_tags = {
    "Provisioned By" = "mukesh.awasthi"
    "Environment" = "Production"
    "Provisioned Via" = "AFT"
    "Project" = "Infix"
  }

  change_management_parameters = {
    change_requested_by = "DevOps Team"
    change_reason       = "Account for deploying the production environment of Infix"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "Infix-Prod"
}

###############################################################################
# AFT Account Request for Infix-DevOps OU
###############################################################################
module "infix_devops" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "devops@infix.cloud"
    AccountName               = "Infix-DevOps"
    ManagedOrganizationalUnit = "Infix-DevOps"
    SSOUserEmail              = "mukesh.awasthi@adex.ltd"
    SSOUserFirstName          = "Mukesh"
    SSOUserLastName           = "Awasthi"
  }

  account_tags = {
    "Provisioned By" = "mukesh.awasthi"
    "Environment" = "Shared"
    "Provisioned Via" = "AFT"
    "Project" = "Infix"
  }

  change_management_parameters = {
    change_requested_by = "DevOps Team"
    change_reason       = "Account for deploying common docker images for all environment of Infix"
  }

  custom_fields = {
    group = "shared"
  }

  account_customizations_name = "Infix-DevOps"
}