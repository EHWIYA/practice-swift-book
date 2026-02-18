class DataImporter {
    // 데이터를 가져오는데 오랜 시간이 걸린다고 가정
    var filename = "data.txt"
}

class DataManager {
    // 💡 lazy를 사용하여 DataImporter 인스턴스를 지연 생성
    lazy var importer = DataImporter()
    var data = [String]()
    
    // 데이터를 관리하는 기능들...
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")

// 🚀 이 시점까지 DataImporter 인스턴스는 아직 생성되지 않음!
// 아래 라인에서 importer에 처음 접근할 때 비로소 생성
print(manager.importer.filename)
