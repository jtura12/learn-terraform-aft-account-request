module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jtura@agsx.net"
    AccountName               = "jtura-sb-03"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jtura@agsx.net"
    SSOUserFirstName          = "Jan Luis"
    SSOUserLastName           = "Tura"
  }

  account_tags = {
    "account_type" = "sandbox"
  }

  change_management_parameters = {
    change_requested_by = "Cloud Engineering Team"
    change_reason       = "Sample account template"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
