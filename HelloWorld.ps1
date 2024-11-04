Write-Host "Hello World" # Write-Host = Echo와 같은 개념

$VALUE = "Value"
Write-Host "${VALUE}"
# Note : 기본적으로 변수를 선언하고자 하는 경우는 [$]를 포함하여 명시해야 한다.
#        선언된 변수를 사용하고자 하면 "$..." 형식으로 Shell과 유사한 개념을 가지고 있다.
# Case : "..." : 문자열의 변수가 보관이 된다. = ex. $VALUE = "String"
#        '...' : 리터럴을 지정하여 값을 그대로 출력한다. = ex. $VALUE = 'String'
#        $(..) : 개체의 속성을 보관이 된다. = ex. $($VALUE + Value)
# Waring : 반드시 [#, Comment]는 스크립트에 있는 코드들과 같은 라인에 있어서는 안된다.