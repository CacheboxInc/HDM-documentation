---
title: Disaster Recovery Operations
body_classes: title-center title-h1h2
---

! Updated on 05/16/2023

###Running Failover
You can initiate **FAILOVER** immediately after a real life disaster event and in disaster recovery situation when the source site is no longer available. You can also initiate this for ransomware recovery.

##### How a Failover runs
Following a disaster, use the **FAILOVER** option to recover protected virtual machines to the recovery site.
When failing over to a DR site, ProtectIO rehydrates from the Cloud Object Storage buckets into the respective VMDKs and instantiates the VMs that compose the application workload that is being protected via CDP policy.

### Running Failback
Once primary site is restored and operational, you can failback from DR site to primary site using **FAILBACK** option. 

##### How a Failback runs
Failback from DR site to primary site returns only changed data. There is no rehydration.



