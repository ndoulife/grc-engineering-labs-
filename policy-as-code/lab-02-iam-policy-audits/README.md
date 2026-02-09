# Lab 02 – IAM Policy Wildcard Audits

## Objective

Prevent the deployment of overly permissive IAM policies by enforcing least-privilege controls using policy-as-code.  
This lab demonstrates how to detect and deny IAM policy documents containing wildcard (`"*"`) permissions or resources — a dangerous misconfiguration that dramatically increases attack surface and enables privilege escalation.

Rather than relying on manual code reviews or post-deployment audits, this lab shows how such risks can be identified **before deployment**, aligned to compliance frameworks and automated within development workflows.

---

## What This Lab Demonstrates

- Translating identity governance requirements into executable policy
- Preventing broad IAM permissions (wildcards) automatically
- Using Rego and Conftest to enforce cloud controls
- Shift-left governance via CI-compatible testing

---

## Background

IAM (Identity and Access Management) defines what actions are allowed within cloud environments.  
Policies that permit `"Action": "*"` or `"Resource": "*"` grant overly broad permissions, often violating least-privilege principles and increasing risk. These are commonly detected **too late** in traditional reviews.

Policy-as-code enables this control to be enforced **early** in the development lifecycle — for example, as part of CI/CD pipelines.

---

## Policy Logic

This policy evaluates each IAM policy statement and **denies** it if:

- `"Action": "*"` appears in a statement  
- **OR** `"Resource": "*"` appears

This prevents lack of scoped access and enforces least privilege prior to deployment.

---

## File Structure

