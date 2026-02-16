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

// 1. 우리가 평소에 쓰는 방식 (Sugar Syntax)
let shortForm: Int? = 5

// 2. 실제 내부 모습 (Full Syntax)
// Optional은 사실 이렇게 생긴 열거형입니다.
let longForm: Optional<Int> = Optional.some(5)

// 3. Switch 구문으로 옵셔널 다루기
// 옵셔널이 열거형이기 때문에 switch 문으로도 값을 확인할 수 있습니다.
switch shortForm {
case .some(let value):
    print("값이 있네요: \(value)")
case .none:
    print("값이 없어요(nil)")
}
