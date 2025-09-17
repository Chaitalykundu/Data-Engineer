# Terraform vs Ansible

| Feature              | Terraform 🛠️                           | Ansible ⚙️                            |
| -------------------- | -------------------------------------- | ------------------------------------- |
| **Category**         | Infrastructure Provisioning (IaC)      | Configuration Management & Automation |
| **Language**         | HCL (HashiCorp Configuration Language) | YAML (Ansible Playbooks)              |
| **State Management** | Yes (state file)                       | No (stateless by default)             |
| **Idempotency**      | Strong (ensures desired infra matches) | Good, but not state-tracked           |
| **Execution**        | Declarative (desired state)            | Procedural + Declarative mix          |
| **Best at**          | Creating infrastructure                | Configuring & managing infra/apps     |
