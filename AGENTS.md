# Agent Instructions

Before starting any task in this repository:

1. Run `make agents/sync`. It writes the shared Plus3 IT instructions for this repository's tardigrade-ci version to `.agents/plus3it/AGENTS.md`.
2. Read `.agents/plus3it/AGENTS.md` and follow it together with this file. If the sync fails, tell the user, and don't guess the conventions.

These rules always apply, even without the shared instructions:

- Don't push, open pull requests, publish releases, or apply infrastructure changes unless the user asks. List those steps for a person in your final report.
- Don't edit files under `.agents/plus3it/`; they are generated and overwritten by the sync.

@.agents/plus3it/AGENTS.md

## Repository-specific

### Purpose

This Terraform module creates one AWS Resource Groups group (`aws_resourcegroups_group`) whose membership comes from a resource query. The only input is the `resource_group` object, which sets the group `name`, an optional `description`, and the `resource_query` (a `type` that defaults to `TAG_FILTERS_1_0`, `ResourceTypeFilters` that default to `AWS::AllSupported`, and a list of `TagFilters`). The module has no outputs.
