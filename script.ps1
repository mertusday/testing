﻿#update powershell help menu.
update-help

#check version.
$PSVersionTable.PSVersion

# install azure commandlets.
install-module azurerm


Import-Module -Name PowerShellGet

#Save powershellget.
Save-Module -Name PowerShellGet -Path C:\Users\User\Desktop

#install powershellget
Install-Module -Name PowerShellGet -Force -AllowClobber

Get-ExecutionPolicy

Set-ExecutionPolicy unrestricted



install-Module -Name Azure -Force
import-module Azure

Add-AzureAccount

Get-AzureSubscription

Select-AzureSubscription EnergySecurity












#PowershellDeploymentKit v2.6.
#Requires Editing: http://www.systemcentercentral.com/powershell-deployment-toolkit-pdt-v2-6/.

<?xml version="1.0" encoding="utf-8"?>
<!-- 1st cut at minimizing VMs used -->
<Installer version="2.0">
  <Variable Name="RegisteredUser" Value="Microsoft Corporation" />
  <Variable Name="RegisteredOrganization" Value="Microsoft Corporation" />
  <Variable Name="InstallerServiceAccount" Value="CONTOSO\!Installer" />
  <Variable Name="InstallerServiceAccountPassword" Value="Passw0rd!" />
  <Variable Name="SourcePath" Value="$SystemDrive\Temp" />
  <Variable Name="Download" Value="S:\Installer2.6.2600" />
  <Components>
    <Component Name="System Center 2012 R2 Virtual Machine Manager">
      <Variable Name="SystemCenter2012R2VirtualMachineManagerProgramFiles" Value="D:\Program Files\Microsoft System Center 2012 R2\Virtual Machine Manager" />
      <Variable Name="SystemCenter2012R2VirtualMachineManagerAdminGroup" Value="CONTOSO\VMM Admins" />
      <Variable Name="SystemCenter2012R2VirtualMachineManagerBitsTcpPort" Value="444" />
      <Variable Name="SystemCenter2012R2VirtualMachineManagerServiceAccount" Value="CONTOSO\!vmm" />
      <Variable Name="SystemCenter2012R2VirtualMachineManagerServiceAccountPassword" Value="Passw0rd!" />
    </Component>
    <Component Name="System Center 2012 R2 Orchestrator">
      <Variable Name="SystemCenter2012R2OrchestratorInstallDir" Value="D:\Program Files (x86)\Microsoft System Center 2012 R2\Orchestrator" />
      <Variable Name="SystemCenter2012R2OrchestratorAdminGroup" Value="CONTOSO\Orchestrator Admins" />
      <Variable Name="SystemCenter2012R2OrchestratorServiceAccount" Value="CONTOSO\!or" />
      <Variable Name="SystemCenter2012R2OrchestratorServiceAccountPassword" Value="Passw0rd!" />
    </Component>
    <Component Name="System Center 2012 R2 App Controller">
      <Variable Name="SystemCenter2012R2AppControllerInstallPath" Value="D:\Program Files\Microsoft System Center 2012 R2\App Controller" />
      <Variable Name="SystemCenter2012R2AppControllerAdminGroup" Value="CONTOSO\AC Admins"/>
      <Variable Name="SystemCenter2012R2AppControllerServiceAccount" Value="CONTOSO\!ac" />
      <Variable Name="SystemCenter2012R2AppControllerServiceAccountPassword" Value="Passw0rd!" />
    </Component>
    <Component Name="System Center 2012 R2 Operations Manager">
      <Variable Name="SystemCenter2012R2OperationsManagerInstallPath" Value="D:\Program Files\Microsoft System Center 2012 R2\Operations Manager" />
      <Variable Name="SystemCenter2012R2OperationsManagerAdminGroup" Value="CONTOSO\OM Admins"/>
      <Variable Name="SystemCenter2012R2OperationsManagerManagementGroupName" Value="OM_Contoso"/>
      <Variable Name="SystemCenter2012R2OperationsManagerActionServiceAccount" Value="CONTOSO\!om_saa"/>
      <Variable Name="SystemCenter2012R2OperationsManagerActionServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2OperationsManagerDASServiceAccount" Value="CONTOSO\!om_das"/>
      <Variable Name="SystemCenter2012R2OperationsManagerDASServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2OperationsManagerDataReaderServiceAccount" Value="CONTOSO\!om_dra"/>
      <Variable Name="SystemCenter2012R2OperationsManagerDataReaderServiceAccountPassword" Value="Passw0rd!"/>
      <Variable Name="SystemCenter2012R2OperationsManagerDataWriterServiceAccount" Value="CONTOSO\!om_dwa"/>
      <Variable Name="SystemCenter2012R2OperationsManagerDataWriterServiceAccountPassword" Value="Passw0rd!"/>
    </Component>
    <Component Name="System Center 2012 R2 Configuration Manager">
      <Variable Name="SystemCenter2012R2ConfigurationManagerInstallDir" Value="D:\Program Files\Microsoft System Center 2012 R2\Configuration Manager" />
      <Variable Name="SystemCenter2012R2ConfigurationManagerAdminGroup" Value="CONTOSO\CM Admins"/>
      <Variable Name="SystemCenter2012R2ConfigurationManagerDatabase" Value="CM_HQ1"/>
      <Variable Name="SystemCenter2012R2ConfigurationManagerSiteCode" Value="HQ1"/>
      <Variable Name="SystemCenter2012R2ConfigurationManagerSite" Value="Contoso"/>
    </Component>
    <Component Name="System Center 2012 R2 Service Manager">
      <Variable Name="SystemCenter2012R2ServiceManagerInstallPath" Value="D:\Program Files\Microsoft System Center 2012 R2\Service Manager" />
      <Variable Name="SystemCenter2012R2ServiceManagerAdminRoleGroup" Value="CONTOSO\SM Admins"/>
      <Variable Name="SystemCenter2012R2ServiceManagerServicesServiceAccount" Value="CONTOSO\!sm_s" />
      <Variable Name="SystemCenter2012R2ServiceManagerServicesServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2ServiceManagerWorkflowServiceAccount" Value="CONTOSO\!sm_w" />
      <Variable Name="SystemCenter2012R2ServiceManagerWorkflowServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2ServiceManagerReportingServiceAccount" Value="CONTOSO\!sm_r" />
      <Variable Name="SystemCenter2012R2ServiceManagerReportingServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2ServiceManagerAnalysisServiceAccount" Value="CONTOSO\!sm_a" />
      <Variable Name="SystemCenter2012R2ServiceManagerAnalysisServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2ServiceManagerPortalServiceAccount" Value="CONTOSO\!sm_p" />
      <Variable Name="SystemCenter2012R2ServiceManagerPortalServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2ServiceManagerManagementGroupName" Value="SM_Contoso"/>
      <Variable Name="SystemCenter2012R2ServiceManagerDatawarehouseManagementGroupName" Value="DW_Contoso"/>
      <Variable Name="SystemCenter2012R2ServiceManagerPortalUsers" Value="CONTOSO\Domain Users"/>
    </Component>
    <Component Name="System Center 2012 R2 Data Protection Manager">
      <Variable Name="SystemCenter2012R2DataProtectionManagerProgramFiles" Value="D:\Program Files" />
      <Variable Name="SystemCenter2012R2DataProtectionManagerAdminGroup" Value="CONTOSO\DPM Admins"/>
    </Component>
    <Component Name="System Center 2012 R2 Service Provider Foundation">
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationSCVMMServiceAccount" Value="CONTOSO\!spf" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationSCVMMServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationVMMSecurityGroupUsers" Value="CONTOSO\SPF Admins" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationSCAdminServiceAccount" Value="CONTOSO\!spf" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationSCAdminServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationAdminSecurityGroupUsers" Value="CONTOSO\SPF Admins" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationSCProviderServiceAccount" Value="CONTOSO\!spf" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationSCProviderServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationProviderSecurityGroupUsers" Value="CONTOSO\SPF Admins" />
      <Variable Name="SystemCenter2012R2ServiceProviderFoundationUsageSecurityGroupUsers" Value="CONTOSO\Domain Users" />
    </Component>
    <Component Name="Windows Azure Pack 2013">
	  <Variable name="WindowsAzurePack2013AdminGroup" Value="CONTOSO\!Installer" />
	</Component>
    <Component Name="System Center 2012 R2 Service Management Automation">
      <Variable Name="SystemCenter2012R2ServiceManagementAutomationAdminGroup" Value="CONTOSO\!Installer" />
      <Variable Name="SystemCenter2012R2ServiceManagementAutomationInstallFolder" Value="D:\Program Files\Microsoft System Center 2012 R2\Service Management Automation" />
      <Variable Name="SystemCenter2012R2ServiceManagementAutomationServiceAccount" Value="CONTOSO\!sma" />
      <Variable Name="SystemCenter2012R2ServiceManagementAutomationServiceAccountPassword" Value="Passw0rd!" />
    </Component>
  </Components>
  <Roles>
    <Role Name="System Center 2012 R2 Virtual Machine Manager Database Server" Server="SCDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Orchestrator Database Server" Server="SCDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 App Controller Database Server" Server="SCDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Service Provider Foundation Database Server" Server="SCDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Service Management Automation Database Server" Server="SCDB01.contoso.com" Instance="MSSQLSERVER"></Role>
	<Role Name="Windows Azure Pack 2013 Database Server" Server="SCDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="SQL Server 2012 Management Tools" Server="SCDB01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Operations Manager Database Server" Server="OMDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Operations Manager Datawarehouse Server" Server="OMDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Operations Manager Reporting Server" Server="OMDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Service Manager Database Server" Server="SMDB01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Service Manager Datawarehouse Server" Server="SMDW01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Service Manager Analysis Server" Server="SMDW01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Service Manager Reporting Server" Server="SMDW01.contoso.com" Instance="MSSQLSERVER"></Role>
    <Role Name="System Center 2012 R2 Virtual Machine Manager Management Server" Server="VMM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Virtual Machine Manager Console" Server="VMM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 App Controller Server" Server="VMM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 App Controller Console" Server="VMM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Orchestrator Management Server" Server="SCO01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Orchestrator Primary Runbook Server" Server="SCO01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Orchestrator Web Components Server" Server="SCO01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Orchestrator Runbook Designer" Server="SCO01.contoso.com"></Role> 
    <Role Name="System Center 2012 R2 Service Provider Foundation Server" Server="SCO01.contoso.com" ></Role>
    <Role Name="System Center 2012 R2 Service Management Automation Web Service Server" Server="SCO01.contoso.com" ></Role>
    <Role Name="System Center 2012 R2 Service Management Automation Runbook Worker Server" Server="SCO01.contoso.com" ></Role>
    <Role Name="System Center 2012 R2 Operations Manager Management Server" Server="OM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Operations Manager Web Console Server" Server="OM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Operations Manager Console" Server="OM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Service Manager Management Server" Server="SM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Service Manager Web Content Server" Server="SM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Service Manager Console" Server="SM01.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Service Manager Datawarehouse Management Server" Server="SM02.contoso.com"></Role>
    <Role Name="System Center 2012 R2 Service Manager SharePoint Web Parts Server" Server="SM03.contoso.com"></Role>
	<Role Name="Windows Azure Pack 2013 Tenant Public API Server" Server="WAPTenant01.contoso.com"></Role>
    <Role Name="Windows Azure Pack 2013 Tenant Authentication Site Server" Server="WAPTenant01.contoso.com"></Role>
    <Role Name="Windows Azure Pack 2013 Tenant Site Server" Server="WAPTenant01.contoso.com"></Role>
	<Role Name="Windows Azure Pack 2013 Tenant API Server" Server="WAPTenant01.contoso.com"></Role>
    <Role Name="Windows Azure Pack 2013 Admin API Server" Server="WAPAdmin01.contoso.com"></Role>
    <Role Name="Windows Azure Pack 2013 Admin Site Server" Server="WAPAdmin01.contoso.com"></Role>
    <Role Name="Windows Azure Pack 2013 Admin Authentication Site Server" Server="WAPAdmin01.contoso.com"></Role>
    <Role Name="Windows Azure Pack 2013 Console" Server="WAPAdmin01.contoso.com"></Role>    
  </Roles>
  <SQL>
    <Instance Server="SCDB01.contoso.com" Instance="MSSQLSERVER" Version="SQL Server 2012">
      <Variable Name="SQLAdmins" Value="CONTOSO\SQL Admins" />
      <Variable Name="SQLInstallSQLDataDir" Value="D:\Program Files\Microsoft SQL Server"/>
      <Variable Name="SQLUserDBDir" Value="D:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLUserDBLogDir" Value="E:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLTempDBDir" Value="F:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLTempDBLogDir" Value="F:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLAgtServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLAgtServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SQLServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLServiceAccountPassword" Value="Passw0rd!" />
    </Instance>
    <Instance Server="OMDB01.contoso.com" Instance="MSSQLSERVER" Version="SQL Server 2012">
      <Variable Name="SQLAdmins" Value="CONTOSO\SQL Admins" />
      <Variable Name="SQLInstallSQLDataDir" Value="D:\Program Files\Microsoft SQL Server"/>
      <Variable Name="SQLUserDBDir" Value="D:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLUserDBLogDir" Value="E:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLTempDBDir" Value="F:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLTempDBLogDir" Value="F:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLASDataDir" Value="G:\MSAS11.$Instance\OLAP\Data" />
      <Variable Name="SQLASLogDir" Value="H:\MSAS11.$Instance\OLAP\Log" />
      <Variable Name="SQLASBackupDir" Value="G:\MSAS11.$Instance\OLAP\Backup" />
      <Variable Name="SQLASTempDir" Value="I:\MSAS11.$Instance\OLAP\Temp" />
      <Variable Name="SQLAgtServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLAgtServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SQLServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SQLASServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLASServiceAccountPassword" Value="Passw0rd!" />
    </Instance>    
    <Instance Server="SMDB01.contoso.com" Instance="MSSQLSERVER" Version="SQL Server 2012">
      <Variable Name="SQLAdmins" Value="CONTOSO\SQL Admins" />
      <Variable Name="SQLInstallSQLDataDir" Value="D:\Program Files\Microsoft SQL Server"/>
      <Variable Name="SQLUserDBDir" Value="D:\Program Files\Microsoft SQL Server\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLUserDBLogDir" Value="E:\Program Files\Microsoft SQL Server\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLTempDBDir" Value="F:\Program Files\Microsoft SQL Server\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLTempDBLogDir" Value="F:\Program Files\Microsoft SQL Server\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLAgtServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLAgtServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SQLServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLServiceAccountPassword" Value="Passw0rd!" />
    </Instance>
    <Instance Server="SMDW01.contoso.com" Instance="MSSQLSERVER" Version="SQL Server 2012">
      <Variable Name="SQLAdmins" Value="CONTOSO\SQL Admins" />
      <Variable Name="SQLInstallSQLDataDir" Value="D:\Program Files\Microsoft SQL Server"/>
      <Variable Name="SQLUserDBDir" Value="D:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLUserDBLogDir" Value="E:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLTempDBDir" Value="F:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLTempDBLogDir" Value="F:\MSSQL11.$Instance\MSSQL\Data"/>
      <Variable Name="SQLASDataDir" Value="G:\MSAS11.$Instance\OLAP\Data" />
      <Variable Name="SQLASLogDir" Value="H:\MSAS11.$Instance\OLAP\Log" />
      <Variable Name="SQLASBackupDir" Value="G:\MSAS11.$Instance\OLAP\Backup" />
      <Variable Name="SQLASTempDir" Value="I:\MSAS11.$Instance\OLAP\Temp" />
      <Variable Name="SQLAgtServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLAgtServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SQLServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLServiceAccountPassword" Value="Passw0rd!" />
      <Variable Name="SQLASServiceAccount" Value="CONTOSO\!sql" />
      <Variable Name="SQLASServiceAccountPassword" Value="Passw0rd!" />
    </Instance>
  </SQL>
  <VMs>
    <Count>13</Count>
    <Domain>
      <Name>contoso.com</Name>
      <ServiceAccountOU>Services.HQ</ServiceAccountOU>
      <GroupOU>Groups.HQ</GroupOU>
    </Domain>
    <Default>
      <Host>Localhost</Host>
      <VMFolder>S:\VMs</VMFolder>
      <VHDFolder>S:\VMs</VHDFolder>
      <VMName>
        <Prefix>WS12R2D</Prefix>
        <Sequence>1</Sequence>
      </VMName>
      <Processor>2</Processor>
      <Memory>
        <Startup>1024</Startup>
        <Minimum>512</Minimum>
        <Maximum>2048</Maximum>
        <Buffer>20</Buffer>
      </Memory>
      <NetworkAdapter>
	    <VirtualSwitch>CorpNet01</VirtualSwitch>
	    <MAC>
          <Prefix>00:15:5D:65:01:</Prefix>
          <Sequence>4</Sequence>
        </MAC>
        <IP>
          <Prefix>192.168.1.</Prefix>
          <Sequence>4</Sequence>
          <Mask>24</Mask>
          <Gateway>192.168.1.4</Gateway>
          <DNS>192.168.1.4</DNS>
        </IP>
      </NetworkAdapter>
      <OSDisk>
        <Parent>S:\VHD\WS12R2D-G2.vhdx</Parent>
        <Type>Differencing</Type>
      </OSDisk>
      <DataDisks>
        <Count>1</Count>
        <Format>VHDX</Format>
        <Size>100</Size>
      </DataDisks>
      <DVD>False</DVD>
      <AutoStart>
        <Action>Nothing</Action>
        <Delay>0</Delay>
      </AutoStart>
      <JoinDomain>
        <Domain>contoso.com</Domain>
        <Credentials>
          <Domain>contoso.com</Domain>
          <Password>Passw0rd!</Password>
          <Username>!jd</Username>
        </Credentials>
        <OrganizationalUnit>Servers.HQ</OrganizationalUnit>
      </JoinDomain>
      <AdministratorPassword>Passw0rd!</AdministratorPassword>
      <VMGeneration>2</VMGeneration>
      <GuestServices>True</GuestServices>
    </Default>
    <VM Count="1">
      <VMName>DC01</VMName>
      <DataDisks>
        <Count>2</Count>
        <Format>VHDX</Format>
        <Size>100</Size>
      </DataDisks>
    </VM>
    <VM Count="2">
    <VMGeneration>2</VMGeneration>
      <VMName>SCDB01</VMName>
      <Memory>
        <Startup>1024</Startup>
        <Minimum>512</Minimum>
        <Maximum>8192</Maximum>
        <Buffer>5</Buffer>
      </Memory>
      <DataDisks>
        <Count>3</Count>
        <Format>VHDX</Format>
        <Size>100</Size>
      </DataDisks>
    </VM>
    <VM Count="3">
      <VMName>VMM01</VMName>
      <Memory>
        <Startup>2048</Startup>
        <Minimum>2048</Minimum>
        <Maximum>2048</Maximum>
        <Buffer>20</Buffer>
      </Memory>
    </VM>
    <VM Count="4">
      <VMName>SCO01</VMName>
    </VM>
    <VM Count="5">
      <VMName>OMDB01</VMName>
      <DataDisks>
        <Count>6</Count>
        <Format>VHDX</Format>
        <Size>100</Size>
      </DataDisks>
      <Memory>
        <Startup>1024</Startup>
        <Minimum>512</Minimum>
        <Maximum>8192</Maximum>
        <Buffer>5</Buffer>
      </Memory>
    </VM>
    <VM Count="6">
      <VMName>OM01</VMName>
      <Memory>
        <Startup>1024</Startup>
        <Minimum>512</Minimum>
        <Maximum>4096</Maximum>
        <Buffer>20</Buffer>
      </Memory>
    </VM>
    <VM Count="7">
      <VMName>SMDB01</VMName>
      <Memory>
        <Startup>1024</Startup>
        <Minimum>512</Minimum>
        <Maximum>8192</Maximum>
        <Buffer>5</Buffer>
      </Memory>
      <DataDisks>
        <Count>3</Count>
        <Format>VHDX</Format>
        <Size>100</Size>
      </DataDisks>
    </VM>
    <VM Count="8">
      <VMName>SMDW01</VMName>
      <Memory>
        <Startup>1024</Startup>
        <Minimum>512</Minimum>
        <Maximum>8192</Maximum>
        <Buffer>5</Buffer>
      </Memory>
      <DataDisks>
        <Count>6</Count>
        <Format>VHDX</Format>
        <Size>100</Size>
      </DataDisks>
    </VM>
    <VM Count="9">
      <VMName>SM01</VMName>
      <Memory>
        <Startup>1024</Startup>
        <Minimum>512</Minimum>
        <Maximum>4096</Maximum>
        <Buffer>20</Buffer>
      </Memory>
    </VM>
    <VM Count="10">
      <VMName>SM02</VMName>
      <Memory>
        <Startup>1024</Startup>
        <Minimum>512</Minimum>
        <Maximum>4096</Maximum>
        <Buffer>20</Buffer>
      </Memory>
    </VM>
    <VM Count="11">
      <VMName>SM03</VMName>
      <VMGeneration>1</VMGeneration>
      <NetworkAdapter>
	    <Identifier>Local Area Connection</Identifier>
      </NetworkAdapter>
      <OSDisk>
        <Parent>S:\VHD\WS08R2E-SP1.vhdx</Parent>
        <Type>Differencing</Type>
      </OSDisk>
    </VM>
    <VM Count="12">
      <VMName>WAPAdmin01</VMName>
    </VM>
    <VM Count="13">
      <VMName>WAPTenant01</VMName>
    </VM>
  </VMs>
</Installer>