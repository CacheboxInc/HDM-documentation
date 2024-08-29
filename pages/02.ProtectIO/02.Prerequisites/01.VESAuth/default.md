---
title: VESAuth
body_classes: title-center title-h1h2
---

! Updated on 05/16/2023


#### **Purpose of using VESauth**

PIO uses VES in one to two capacities. First, VESauth is used to enable hardware grade cryptographic access control to mitigate the possibility of a hack from identity theft. Second, if the client opts for the full VES encryption option, VES is used to encrypt the user’s disaster recovery data to mitigate the possibility of a system data breach. Combined, these two services create a robust barrier to data breach.


#### **What the user needs to know**

**Local Encryption Key**  
VESauth is used to create an account with PIO’s Disaster Recovery product. When creating an account, the user is required to a create a 4 to 8 digit PIN. In doing so, a unique encryption key (VESkey) is simultaneously created and stored in the browser/app on the device on which the user initially creates their account. The PIN is required, by the means of VESlocker hardware grade PIN security, to decrypt and use the encryption key. Until additional devices are set up, the user can only access their PIO account using the browser/app on this specific device in conjunction with their PIN. At this time, their PIN will not work on any other device/browser/app combination.

**Two VES interactive Processes**    
There are two VES processes of which the user should be aware exist but not need to memorize or study: Key Redundancies and VESrecovery. The first pertains to preparation to guard against key loss. The second pertains to recovery from key loss. The first must be done to enable the second. In both processes, VES deploys a real-time, easy to understand sequential process guide, complete with red circle alerts (similar to that used in Apple iOS mail, phone and texting apps) to walk users through the process.

+ **Key Redundancies**:  
	Upon account creation, the user will see the Key Redundancies page, and can get back to it at any time guided by a red circle alert on vesvault.com page. That page will display a list of key redundancy options along with additional red circle alerts that will walk the user through the process of setting them all up. These include: downloading the browser extension to protect against clearing the browser memory, additional browsers/app/devices to guard against to loss of any single device, creating hard copies of all encryption keys and enabling VES’s proprietary VESrecovery innovation that allows to user to fully recover their account and encrypted content even if they lose all other key redundancies. Again, all the key redundancies are only operational if each is set up prior to a key loss event.
	
+ **VESrecovery**:  
	Should the user either forget their PIN, or lose access to their encrypted VESkey, VES provides an easy-to-use guide to walk the user through key recovery via each of the key redundancies. Located at every option for PIN entry is a blue link: Forgot PIN?. The user only needs to select this link and VES will sequentially walk them through all the key recovery options.