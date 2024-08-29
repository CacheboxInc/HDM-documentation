---
title: Add Sites
body_classes: title-center title-h1h2
---

! Updated on 05/16/2023

#### 1. **Add Primary Site**  
A primary site includes vCenter which contains the VMs you want to protect. To add vCenter as a Primary site in ProtectIO, you do the following:

##### **Procedure**
1. From left navigation, select **Sites**
2. Click the **ADD** button.
3. In the **Add vCenter** dialog box, Provide below information
	+ Name: It is a display name of the vCenter that will appear on Sites page while listing site/vCenter information. It should be unique for each site and must not contain spaces and special characters except underscore (_) and hyphen (-)
	+ vCenter IP: Provide the IP address assigned to vCenter IP. Enter only IPv4 address.
	+ vCenter username: Provide vCenter username with administrator privileges.
	+ password: vCenter password associated with username entered above.
5. Do **not** enable DR site option while adding primary site. 
6. Click **ADD**.  
Upon successful authentication, primary site vCenter will be added.


#### 2. **Add DR Site**
A DR site includes vCenter which is present on DR site and VMs will be instantiated on this vCenter in case of failover. To add vCenter as a DR site in ProtectIO, you do the following:

##### **Procedure**
1. From left navigation, select **Sites**
2. Click the **ADD** button.
3. In the **Add vCenter** dialog box, Provide below information
	+ **Name**: It is a display name of the vCenter that will appear on Sites page while listing site/vCenter information. It should be unique for each site and must not contain spaces and special characters except underscore (_) and hyphen (-)
	+ **vCenter IP**: Provide the IP address assigned to vCenter IP. Enter only IPv4 address.
	+ **vCenter Username**: Provide vCenter username with administrator privileges
	+ **Password**: vCenter password associated with username entered above.
5. Enable DR site option while adding DR site. 
6. Click **ADD**.  
Upon successful authentication, DR site vCenter will be added.

**Add Source Sites Wizard**
![Add Source site Wizard](/protectio_images/add_sites_wizard.png)

**Add Target Sites Wizard**
![Add Source site Wizard](/protectio_images/add_sites_wizard_dr.png)

**Sites Added**
![Sites Added](/protectio_images/sites_added.png)

