# Node : Description	            경로
#        All User, All Host	        $PSHOME\Profile.ps1
#        All User, All Host	        $PSHOME\Microsoft.PowerShell_profile.ps1
#        Current User, All Host	    $Home[My ]Documents\PowerShell\Profile.ps1
#        Current User, Current Host	$Home[My ]Documents\PowerShell\Microsoft.PowerShell_profile.ps1

pwsh
# Note : Powershell Sessioon Start

$Profile | Select-Object *
# Note : PS1 File의 Code상태 에서는 Terminal에 결과를 출력하지 않고 수동으로 Terminal에 입력을 해야한다.
# Result :
# AllUsersAllHosts       : C:\Program Files\WindowsApps\Microsoft.PowerShell_7.4.6.0_x64__8wekyb3d8bbwe\profile.ps1
# AllUsersCurrentHost    : C:\Program Files\WindowsApps\Microsoft.PowerShell_7.4.6.0_x64__8wekyb3d8bbwe\Microsoft.PowerShell_profile.ps1
# CurrentUserAllHosts    : C:\Users\gunwo\Documents\PowerShell\profile.ps1
# CurrentUserCurrentHost : C:\Users\gunwo\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# Length                 : 68