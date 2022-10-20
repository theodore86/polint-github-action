# Prometheus Operator GitHub Action

[![Linting](https://github.com/theodore86/prometheus-operator-github-action/actions/workflows/ci.yml/badge.svg)](https://github.com/theodore86/prometheus-operator-github-action/actions/workflows/ci.yml)

## Introduction

This simple GitHub Action allows to run [po-lint](https://github.com/prometheus-operator/prometheus-operator/blob/main/Documentation/user-guides/linting.md) on **any** kubernetes [prometheus operator](https://github.com/prometheus-operator/prometheus-operator) CRDs.

## Usage

```yaml
name: Check Prometheus Operator CRDs
on:
  pull_request:

jobs:
  polint:
    name: Prometheus operator linter
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: theodore86/prometheus-operator-github-action@v1
        with:
          path: './crds'
          exclude: '.*test.*'
```

## Inputs

| Name                 | Description                                                                                                                             | Default            |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------|--------------------|
| `path`               | Absolute or relative path to the Prometheus Operator CRDs                                                                                                 | `./`               |
| `glob_pattern`       | Rule file extension as glob pattern                                                                                                     | `*.y*ml`           |
| `exclude`            | Regex to exclude files or folders from linting                                                                                          | ``none``             |
