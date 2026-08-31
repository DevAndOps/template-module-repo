# Starter native test. `command = plan`, credential-free provider.
# A published module MUST be tested — CI fails if this dir is empty.

provider "aws" {
  region                      = "ap-southeast-2"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
}

variables {
  name = "replace-me"
}

run "plans_cleanly" {
  command = plan
  # REPLACE with real assertions about your module's contract.
  assert {
    condition     = local.mandatory_tags.ManagedBy == "terraform"
    error_message = "mandatory ManagedBy tag missing"
  }
}
