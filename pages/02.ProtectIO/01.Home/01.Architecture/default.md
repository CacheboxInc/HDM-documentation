---
title: Architecture
body_classes: title-center title-h1h2
---

! Updated on 05/16/2023

#### **Service Components**
ProtectIO consists of following components:
* **ProtectIO DRaaS platform:**
	- It is a web browser-based application using which tenant admin can perform operations like creating CDP (continuous data protection) configuration,  initiating failover, checking failover progress etc.
* **DR Receiver:**
	- For enabling replication for disaster recovery, a receiver is deployed on the target site and IO filter is installed on ESXi hosts on primary site.
	- Receiver is nothing but a service that receives blocks from primary site and store on target object storage.
* **VAIO replication filter:**
	- It is a library that is installed on each ESXi hosts on primary site where VMs to be protected are present. IO filter is responsible for actual replication of data from primary site to target site. 

DR Receiver and VAIO filter are deployed separately for each tenant.

#### **The Architecture**
ProtectIO provides a business continuity (BC) and disaster recovery (DR) solution in a VMware virtual environment, enabling the replication of critical virtual machines as quickly as possible, with minimal data loss. The recovery time objective (RTO) and the recovery point objective (RPO). ProtectIO enables a virtual-aware recovery with low values for both the RTO and RPO.

![The Architecture](/protectio_images/architecture.png)


#### **How recovery works with ProtectIO**
As a part of customer onboarding, ProtectIO super admin user will install a receiver on cloud/target site and IO filter on primary site. Tenant admin can define that virtual machines need to be protected/replicated through CDP configuration. Once virtual machines are added in CDP configuration, protectIO will start the initial sync process and send all blocks to object storage. Changed blocks are copied by IO filter and sent to the target site, while the write continues to be processed on protected site. On the target site, these blocks are received by the receiver and written to object storage. During failover, rehydration process starts, and virtual machines are created on target site and then blocks from object storage are synchronised with virtual machines.
