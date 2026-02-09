# Lab 01 – Preventing Public S3 Buckets with Policy as Code

## Objective
Implement a preventive security control that blocks public AWS S3 bucket configurations before deployment using policy as code.

---

## What this demonstrates

Translating cloud security requirements into enforceable logic

Using Rego and Conftest to validate infrastructure configurations

Applying shift-left security principles in a CI-compatible workflow

---

## How it works

A mock infrastructure configuration (input.json) simulates IaC output

A Rego policy evaluates the configuration

Conftest enforces the policy and blocks insecure configurations

---

## Security outcome

Public S3 buckets are prevented before deployment

Reduces risk of data exposure caused by misconfiguration

Provides automated, auditable enforcement

---

## Compliance alignment

NIST SP 800-53 AC-6(10): Automated enforcement of least privilege

NIST SP 800-53 SC-12: Prevention of unauthorized public access

---

## Automation: GitHub Actions (Shift-Left Enforcement)

To demonstrate how this control integrates into a real engineering workflow, a lightweight GitHub Actions pipeline is included.

---

## What the Pipeline Does

- Runs automatically on pull requests and relevant pushes

- Executes Conftest against policy inputs

- Fails the build when insecure configurations are detected

This simulates how GRC controls can be enforced during development, preventing risk from reaching production rather than identifying it post-deployment.
