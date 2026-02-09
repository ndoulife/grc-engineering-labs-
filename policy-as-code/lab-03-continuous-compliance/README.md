# 🔍 Continuous Compliance Guardrail – Detecting Cloud Configuration Drift
Overview

This lab demonstrates how security and compliance intent can be continuously monitored after deployment, not just validated at build time.

While policy-as-code guardrails prevent insecure configurations from being deployed, environments can still drift over time due to manual changes, break-glass access, or operational fixes. This lab shows how cloud-native services can be used to detect and surface that drift in a way that supports governance, audit readiness, and risk visibility — without turning GRC into a SOC function.

The focus here is continuous assurance, not incident response.

---

## What This Lab Demonstrates

- How baseline security expectations are defined as config rules

- How AWS Config detects deviations from approved configurations

- How drift findings translate into governance signals, not just technical alerts

- How GRC teams can maintain confidence in cloud controls between audits

This lab complements preventive controls by addressing what happens after deployment.

---

## Scenario

A cloud environment is deployed with approved security controls in place. At some point later, a configuration changes:

- An S3 bucket becomes publicly accessible

- A logging configuration is disabled

- A resource drifts from its approved baseline

- No deployment pipeline is triggered. No pull request exists. Without continuous monitoring, this change may go unnoticed until an audit or incident.

This lab demonstrates how such drift can be detected automatically.

---

## Tools Used

- AWS Config – configuration monitoring service

- Managed Config Rules – baseline enforcement

- Example Resources – compliant vs non-compliant states

The lab is intentionally minimal to keep the focus on governance outcomes, not tooling complexity.

---

## Control Intent

In this example, the control intent is simple:

- S3 buckets must not be publicly accessible.

This intent is enforced through an AWS Config rule that evaluates bucket configurations over time.

---

## How Drift Is Detected

AWS Config records resource configurations continuously

A managed rule evaluates the resource state

Any deviation from the approved baseline is flagged as NON_COMPLIANT

The finding becomes an auditable control signal

No manual review is required to detect the change.

---

## Governance Perspective

From a GRC standpoint, this enables:

- Continuous validation of security controls

- Evidence that controls operate between audits

- Faster identification of control degradation

- Reduced reliance on periodic, manual reviews

This is not about remediation automation — it’s about visibility and assurance.

---

## Compliance Alignment

This lab supports governance and assurance objectives aligned with:

- CM-3 / CM-6 – Configuration Change Control

- CA-7 – Continuous Monitoring

- AC-3 / AC-6 – Enforcement of approved access configurations

- AU-6 – Supporting audit analysis through system-generated findings

Rather than documenting these controls, the lab shows how they can be operationalized in the cloud.

---

## Why This Matters

Modern environments change constantly. Controls that only exist at deployment time leave blind spots.

By detecting configuration drift:

- GRC teams gain ongoing confidence in control effectiveness

- Audit preparation becomes evidence-driven, not reactive

- Risk conversations are based on current state, not assumptions

This lab illustrates how governance can scale alongside cloud operations without slowing teams down.
