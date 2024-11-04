New-Item `
-ItemType "file" `
-Value 'Write-Host "Hello <User>" -foregroundcolor Green' `
-Path $Profile.CurrentUserCurrentHost -Force
# Note : New-Item  : Current User or Host Create Profile
#        -ItemType : 생성하고자 하는 파일의 유형을 [File]로 지정한다.
#        -Value : 생성할 파일에 추가될 내용을 추가한다.
#        -foregroundcolor : Text Color를 Green으로 지정한다.
#        -Path  : 파일이 생성할 경로를 지정하여 [$Profile.CurrentUserCurrentHost]은 Powershell의 기본 프로필이다.
#        -Force : 이미 존재하는 파일이 있을 경우 Override[덮어쓰기]를 한다. = << 와 비슷한 개념?

Param(
    $Path # Terminal에서 입력받은 값을 저장
)
New-Item $Path # 입력받은 값을 사용하되, 세부 적용 방식은 별돌로 지정하지 않아 None으로 적용
Write-Host "File Create ${Path}" # 프로세스 수행이 끝나면 입력받아 문자열로 출력

# Q    : 왜 변수를 선언하기 위해서는 첫 번째 문자는 대문자 인가?
# A    : 단순히 관례상 가독성과 일관성 및 명확성을 위한 것이지 필수적으로 첫 글자는 대문자로 작성을 해야 하는 것은 아니다.
# CMD  : ./Create.ps1 -path './filename.*'