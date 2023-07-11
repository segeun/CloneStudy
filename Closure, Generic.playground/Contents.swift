import UIKit


func makeAdd(_ a: Int) -> () -> Int {
     var number = 1
    
    func someAdd() -> Int {
        number += a
        return number
    }
    return someAdd
}


let plusNumber = makeAdd(1)


print("\(plusNumber())")
print("\(plusNumber())")
print("\(plusNumber())")
// 캡쳐형태
// makeAdd 함수는 someAdd()를 리턴하는 함수이므로 someAdd()는 number 변수를 계속해서 기억해야한다.
// 리턴함과 동시에 plusNumber에 넣은 값을 기억하고 다음에 사용될 때 사용된다.


func someFunc<T, U>(a: T, b: U) -> String {
    return "\(a) 와 \(b)"
}

someFunc(a: 353, b: "이름")
// 제네릭 형식을 이용한 함수
// 지정된 문구를 리턴하는데 확실한 타입을 처음에 지정해주지 못 하는 경우 사용



func closures(a: String, b: String) {
    "\(a) 와 \(b)"
}
// 정석적인 함수 예시


let closure = { (a: Int, b: Int) -> String in
    let result = a + b
    if result >= 3 {
        return "\(result)"
    } else {
        return "값이 낮음"
    }
}

closure(0, 1)
// 형태1



let closure1: (String, String) -> String = { (name, number) in
    "안녕하세요, \(name)님 번호는 \(number)"
}

print(closure1("최세근", "34"))

// 형태2


let closure2 = {
    print("클로저형식3")
}
// 형태3


closure2()


// 이스케이핑 예시
var someClosures: [() -> Void] = []


func someEscaping(someClosure: @escaping () -> Void) {
    someClosures.append(someClosure)
}



someEscaping {
    print("Chris")
}

someClosures.first?()


