# Introduction

## Compute and Data De-Coupling

HDM decouples compute (Virtual Machines - VM) and storage (Virtual Disks - VMDK) functions to quickly and efficiently move workloads to public clouds by identifying the frequently used data (hot dataset) and only moving the minimum amount of that data to the cloud. This enables workloads to be accessed in the shortest possible timeframe.


## Components

HDM consists of the following components that are dispersed between cloud and on-premises data centers (figure 1). These components are microservices packaged as VMs that work together to provide the data and control path necessary for its use cases. They also provide a flexible deployment model and failure resilience.

HDM 2.1 consists of microservices that have been packaged as VMs that work together to provide the data and control path to support the aforementioned use cases and to provide a flexible deployment model and failure resilience. HDM comprises the following components, dispersed between cloud and on-premises data centers (figure 1): 

The HDM product binaries can be used to on a VMware Cloud Director or
a VMware Cloud Foundation. The components in play in each of these
deployment is shown below.

## HDM Deployment for VMware Cloud Director

1. **PrimaryIO Plug-in: **Installed and registered on VMware vCenter for HDM management.
2. **PrimaryIO Manager:** The main controlling appliance that controls and orchestrates the entire system.
3. **On-premises Storage Gateway:** Provides access across the WAN link to deliver traffic optimization and redundancy against failures. It also accesses and manages the on-premises VMDKs for cloud-based VMs.
4. **Cloud Storage Gateway: **Provides access across the WAN link to enable cloud-based VMs read/write access back to the on-premises environment. It is possible to have multiple gateways for redundancy.
5. **Sync Daemon:** Located in both environments to deliver compression, encryption, and de-duplication for data being transferred from on-premises to cloud environments. It also provides a mechanism to pause and resume data transfers in the event of a WAN disconnect.

_Figure 1: Location of HDM 2.1 components_

![alt_text](images/image8.png "image_tooltip")


## HDM Deployment for VMware Cloud Foundation

1. **PIO Plugin:** PrimaryIO plug-in registered and installed on VMware vCenter for HDM management.
2. **PIO Manager:** The main controlling appliance. This controls and orchestrates the entire system.
3. **PIO Filter:** A **VMware VAIO filter framework** to gather I/O traces from each VM.
4. **PIO Analyzer:** The I/O Analyzer (IOA) aggregates I/O traces from all VMs. It analyzes the I/O traces at a block level to make recommendations on the cloud cache requirements etc.
5. **Storage Gateway:** Provides access across the WAN link to ensure traffic optimization and redundancy against failures. It also accesses and manage the On-Premise VMDKs for remote VMs that are in the On-Cloud.
6. **Cloud Storage G/W:** The gateway for the VMs in the On-Cloud for reads and writes back to the On-Premise across the WAN link. It is possible to have multiple gateways across WAN link for redundancy.
7. **Cloud Cache:** The cloud cache is a fast, reliable, persistent cache for the VMs in the On-Cloud. The cache maintains the working set of the VMs, so that VMs can run efficiently without moving entire data On-Cloud. When there is a cache miss, it is fetched from the On-Premise side by requesting the storage gateway to get blocks from the On-Premise VMDK.

_Figure 2: HDM components_
![alt_text](images/image54.png "image_tooltip")
     

# HDM Deployment

HDM provides a flexible deployment model to support a wide range of user needs regarding use case, performance, scalability, and security. The detailed steps and options for each deployment method are covered in the **HDM 2.1 Install Guide.** This document focuses on the usage of HDM to migrate VMs to the cloud.


# HDM Migrations

HDM 2.1 is used to migrate VMs from on-premises environments to the cloud. There are two main use cases for HDM migrations:



1. **Agile Rapid Migration (ARM):** The capability to decouple compute from data, to minimize downtime during migration.
2. **Try Before Commit (TBC):** The capability to quickly test the VMs running in the cloud before fully committing to the cloud.


## Use Cases


### Agile Rapid Migration (ARM)

This use case permanently moves the VM and all of its data to the cloud. Two types of this migration are possible:



*   **Cold migration**: Application data is moved to the cloud using **bulk migration**. The VM is powered off throughout the migration and becomes available in the cloud once the data has been fully transferred. 
*   **Warm migration**: A subset of data, called the working set, is moved to the cloud and the VM is instantly available. HDM’s cloud cache is used for optimal IO performance. Any cache misses are fetched from the on-premises environment via the WAN. The remainder of the data set is either moved online through HDM, or offline in the background. Once all data has been moved to the cloud, it is reconciled with the data from the running application to minimize application downtime.

The choice of which migration type to employ depends on the amount of data in the VM and if the VM needs to be instantly available during the migration, or if prolonged downtime can be tolerated.

**NOTE: In HDM 2.1, only cold migration is supported. **


### Try Before Commit (TBC)

This use case provides a quick way to migrate VMs to the cloud while retaining the data on-premises. This helps users validate how the applications would run in the cloud, to help them decide whether or not to fully migrate them. The user can choose to migrate the applications back to the on-premises environment at any time.
