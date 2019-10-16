Install-module navcontainerhelper -force
Import-Module navcontainerhelper -DisableNameCheckingdock


$imageName = 'mcr.microsoft.com/businesscentral/sandbox:ca-ltsc2019'
$containerName = 'stefan'
$cred = New-Object System.Management.Automation.PSCredential -argumentList $containerName, (ConvertTo-SecureString -String $containerName -AsPlainText -Force)

New-NavContainer -containerName $containerName `
-imageName $imageName `
-accept_eula `
-updateHosts `
-Credential $cred `
-auth NavUserPassword `
-includecside `
-restart always `
-enableSymbolLoading `
-doNotExportObjectsToText 