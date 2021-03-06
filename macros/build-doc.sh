#!/bin/bash

# build VCD macros

# m4 -dtfl 
# use -dtfl to debug where the macros are 
# clear build log
echo > build.log

# Build the deployment section of all types

## Introduction
echo Building Intro section >> build.log
echo ============= >> build.log
m4 -dtfl Introduction/intro.md > ../pages/04.HDM\ Doc\ 2.2/01.introduction/default.md 2>>build.log

## System Requirements
echo Building System Requirements >> build.log
echo ============= >> build.log
m4 -dtfl System-Requirements/system-req.md > ../pages/04.HDM\ Doc\ 2.2/02.system-requirements/default.md 2>>build.log



## VCS
echo VCS Build start >> build.log
echo ============= >> build.log

### Deployment Planning
echo Deployment Planning >> build.log
echo ============= >> build.log
m4 -dtfl VCS/VCS-Deployment-Planning.m4 > ../pages/04.HDM\ Doc\ 2.2/08.vcs/05.Deployment\ Planning/default.md 2>>build.log


### deployment
echo VCS Build deployment >> build.log
echo ============= >> build.log
m4 -dtfl VCS/VCS-Deployment.m4 > ../pages/04.HDM\ Doc\ 2.2/08.vcs/40.Deployment\ Steps/default.md 2>>build.log
### migration
echo VCS Build migration >> build.log
echo ============= >> build.log
m4 -dtfl VCS/VCS-Migration.m4 > ../pages/04.HDM\ Doc\ 2.2/08.vcs/50.Performing\ Migrations/default.md 2>>build.log
### Trouble Shooting
m4 -dtfl VCS/VCS-Trouble-shoot.m4 > ../pages/04.HDM\ Doc\ 2.2/08.vcs/80.Troubleshooting\ Guide/default.md 2>>build.log

## VCD
echo VCD Build start >> build.log
echo ============= >> build.log

### Deployment Planning
echo Deployment Planning >> build.log
echo ============= >> build.log
m4 -dtfl VCD/ibm-vcd-DeploymentPlanning.m4 > ../pages/04.HDM\ Doc\ 2.2/07.vcd/05.Deployment\ Planning/default.md 2>>build.log

### deployment
echo VCD Build deployment >> build.log
echo ============= >> build.log
m4 -dftl VCD/ibm-vcd-Deployment.m4 >  ../pages/04.HDM\ Doc\ 2.2/07.vcd/40.Deployment\ Steps/default.md 2>>build.log
### migration
echo VCD Build migration >> build.log
echo ============= >> build.log
m4 -dftl VCD/ibm-vcd-Migration.m4 >  ../pages/04.HDM\ Doc\ 2.2/07.vcd/50.Performing\ Migrations/default.md 2>>build.log
### Trouble Shooting
m4 -dtfl VCD/ibm-vcd-Trouble-shoot.m4 > ../pages/04.HDM\ Doc\ 2.2/07.vcd/80.Troubleshooting\ Guide/default.md 2>>build.log

## CDS
echo CDS Build start >> build.log
echo ============= >> build.log

### Deployment Planning
echo Deployment Planning >> build.log
echo ============= >> build.log
m4 -dtfl CDS/CDS-Deployment-Planning.m4 > ../pages/04.HDM\ Doc\ 2.2/06.cds/05.Deployment\ Planning/default.md 2>>build.log

### deployment
echo CDS Build deployment >> build.log
echo ============= >> build.log
m4 -dftl CDS/CDS-Deployment.m4 > ../pages/04.HDM\ Doc\ 2.2/06.cds/40.Deployment\ Steps/default.md 2>>build.log
### migrations
# CDS migration is a symlink from VCD
### Trouble Shooting
# CDS trouble shooting is a symlink to VCD