---
title: 'Deployment Planning'
---
NOTICE_FOR_MACRO_PREPROCESSOR

### HDM Deployment

HDM provides a very flexible deployment model providing options to cater to different user needs in terms of use case, performance, scalability and security. This needs to be selected as part of the installation of on-premises components. 


![alt_text](images/image42_new.png?classes=content-img "image_tooltip")



#### HDM Deployment Types

While deploying HDM, users need to select a combination of **Deployment Mode** and **Resource Allocation** type. The features of the available options are provided below to guide the user to choose the deployment type that is best suited for their requirements.


#### Deployment Mode : Standalone or Cluster

Based on scale and failure tolerance requirements, users can choose to deploy either in standalone mode or as a cluster. Please note the following:

1. In standalone mode, a fixed number of HDM components are installed, regardless of cluster size. In addition, this mode does not include any redundancy in the HDM components, so it will be less fault tolerant.
2. In cluster mode, some HDM components will be installed based on the scale of the cluster. The delivers greater redundancy, superior fault tolerance, and more concurrent migrations than the standalone option, but it will consume more resources. 


#### Concurrency and Scale Support 

The following table highlights the amount of concurrency and scalability supported by each HDM deployment type:

**Note: **Here, the N in Cluster (N) refers to the number of nodes in the cloud cluster where HDM is deployed.


<table>
  <tr>
   <td>
   </td>
   <td><strong>Concurrent</strong>
<p>
<strong>Cold Migrations</strong>
   </td>
   <td><strong>Compute</strong>
<p>
<strong>Migrated VMs</strong>
<p>
<strong>On-Cloud</strong>
   </td>
   <td><strong>Concurrent</strong>
<p>
<strong>Warm Migrations</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Lite</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Standalone
   </td>
   <td>8
   </td>
   <td>10
   </td>
   <td>2
   </td>
  </tr>
  <tr>
   <td>Cluster (N)
   </td>
   <td>8
   </td>
   <td>2 x 10
   </td>
   <td>N x 2
   </td>
  </tr>
  <tr>
   <td><strong>Standard</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Standalone
   </td>
   <td>8
   </td>
   <td>20
   </td>
   <td>4
   </td>
  </tr>
  <tr>
   <td>Cluster (N)
   </td>
   <td>8
   </td>
   <td>N x 20
   </td>
   <td>N x 4
   </td>
  </tr>
  <tr>
   <td><strong>Performance</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Standalone
   </td>
   <td>8
   </td>
   <td>25
   </td>
   <td>8
   </td>
  </tr>
  <tr>
   <td>Cluster (N)
   </td>
   <td>8
   </td>
   <td>N x 25
   </td>
   <td>N x 8
   </td>
  </tr>
</table>


Note : In Ultra Lite mode, HDM can process multiple simultaneous migration requests. The requests will be analyzed and queued by the system. Eight VMDKs per node can be processed simultaneously. 


#### Resource Allocation : Ultra Lite, Lite, Standard or Performance

HDM provides Ultra LIte, Lite, Standard and Performance deployment options. Each option involves a trade-off between CPU and memory resource utilization, and the supported number of concurrent migrations. Consider the following when making your choice:

1. Ultra Lite is least resource intensive than many of the options and supports cold migration using the PrimaryIO proprietary data transport.
2. Lite mode requires the fewest number of resources among the options, but the number of parallel migrations and the number of concurrently migrated VMs will be limited.
3. Standard mode is more scalable than Lite mode, yet less scalable than Performance mode. However, resource requirements will be proportionally higher or lower. 
4. Performance mode requires the highest number of resources among the options, but it also offers the greatest performance by delivering the highest number of parallel migrations and supporting the highest number of concurrently migrated VMs.


#### HDM Resource Requirements

The following table highlights the number of resources required for each HDM deployment type:


**Note**: 

1. Here the names ESXMgr, CloudCache, PremMgr and CloudMgr are abbreviated names of the VMs containing HDM components. These get created as part of the HDM deployment.
2. The N in Cluster (N) refers to the number of nodes in the cloud cluster.

<table>
  <tr>
   <td>
<em> </em>
   </td>
   <td><strong>Standalone</strong>
   </td>
   <td><strong>Cluster (N)</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Ultra Lite</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>On-Premise
   </td>
   <td><strong>1</strong> Appliance (4 vCPU, 8 GB RAM, 144 GB disk)
<p>
<strong>1</strong> ESXMgr (8 vCPU, 8 GB RAM, 128 GB disk)
   </td>
   <td>1 Appliance (4 vCPU, 8 GB RAM, 144 GB disk)
<p>
2 ESXMgr (8 vCPU, 8 GB RAM, 128 GB disk)
   </td>
  </tr>
  <tr>
   <td>On-Cloud
   </td>
   <td><strong>1</strong> CloudCache (6 vCPU, 12 GB RAM, 64 GB disk)
   </td>
   <td>2 CloudCache (6 vCPU, 12 GB RAM, 64 GB disk)
   </td>
  </tr>
  <tr>
   <td><strong>Lite</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>On-Premise
   </td>
   <td><strong>1</strong> Appliance (4 vCPU, 8 GB RAM, 144 GB disk), \
<strong>1</strong> ESXMgr (8 vCPU, 8 GB RAM, 96 GB disk)
   </td>
   <td><strong>1 </strong>Appliance \
<strong>2</strong> ESXMgr
   </td>
  </tr>
  <tr>
   <td>On-Cloud
   </td>
   <td><strong>1</strong> CloudCache (6 vCPU, 12 GB RAM, 32 GB disk, 512 GB cache)
   </td>
   <td><strong>2</strong> CloudCache
   </td>
  </tr>
  <tr>
   <td><strong>Standard</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>On-Premise
   </td>
   <td><strong>1</strong> Appliance (4 vCPU, 8 GB RAM, 144 GB disk), \
<strong>1</strong> PremMgr (3 vCPU, 4 GB RAM, 32 GB disk),
<p>
<strong>1</strong> ESXMgr (4 vCPU, 4GB RAM, 160 GB disk)
   </td>
   <td><strong>1</strong> Appliance
<p>
<strong>2</strong> PremMgr, 
<p>
<strong>N</strong> ESXMgr
   </td>
  </tr>
  <tr>
   <td>On-Cloud
   </td>
   <td><strong>1 </strong>CloudMgr (4 vCPU, 6 GB RAM, 32 GB disk), \
<strong>1</strong> CloudCache (6 vCPU, 20 GB RAM, 32 GB disk, 512 GB cache)
   </td>
   <td><strong>2</strong> CloudMgr, \
<strong>N</strong> CloudCache
   </td>
  </tr>
  <tr>
   <td><strong>Performance</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>On-Premise
   </td>
   <td><strong>1</strong> Appliance (4 vCPU, 8 GB RAM, 144 GB disk) \
<strong>1</strong> PremMgr (3 vCPU, 4 GB RAM, 32 GB disk),
<p>
<strong>1</strong> ESXMgr (5 vCPU, 9 GB RAM, 288 GB disk)
   </td>
   <td><strong>1</strong> Appliance \
<strong>2</strong> PremMgr,
<p>
<strong>N</strong> ESXMgr
   </td>
  </tr>
  <tr>
   <td>On-Cloud
   </td>
   <td><strong>1</strong> CloudMgr (6 vCPU, 6 GB RAM, 32 GB disk), \
<strong>1</strong> CloudCache (8 vCPU, 40 GB RAM, 32 GB disk, 2 TB cache)
   </td>
   <td><strong>2</strong> CloudMgr, \
<strong>N</strong> CloudCache
   </td>
  </tr>
</table>


**Recommendation**: While any of the cluster modes can be used in the production environment, the Standard-Standalone mode is recommended for the test environment. 

ifdef(~sTARGET_VCD~e, ~s
### Prepare Cloud for Deployment

To deploy the HDM solution on  PLATFORM_NAME you would
need to

* Get the _Organization Administrator_ access credentials to the PLATFORM_NAME tenant portal.
* Identify the organization ID and save for later use.
* Create a new user with administrator privilege.

**Identify the organization ID**

* Login to the tenant portal
* The Organization ID can be identified from the location in  _Figure 1_

_Figure 1: Screenshot show how to identify Organization ID_

ifdef(~sTARGET_VCD_CDS~e, ~s
![Organization Id](images/CDS-Organization-id.png?classes=content-img "Screenshot showing how to find organization id")~e,~s
![Organization Id](images/Organization-id.png?classes=content-img "Screenshot showing how to find organization id") 
~e)

**Create new user with Organization Administrator privilege**

We recommend the creation of a new organization administrator for HDM integration.
We refer to this administrator in the rest of the documentation.

1. Create the new Org administrator user using procedure [here to create new user.](https://docs.vmware.com/en/VMware-Cloud-Director/10.1/VMware-Cloud-Director-Tenant-Portal-Guide/GUID-1CACBB2E-FE35-4662-A08D-D2BCB174A43C.html) 
1. Make sure you give it the **Organization Administrator** role see _Figure 2._


__Figure 2: Setting role for created user to **Organziation Administrator**__
![](images/organization-administrator.png?classes=content-img)

__Figure 3: Set the quota to unlimited__
![](images/quota.png?classes=content-img)

From the steps above please capture the information in the table below. 
The username is the newly created user with administrator privileges. You will need 
this part of the cloud deployment.

|vCloud Director FQDN| _ |
| :--| --- |
|Organization Name | _ |
|Username  | _ |
|Password | _ |
~e)