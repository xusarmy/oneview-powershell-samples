# OneView Inventory of SAS SSD PowerShell script


## Scenario
Administrators want to get an inventory of SAS SSD drives in response to the critical advisory for upgrading firmware on those drives: https://support.hpe.com/hpsc/doc/public/display?docId=emr_na-a00092491en_us 

## Notes
   * Works for both OneView and non-OneView environment(using iLO)
   * Works for Gen8/Gen9 and Gen10 servers - BL and DL


## Prerequisites
The script requires:
   * the latest OneView PowerShell library : https://github.com/HewlettPackard/POSH-HPOneView/releases
   * the latest HPERedfishCmdelts on PowerShell gallery
   * IP address and credentials to connect to a OneView environment
   * iLO CSV file ( see notes)
  

## To install OneView PowerShell library and HPERedfishCmdlets

```
    # You will need HPERedfishCmdlets for both OneView and non-OneView environment 
    install-Module  HPERedfishcmdlets  -scope currentuser
    
    # For OneView 4.20
    install-module HPOneView.420  -scope currentuser

    # For OneView 5.0
    install-module HPOneView.500  -scope currentuser

```

## To run in an OneView environment

```
    # Get inventory for SAS-SSD disks ( default)
    .\OV-Get-Disks.ps1 -hostname <OV-name> -username <OV-admin> -password <OV-password>

    # Get inventory for SATA-SSD disks 
    .\OV-Get-Disks.ps1 -hostname <OV-name> -username <OV-admin> -password <OV-password> -interfaceType SATA -mediaType SSD

```

## To run in a  non-OneView environment using iLO addresses

Create an ILO.csv file ( see sample)
```
iloName,userName,password
10.10.1.3,admin,password
10.10.1.5,admin,password

```

```
    # Get inventory for SAS-SSD disks ( default)
    .\iLO-Get-Disks.ps1 -CSVfile ilo.csv

    # Get inventory for SATA-SSD disks 
    .\iLO-Get-Disks.ps1 .\iLO-Get-Disks.ps1 -CSVfile ilo.csv -interfaceType SATA -mediaType SSD

```
    