import UIKit


func mergeInfo<T, U>(_ info1: T, _ info2: U) -> String {
    return "\(info1) : \(info2)"
}

print(mergeInfo("Korea", 100))

print(mergeInfo("Japan", 95))

print(mergeInfo("United States", 39.95))

print(mergeInfo(501, 591.32))

// 제네릭 예시, T, U, V 순서로 타입을 지정하는 것이 국룰.
// 형태가 정해지지 않은 함수에 제네릭 형식으로 표현하면 여러 곳에 활용 가능


let numbers = [16, 58, 510]

let strings = numbers.map { String($0) }

print(strings)

// map 이라는 클로저 형식의 고차함수
// ["16", "58", "510"] 가 출력된다.


let names: [String] = [
    "아구몬", "파피몬", "브이몬", "덴타몬", "엔젤몬",
    "티몬", "파닥몬", "가트몬", "코로몬", "호르몬"]

// 배열의 .sorted() 함수는 오름차순으로 새 배열을 만들어 반환한다
var sortedNames: [String] = names.sorted()

// 한번에 뒤집기로 내림차순 가능 하다
sortedNames = sortedNames.reversed()

// 다시 처음부터 우리 손으로 내림차순을 만들어보자
// 1. 함수를 만들어서
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

sortedNames = names.sorted(by: backward)

// 2. 클로저 표현식을 사용해서 in-line으로...

sortedNames = names.sorted(by: { (s1: String, s2: String) -> Bool  in
    return s1 > s2
})

sortedNames = names.sorted(by: { (s1: String, s2: String) -> Bool  in return s1 > s2 })

sortedNames = names.sorted(by: { s1, s2 in return s1 > s2 })

sortedNames = names.sorted(by: { s1, s2 in s1 > s2 })

sortedNames = names.sorted(by: { $0 > $1 })

sortedNames = names.sorted(by: >)

print(sortedNames)


// String 배열을 만드는 여러가지 방법

var names1: [String] = ["ned", "mayo"]

var names2 = [String]()
var names3: [String] = .init()

var names4: Array<String> = []
var names5 = Array<String>()
var names6: Array<String> = .init()
