# GitHub Copilot instructions — module authoring (org baseline)

## Context
This is a PUBLISHED Terraform module — a versioned contract many repos consume.

## Rules Copilot must follow
- Do not rename or remove existing variables/outputs without a MAJOR version bump.
- Additive changes only for minor bumps; never change an output's meaning.
- Never relax secure defaults; keep prod guards intact.
- Every change needs `terraform test` coverage; update examples/ on input changes.
- Keep README input/output tables current (terraform-docs).
