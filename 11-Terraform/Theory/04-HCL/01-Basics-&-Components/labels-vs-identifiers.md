| Feature                | **Labels**                                                                            | **Identifiers**                                                                  |
| ---------------------- | ------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| **Definition**         | Strings that follow the block type to give context (type/name).                       | Names you assign to variables, resources, outputs, modules, etc.                 |
| **Where used**         | Immediately after block type (e.g., `resource "aws_instance" "my_ec2"`).              | Inside blocks or references (e.g., `my_ec2`, `instance_type`, `instance_ip`).    |
| **Format**             | Always written in **quotes** `"..."`.                                                 | Written as plain text (no quotes).                                               |
| **Allowed characters** | Can include letters, digits, dashes, underscores, periods. Example: `"web-server-1"`. | Only letters, digits, underscores. Cannot start with a digit. Example: `my_ec2`. |
| **Case-sensitive?**    | Yes.                                                                                  | Yes.                                                                             |
| **Purpose**            | To tell Terraform _what kind_ of thing you’re defining.                               | To give a unique name for referencing later.                                     |
| **Example**            | `resource "aws_instance" "my_ec2"` → `aws_instance` and `"my_ec2"` are labels.        | `my_ec2` is the identifier when you later call `aws_instance.my_ec2.id`.         |
