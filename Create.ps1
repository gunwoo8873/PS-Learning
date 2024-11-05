function Terminal_Profile
{
    New-Item `
    -ItemType "file" `
    -Value 'Write-Host "Hello <User>" -foregroundcolor Green' `
    -Path $Profile.CurrentUserCurrentHost -Force
}
# Note : New-Item  : Current User or Host Create Profile
#        -ItemType : 생성하고자 하는 파일 형식이 [File]로 지정되어 생성된다.
#                    This will create the desired file format.
#        -Value : 생성할 파일에 추가될 내용을 추가한다.
#                 Add content to be added to the file to be created.
#        -foregroundcolor : Text Color를 Green으로 지정한다.
#        -Path  : 파일이 생성할 경로를 지정하여 [$Profile.CurrentUserCurrentHost]은 Powershell의 기본 프로필이다.
#        -Force : 이미 존재하는 파일이 있을 경우 Override[덮어쓰기]를 한다. = << 와 비슷한 개념?
# Waring : [`]가 있는 라인은 Comment를 작성을 하게되면 오류가 생길수 있으니 같은 라인에 작성을 권장하지 않는다.
#          이 스크립트를 실행하게 되면 Powershell의 Profile에 등록되는 경우가 발생할 수 있으니 주의
#          C:\Users\<Username>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

function Create_File
{
    Param(
        [Parameter(
                Mandatory,
                HelpMessage = "File Create path"
        )]

        [string]$Path # 형식을 저장하는 방법이고 [string]은 문자열만 허용한다 라는 규칙이 적용된다.
    )
    # Waring : [Parameter()]는 function 내부 Scope에 존재해야 오류가 생기지 않는다.

    If (-Not $Path -eq '')
    {
        New-Item $Path # 입력받은 값을 사용하되, 세부 적용 방식은 별돌로 지정하지 않아 None으로 적용
        Write-Host "File Create ${Path}" # 프로세스 수행이 끝나면 입력받아 문자열로 출력
    }
    Else
    {
        Write-Error "File Create ${Path} Failed"
    }
}
Create_File
# Q    : 왜 변수를 선언하기 위해서는 첫 번째 문자는 대문자 인가?
#        Why is the first letter capitalized when declaring a variable?
# A    : 단순히 관례상 가독성과 일관성 및 명확성을 위한 것이지 필수적으로 첫 글자는 대문자로 작성을 해야 하는 것은 아니다.
#        This is simply for the sake of readability, consistency, and clarity, and does not necessarily require that the first letter be capitalized.
# CMD  : ./Create.ps1 -path './filename.*'