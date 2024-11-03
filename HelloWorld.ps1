Write-Host "Hello World" # Write-Host = Echo와 같은 개념

$VALUE = "Variable Value" # Powershell는 기본적으로 변수를 선언하고자 하는 경우는 [$]를 포함하여 명시해야 한다.
Write-Host "${VALUE}" # 선언된 변수를 사용하고자 하면 "${...}" 형식으로 Shell과 유사한 개념을 가지고 있다.

