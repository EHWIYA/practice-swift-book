// 파일명 : 1.5_OptionalValue.swift

// 1. 일반 타입 (Non-optional)
// 이 변수는 절대 nil이 될 수 없습니다. 무조건 정수가 들어있어야 해요.
var normalInt: Int = 10
// normalInt = nil // 이 줄의 주석을 풀면 에러가 발생합니다!

// 2. 옵셔널 타입 (Optional)
// 타입 뒤에 물음표(?)를 붙이면 "상자"에 담긴 상태가 됩니다.
var optionalInt: Int? = 100
optionalInt = nil // 이건 가능합니다! 값이 비어있을 수 있기 때문이죠.
