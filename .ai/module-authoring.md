# EXAMPLE-ORG module-authoring baseline (shared across all module repos)

Read this when editing a published Terraform module. A module is a CONTRACT
many repos depend on. The rules here protect that contract.

## Contract stability
- Inputs and outputs are a public API. Do NOT rename or remove an existing
  variable or output without a MAJOR version bump.
- Additive changes (new optional variable, new output) are safe (minor bump).
- Never change the meaning of an existing output (e.g. what `bucket_arn`
  refers to). Consumers wire it into IAM — silent changes break them.

## Security posture is the point
- The module's secure defaults (public access block, encryption, versioning)
  exist so consumers can't forget them. Do NOT relax them to "fix" a problem.
- `force_destroy` must stay guarded for prod.

## Versioning discipline
- Every change lands via PR; releases are git tags. Breaking change → major.
- Consumers pin to tags, so an unpinned or main-tracking consumer is a bug to
  flag, not to accommodate.

## Testing
- A published module MUST have `terraform test` coverage (tests/*.tftest.hcl).
- Update examples/ when inputs change; examples are validated in CI.
- Keep README input/output tables current (terraform-docs; CI fails on drift).
