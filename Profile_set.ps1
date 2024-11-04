# Node :
# Description	                경로
# All User, All Host	        $PSHOME\Profile.ps1
# All User, All Host	        $PSHOME\Microsoft.PowerShell_profile.ps1
# Current User, All Host	    $Home[My ]Documents\PowerShell\Profile.ps1
# Current User, Current Host	$Home[My ]Documents\PowerShell\Microsoft.PowerShell_profile.ps1

pwsh
# Note : Powershell Sessioon Start

$Profile | Select-Object *
# Note : PS1 File의 Code상태 에서는 Terminal에 결과를 출력하지 않고 수동으로 Terminal에 입력을 해야한다.

New-Item `
-ItemType "file" `
-Value 'Write-Host "Hello <Replace with your name>" -foregroundcolor Green' `
-Path $Profile.CurrentUserCurrentHost -Force
# New-Item  : Current User or Host Create Profile
# -ItemType : 생성하고자 하는 파일의 유형을 [File]로 지정한다.
# -foregroundcolor : Text Color를 Green으로 지정한다.
# -Value : 생성할 파일에 추가될 내용을 추가한다.
# -Path  : 파일이 생성할 경로를 지정하여 [$Profile.CurrentUserCurrentHost]은 Powershell의 기본 프로필이다.
# -Force : 이미 존재하는 파일이 있을 경우 Override[덮어쓰기]를 한다. = << 와 비슷한 개념?