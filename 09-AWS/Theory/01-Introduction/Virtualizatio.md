# Content

- [Content](#content)
- [Virtualization](#virtualization)
- [Hypervisor](#hypervisor)
- [Virtualization in AWS](#virtualization-in-aws)

&nbsp;

&nbsp;

&nbsp;

# Virtualization

Virtualization is the process of creating virtual versions of physical computing resources, such as servers, operating systems, storage and networks, using software.

Virtualization allows you to run multiple virtual computers on a single physical computer.

&nbsp;

&nbsp;

Imagine you have one physical server with:

- 32 GB RAM
- 16 CPU cores
- 1 TB storage

Using virtualization, you can divide its resources into multiple virtual machines (VMs).

For example:

| Virtual Machine | RAM  | CPU     | Operating System |
| --------------- | ---- | ------- | ---------------- |
| VM 1            | 8 GB | 4 cores | Linux            |
| VM 2            | 8 GB | 4 cores | Windows          |
| VM 3            | 8 GB | 4 cores | Linux            |
| VM 4            | 8 GB | 4 cores | Linux            |

All four VMs run on the same physical server.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Hypervisor

It is a software that creates and runs virtual machine.

&nbsp;

&nbsp;

# Virtualization in AWS

AWS uses virtualization to provide cloud computing resources.

For example:

- EC2: Provides virtual servers.
- EBS: Provides block storage volumes.
- VPC: Provides logically isolated virtual networks.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
