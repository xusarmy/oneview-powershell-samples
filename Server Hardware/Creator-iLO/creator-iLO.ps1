﻿## -------------------------------------------------------------------------------------------------------------
##
##
##      Description: OneView-iLO functions
##
## DISCLAIMER
## The sample scripts are not supported under any HPE standard support program or service.
## The sample scripts are provided AS IS without warranty of any kind. 
## HP further disclaims all implied warranties including, without limitation, any implied 
## warranties of merchantability or of fitness for a particular purpose. 
##
##    
## Scenario
##     	Use SSO to configure iLO from OneView
##		
##
## Input parameters:
##         OVApplianceIP                      = IP address of the OV appliance
##		   OVAdminName                        = Administrator name of the appliance
##         OVAdminPassword                    = Administrator's password
##         iLOUserCSV                         = path to the CSV file containing user accounts definition
##
## History: 
##
##        February-2016   : v1.0
##
## Version : 1.0
##
##
## -------------------------------------------------------------------------------------------------------------

Param ( [string]$OVApplianceIP="10.254.1.21", 
        [string]$OVAdminName="Administrator", 
        [string]$OVAdminPassword="P@ssword1",
        [string]$OneViewModule = "HPOneView.120",  

        [string]$iLOAccountCSV = "c:\oneview\iloAccount.csv"

)



## -------------------------------------------------------------------------------------------------------------
##
##                     Function Create-iLOAccount
##
## -------------------------------------------------------------------------------------------------------------

Function Create-iLOAccount {

<#
  .SYNOPSIS
    Create iLO accounts from OneView
  
  .DESCRIPTION
	Create iLO accounts from OneView
      
  .EXAMPLE
    Create-iLOAccount.ps1  -iLOaccountCSV c:\iLOaccount.CSV 



  .PARAMETER iLOAccountCSV
    Name of the CSV file containing iLO account definition
	

  .Notes
    NAME:  Create-iLOAccount
    LASTEDIT: 02/13/2016
    KEYWORDS: iLO accounts
   
  .Link
     Http://www.hpe.com
 
 #Requires PS -Version 3.0
 #>
Param ([string]$iLOAccountCSV ="")

    if ( -not (Test-path $iLOAccountCSV))
    {
        write-host "No file specified or file $iLOAccountCSV does not exist. Skip creating iLO account"
                foreach ($p in $PrivList)
                {
                    $priv.Add($p,$true)
                }
                $hp.Add('LoginName',$LoginName)
                $hp.Add('Privileges',$priv)
                $oem.Add('Hp',$hp)
            $Headers = @{}
                $Headers.Add("UserName" , $userName)                            
                $Headers.Add("Password" , $Password)   
                $Headers.Add('Oem',$oem)

            $data  = $Headers |ConvertTo-Json -Depth 10
                $http, $iLOIP          = $URL.split("=")
                $sName,$sessionkey     = $session.split("=")

}

## -------------------------------------------------------------------------------------------------------------
##
##                     Main Entry
##
## -------------------------------------------------------------------------------------------------------------


        if ( ! [string]::IsNullOrEmpty($iLOAccountCSV) -and (Test-path $iLOAccountCSV) )
        {
            Create-iLOAccount -iLOAccountCSV $iLOAccountCSV 



        write-host -ForegroundColor Cyan "-----------------------------------------------------"
        write-host -ForegroundColor Cyan "Disconnect from OneView appliance ................"
        write-host -ForegroundColor Cyan "-----------------------------------------------------"
        
        Disconnect-HPOVMgmt