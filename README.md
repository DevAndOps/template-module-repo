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
