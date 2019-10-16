$containerName = 'stefan'


if (!(Test-NavContainer -containerName $containerName)) {
   throw "Container $containerName does not exist"
}

$session = Get-NavContainerSession -containerName $containerName
Invoke-Command -Session $session -ScriptBlock {
   $serverInstance = 'nav'
   $tenant = 'default'
   Sync-NavTenant -ServerInstance $serverInstance -Tenant $tenant -Mode Sync -Force
   Get-NavTenant -ServerInstance $serverInstance -Tenant $tenant
}