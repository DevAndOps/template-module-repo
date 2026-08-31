# template-module-repo

> **GitHub _template_ repository.** "Use this template" to start a new module. Terraform modules.

The golden path for a MODULE (a published, versioned contract). Different from
template-service-repo: modules are TESTED and PUBLISHED, not deployed.

```
├── main.tf / variables.tf / outputs.tf / versions.tf   # the module
├── examples/basic/       # runnable example (validated in CI)
├── tests/*.tftest.hcl    # native terraform test (required — CI fails if empty)
├── CLAUDE.md             # module-author context (imports baseline)
├── .github/
│   ├── copilot-instructions.md
│   ├── instructions/module.instructions.md
│   └── workflows/
│       ├── ci.yml               # thin caller -> reusable-module-ci
│       └── sync-ai-context.yml  # syncs module-authoring baseline
```

## First steps after creating from this template
1. Replace all `REPLACE` markers (module name, inputs, outputs).
2. Implement resources in `main.tf` with secure defaults.
3. Write real assertions in `tests/`.
4. Update `examples/basic`.
5. Open a PR — module CI runs fmt/validate/tflint/checkov/test/docs.
6. Tag a release (`v1.0.0`); consumers pin to it.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.40 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | REPLACE: primary name/identifier input. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags merged over mandatory tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tags"></a> [tags](#output\_tags) | Tags this module applies to every taggable resource it creates. |
<!-- END_TF_DOCS -->
