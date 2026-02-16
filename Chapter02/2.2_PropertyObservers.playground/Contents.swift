var stepCount: Int = 0 {
    // 1. 값이 바뀌기 직전에 실행
    willSet(newSteps) {
        print("걸음 수가 \(newSteps)로 곧 바뀔 예정입니다.")
    }
    
    // 2. 값이 바뀐 직후에 실행
    didSet {
        if stepCount > oldValue {
            print("\(stepCount - oldValue) 걸음이나 더 걸으셨네요!")
        }
    }
}

// 실습: 값을 변경해 봅시다.
stepCount = 100
// 출력 결과:
// "걸음 수가 100로 곧 바뀔 예정입니다."
// "100 걸음이나 더 걸으셨네요!"

var message: String = "Hello" {
    willSet {
        print("1. [willSet] 상자 안에는 아직 '\(message)'가 들어있어요.")
        print("   -> 곧 '\(newValue)'로 바뀔 거예요.")
    }
    didSet {
        print("2. [didSet] 상자 안에 이제 '\(message)'가 들어왔어요!")
        print("   -> 예전 값인 '\(oldValue)'는 이제 안녕~")
    }
}

message = "Swift"
