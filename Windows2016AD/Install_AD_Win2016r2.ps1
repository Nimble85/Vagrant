# * Make sure you run this script from a Powershel Admin Prompt!
# * Make sure Powershell Execution Policy is bypassed to run these scripts:
# * YOU MAY HAVE TO RUN THIS COMMAND PRIOR TO RUNNING THIS SCRIPT!

# Get-Command -module ServerManager  

Install-WindowsFeature -name AD-Domain-Services

Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools  

Get-WindowsFeature

# AD-1
# AD-DC
###traderevolution  - its name`s domen
#Добавление директории в AD-1



New-ADOrganizationalUnit -Name Sales -Path "DC=traderevolution,DC=COM"
New-ADOrganizationalUnit -Name Finance -Path "DC=traderevolution,DC=COM"


# Add groups

New-ADGroup -Name "RODC Admins" -SamAccountName RODCAdmins -GroupCategory Security -GroupScope Global -DisplayName "RODC Administrators" -Path "CN=Users,DC=traderevolution,DC=Com" -Description "Members of this group are RODC Administrators"
New-ADGroup -Name "Reporting" -SamAccountName Reporting -GroupCategory Security -GroupScope Global -DisplayName "Reporting" -Path "CN=Users,DC=traderevolution,DC=Com" -Description "Members of this group are view and create reports about finance state"


# Create users

New-ADUser -Name "Петрова Тамара Васильевна" -GivenName "Тамара" -Surname "Петрова" -SamAccountName "t.petrova" -UserPrincipalName "t.petrova@traderevolution.com" -Path "OU=Finance,DC=traderevolution,DC=com" -AccountPassword (Read-Host -AsSecureString "Qw123456") -Enabled $true
# допилить верхнюю строчку... (не полная и выдаёт запрос на ввод пароля ----править значение:   -AccountPassword (Read-Host -AsSecureString "Qw123456")




######################################################
######################################################
########################_________________#############
########################______FTP________#############
########################_________________#############
######################################################
######################################################








