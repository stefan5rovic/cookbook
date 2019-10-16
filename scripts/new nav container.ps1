$imageName = 'mcr.microsoft.com/businesscentral/sandbox:14.5.35970.36937-us-ltsc2019'
$containerName = 'stefan'
$cred = New-Object System.Management.Automation.PSCredential -argumentList $containerName, (ConvertTo-SecureString -String $containerName -AsPlainText -Force)
$licenseFile = "C:\myfolder\synfynal.flf"

New-NavContainer -containerName $containerName `
-imageName $imageName `
-accept_eula `
-updateHosts `
-Credential $cred `
-auth NavUserPassword `
-licenseFile $licenseFile `
-includecside `
-ACCEPT_OUTDATED `
-restart always `
-enableSymbolLoading