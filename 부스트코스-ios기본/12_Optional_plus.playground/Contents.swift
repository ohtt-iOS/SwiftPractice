// 2020.09.13 Sun
// swift 문법 공부
// 부스트코스 ios 프로그래밍을 위한 스위프트 기초
// 12. 옵셔널 추출

import UIKit

// 옵셔널 추출

// 옵셔널 바인딩
// 1. nil 체크 + 안전한 추출
// 2. 옵셔널 안에 값이 들어있는지 확인하고 값이 있으면 값을 꺼내옵니다.
// 3. if - let 방식 사용


func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//printName(myName)
// 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}


var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용가능합니다
// 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생
//printName(name)


// ,를 사용해 한 번에 여러 옵셔널을 바인딩 할 수 있습니다
// 모든 옵셔널에 값이 있을 때만 동작합니다
myName = "yagom"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행되지 않습니다
yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yagom and hana

// 강제 추출
// 옵셔널에 값이 들어있는지 아닌지 확인하지 않고 강제로 값을 꺼내는 방식, 만약 값이 없을경우(nil) 런타임 오류가 발생하기 때문에 추천되지 않습니다.

var meName: String? = "yagom"
var youName: String! = nil


printName(meName!) // yagom
meName = nil

//print(myName!)
// 강제추출시 값이 없으므로 런타임 오류 발생
yourName = nil

//printName(yourName)
// nil 값이 전달되기 때문에 런타임 오류발생
