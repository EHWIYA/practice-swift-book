// 파일명 : 1.5_OptionalValue.swift

// 1. 일반 타입 (Non-optional)
// 이 변수는 절대 nil이 될 수 없습니다. 무조건 정수가 들어있어야 해요.
var normalInt: Int = 10
// normalInt = nil // 이 줄의 주석을 풀면 에러가 발생합니다!

// 2. 옵셔널 타입 (Optional)
// 타입 뒤에 물음표(?)를 붙이면 "상자"에 담긴 상태가 됩니다.
var optionalInt: Int? = 100
optionalInt = nil // 이건 가능합니다! 값이 비어있을 수 있기 때문이죠.

var optionalName: String? = "Hwi"

// 1. 안전한 방법: Optional Binding (추천 ⭐)
if let realName = optionalName {
    // optionalName에 값이 있다면 realName이라는 임시 상수에 값이 담깁니다.
    print("안녕하세요, \(realName)님!")
} else {
    // optionalName이 nil일 때 실행됩니다.
    print("이름이 입력되지 않았습니다.")
}

// 2. 위험한 방법: Forced Unwrapping
// 값이 확실히 있다고 보장될 떄만 써야 합니다.
print(optionalName!)
