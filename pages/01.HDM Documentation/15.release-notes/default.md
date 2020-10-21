---
title: 'Release Notes'
---

The HDM 2.1.3 release has been qualified for production use for the _Cold Migration Use case_ in the Ultra Lite-Standalone and Ultra Lite-Cluster configurations for migration to VMware Cloud Director. 

For migrations to VMware Cloud Services or VMware Cloud Foundation HDM 2.1.3 release has been qualified for production use for the _Cold Migration, TBC and Warm Migration Use case_ in the Lite-Standalone,  Lite-Cluster, Standard-Standalone and Standard-Cluster configurations. 

What is new in HDM 2.1.3 Release?

*   Provides support for Cold Migration to VMware Cloud Director
*   Highly efficient, proprietary, data transport for cold migration


Recoverable failure conditions

*   Component failures are detected and repaired within 5 minutes
    *   Heartbeat will indicate the failed components and unavailability of the system
*   WAN disconnects lasting less than 2 minutes will be recovered
*   Behavior on failure recovery
    *   Running cold migration jobs will either succeed or fail with the appropriate response in the UI
    *   Will accept future migration requests

Cleanup required on failure conditions

*   Jobs that were running at the time of failure might leave stale files on the datastore which need to be cleaned. The files can be found on the datastore with [VM Name]/ folder.
*   Failed jobs can be retried. New jobs will be accepted and executed.

Non-Recoverable failure conditions and recovery actions



*   HDM may not recover from WAN disconnects greater than 2 minutes. An HDM reset will be required to recover from this condition (please refer to the [HDM Reset](../hdm%20reset) section of the Admin Guide).
*   In pathological failure cases where we cannot recover and the heartbeat status does not recover to “Ready”. In these cases “[HDM Reset](../hdm%20reset)”, followed by a redeployment, will be required.
*   Concurrent Infrastructure VM restarts and repeated Infrastructure VM restarts can get into unrecoverable states and require an “[HDM Reset](../hdm%20reset)” 

