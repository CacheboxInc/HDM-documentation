---
title: CDP (Continuous Data Protection) Policy
body_classes: title-center title-h1h2
---

! Updated on 05/16/2023

Use CDP policies to replicate protected VM data blocks to the DR site and store them into cloud object storage, so they can later be used for disaster and ransomware recovery.

The VAIO filter running on ESXi hosts on primary site continuously captures the changed blocks in protected VMs and sends it to DR site.

Guidelines for creating CDP configuration:
+ CDP configuration can protect one or more virtual machines.
+ CDP configuration must contain at least one virtual machine.
+ You can add or remove virtual machine from any CDP configuration







