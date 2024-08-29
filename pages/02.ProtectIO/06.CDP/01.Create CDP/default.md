---
title: Create CDP Policy
body_classes: title-center title-h1h2
---

! Updated on 05/16/2023

When you create a CDP policy, you select virtual machines on protected site, and DR site for replication.

As soon as you save the CDP policy, it begins to replicate data blocks of selected virtual machines to the target site.

>>>>> Virtual machines must be in powered on state for Continuous Data Replication

##### **Procedure**
+ From the left navigation, select **Primary Site**.
+ On the right side, select **CDP Configuration** tab.
+ Click on **+ADD** button which will open a dialogue box.
+ On first page, enter a **Name** of the CDP policy and **Description**.
+ Next, select the virtual machines that you want to protect as a part of Disaster Recovery plan.
+ Next, select the **DR site** from the drop down menu.
+ Next, verify the details and click **PROTECT**.


##### **What happens when CDP policy is created?**
- When CDP configuration is created on ProtectIO, then a storage policy is attached to all the protected virtual machines. And protected virtual machines are synchronized with cloud object storage through DR receiver on the target site.  
- The synchronization process can take some time, depending on the storage size of the virtual machines, the amount of data in its volumes, and the bandwidth between the sites during this synchronization. Unless this initial synchronization process is complete, you cannot initiate failover process. For synchronization to work, the protected virtual machines must be powered on.  
- Once synchronization is done, a complete copy of protected virtual machine is present on cloud object storage. When any data changes happen in a virtual machine, then these changed blocks are also synced continuously with cloud object storage using continuous data protection.

**Add CDP Policy**
![Add CDP Policy](/protectio_images/add_cdp.png)

![Add CDP Name](/protectio_images/add_cdp_name.png)

![Add CDP VM selection](/protectio_images/add_cdp_vm_selection.png)

![Add CDP DR site selection](/protectio_images/add_cdp_dr_site_selection.png)

![Add CDP Summary](/protectio_images/add_cdp_summary.png)


