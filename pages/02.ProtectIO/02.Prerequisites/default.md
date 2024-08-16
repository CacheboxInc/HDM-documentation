---
title: Pre-requisites
body_classes: title-center title-h1h2
---

! Updated on 05/16/2023

###
+ vCenter version should be 7.0 or later
+ List of datastores present on the vCenter at source site
+ PrimaryIO team needs to install VAIO filter VIB on ESXi hosts on primary site as a part of onboarding process. PrimaryIO team will need vCenter and ESXi hosts access with admin privileges.
+ PrimaryIO team will deploy and configure Receiver on the DR site. Customer needs to have one IP address that can be assigned to DR receiver
+ Longer Lead-Time Items: Let’s start off with a couple tasks that might require a longer lead time.
	1. Set up IBM cloud account, Virtual Private Cloud (VPC).
	2. Open firewall ports: 
		- You need to open firewall ports to allow for communication between your production sites and VMware Cloud DR components. This pre-requisite for production sites can take some time, so we recommend you do this first. View details about firewall port requirements here.
		- TBD
	3. ProtectIO DRaaS secure connection to Primary and DR vCenter environments via IPSEC tunnel or IBM cloud transit gateway
+ Make sure you have the following information prior to onboarding:
	- IBM Host URL
	- IBM Secret
	- IBM Key
+ While adding site details in ProtectIO, you need following vCenter information:
	- vCenter IP address
	- vCenter admin username and password
+ Customers should have an email id that can be used while creating a tenant account. Registration link and verification code will be sent to the provided email address.