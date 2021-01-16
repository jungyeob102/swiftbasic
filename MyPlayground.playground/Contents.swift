
//MARK: 02. 명명법/콘솔로그/문자열 보간법--------------------------------------------------------------------------------------------
/* 콘솔로그
print 단순 문자열 출력
dump  인스턴스의 자세한 설명(description 프로퍼티)까지 출력

문자열 보간법
 string interpolation
 프로그램 실행 중 문자열 내에 변수 또는 상수의 실질적인 값을 표현하기 위해 사용 \()
*/

// 콘솔로그 문자열 보간법

import Swift

let age: Int = 10

"안녕하세요! 저는 \(age)살입니다"
// == "안녕하세요! 저는 10살입니다"

print("안녕하세요! 저는 \(age + 5)살입니다")

class Person {
    var name : String = "jungyeob"
    var age : Int = 27
}

let jungyeob : Person = Person()



print(jungyeob)

dump(jungyeob)

//MARK: 03. 상수와 변수----------------------------------------------------------------------------------------------------------

import Swift

//상수, 변수의 선언
//상수 선언 키워드 let
//변수 선언 키워드 var

//상수의 선언
//  let 이름: 타입 = 값

//변수의 선언
//  var 이름: 타입 = 값

let constant: String = "차후에 변경이 불가능한 상수 let" //2. let이 var로 변경됨
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
//constant = "상수는 차후에 값을 변경할 수 없습니다" // 1. 오류 발생

//상수 선언 후에 나중에 값 할당하기

// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해야 한다.
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

//선언 후 첫 할당
sum = inputA + inputB


// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없다! 오류발생

//변수도 차후에 할당하는 것이 가능하다
var nickname : String

nickname = "jungyeob"
nickname = "yeobLEE"

/* 정리 =
 변수 선언 키워드 = var
 var 이름 : 타입 = 값
 
 상수 선언 키워드 = let
 let 이름 : 타입 = 값
 
 상수는 차후에 값을 변경할 수 없다. 그러나 변수는 차후에 값을 변경할 수 있다.
 MYTHINK - 따라서 언제나 고정된 값을 가지는 것은 상수로, 변할 가능성이 있으면 변수로 선언하는 것이 좋을 것이다.
 */

//MARK: 04. 기본 데이터 타입------------------------------------------------------------------------------------------------------
 
import UIKit

// Swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool : Bool = true
someBool = false

// Int
var someInt : Int = -100
//someInt = 100.1 오류발생!

// UInt
var someUInt : UInt = 100
//someUInt = -100 오류발생!

//Float
var someFloat : Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3

// Character
var someCharacter: Character = "가"
// someCharacter = "가가가" 오류발생! 문자가 하나가 아닌 여러개가 들어가면 캐릭터타입이 아닌 문자열 타입으로 보기 때문
print(someCharacter)

// String
var someString: String = "하하하"
someString = someString + " 웃으면 복이와요"
print(someString)

/*
 정리
 
 Bool = true false 만을 값으로 가지는 타입
 
 Int, UInt
 Int = 정수 타입. 현재는 기본적으로 64비트 정수형
 UInt= 양의 정수 타입. 현재는 기본적으로 64비트 양의 정수형
 
 Float, Double
 Float = 실수 타입. 32비트 부동소수형
 Double = 실수 타입. 64비트 부동소수형
 
 Character, String
 Character : 문자 타입(문자 하나). 유니코드 사용. 큰따옴표"" 사용
 String : 문자열 타입. 유니코드 사용. 큰따옴표"" 사용
 */

//MARK: 05. Any, AnyObject, nil ----------------------------------------------------------------------------------------------

import Swift

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil -없음을 의미하는 키워드
 */

//MARK: - Any
var someAny: Any = 100
someAny  = "어떤 타입도 수용 가능"
someAny = 123.12

//let somedouble : Double = someAny 오류 발생! 값으로 다른 타입이 들어가는 것은 안됨

//MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

// someAnyObject = 123.12 오류 발생!


//MARK: - nil
// someAny = nil 오류 발생! someAny는 Any 타입으로 선언했기 때문에 Swift의 모든 타입의 값이 들어올 수 있지만 빈 값은 들어올 수가 없다

// 06. 컬렉션 타입(Array, Dictionary, Set)---------------------------------------------------------------------------------------

/*
 컬렉션 타입
 Array, Dictionary, Set
 */

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//MARK: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)

print(integers)

integers.contains(100) //포함하고 있기 때문에 true
integers.contains(88)  //포함하고 있지 않기 때문에 false

//요소 지우기
integers.remove(at: 0) //0번째 있던 인덱스인 1을 삭제
integers.removeLast()  //마지막 인덱스인 100을 삭제
integers.removeAll()   //모든 인덱스 삭제

integers.count // 인덱스 갯수 확인

// Array<Double> 와 [Double]은 동일한 표현이다
// 빈 String Array 생성
var strings: [String] = [String]()
// 빈 Character Array 생성
// []은 새로운  빈 Array 생성
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1,2,3]
//따라서 immutableArray.append(4) 나 immutableArray.removeAll()같은 변경사항을 주는 요인은 사용하지 못한다.

//MARK: = Dictionary
// Key가 String 타입이고 Value(값)이 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary

anyDictionary["someKey"] = nil //somekey를 nil로 값을 지정하는 것은 삭제와 그 의미가 비슷하다

anyDictionary

let emptyDictionary: [String: String] = [:]

//MARK: - Set
// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(100)
integerSet // Set는 중복된 값은 없다

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB) //union을 통해 합집합 구하기
let sortedUnion: [Int] = union.sorted() //sorted를 통해 배열 정리
let intersection: Set<Int> = setA.intersection(setB) //intersection 교집합
let subtracting: Set<Int> = setA.subtracting(setB) //subtracting 차집합

/*
 추가 정리
 append - 추가
 contains - 값을 포함하고 있는지 확인
 remove - 삭제
 count - 인덱스 갯수 확인
 */

// MARK:07. 함수 기본-----------------------------------------------------------------------------------------------------------

//MARK: - 함수의 선언

//MARK: 함수 선언의 기본형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입) -> 반환타입 {
//   함수 구현부
//   return 반환값
//}

//ex
func sum(a: Int, b: Int) -> Int{
    return a + b
}

//MARK: 반환 값이 없는 함수
//func 함수이름(매개변수1이르미 매개변수1타입, 매개변수2이름: 매개변수2타입) -> Void {     << Void 생략도 가능
//   함수 구현부
//   return
//}

//ex
func printMyName(name: String) -> Void {
    print(name)
}

//MARK: 매개변수가 없는 함수
//func 함수이름() -> 반환타입 {
//   함수 구현부
//   return 반환값
//}

//MARK: 매개변수와 반환값이 없는 함수
//func 함수이름() -> Void {       << Void 생략 가능
//   함수 구현부
//   return
//}

func bye() {print("bye")}

bye()

//MARK: - 함수의 호출

sum(a: 3, b: 5)
printMyName(name: "jungyeob")


/*
 정리
 함수선언의 기본형태
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입) -> 반환타입{
     함수 구현부
     return 반환값
 }
 */

//ex
func multiplication(a: Int, b: Int) -> Int{
    return a * b
}

multiplication(a: 5, b: 10)

// MARK: 08. 함수 고급----------------------------------------------------------------------------------------------------------

//MARK: - 매개변수 기본값
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값) -> 반환타입{
//   함수 구현부
//   return 반환값

func greeting(friend: String, me : String = "jungyeob") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "yeob")

//MARK: - 전달인자 레이블

/*
 전달인자 레이블은 함수를 호출할 때
 매개변수의 역할을 좀 더 명확하게 하거나
 함수 사용자의 입장에서 표현하고자 할 때 사용한다
 */

//func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입) -> 반환타입{
//   함수 구현부
//   return 반환값

func greeting(to friend: String,from me : String = "jungyeob") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(to: "yeob")

//MARK: - 가변 매개변수

/*
전달받을 값의 개수를 알기 어려울 때 사용할 수 있습니다.
가변 매개변수는 함수당 하나만 가질 수 있습니다.
 */

//func 함수이름(매개변수1이름: 매개변수1타입,매개변수2이름: 매개변수2타입...) -> 반환타입{
//   함수 구현부
//   return 반환값

func sayHelloToFriedns(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)!"
}

print(sayHelloToFriedns(me: "jungyeob", friends: "hana","mana"))

//타입이 다른 함수는 할당할 수 없다.


// MARK: - 09. 조건문----------------------------------------------------------------------------------------------------------

let someInteger = 199

//MARK: - if-else

/*
 if condition {
     statements
 } else if condition {
     stsatements
 } esle {
     statements
 }
 */

if  someInteger < 100 {
    print("100 미만")
} else if someInteger > 100{
    print("100 초과")
} else {
    print("100")
}

//스위프트의 조건에는 항상 Bool 타입이 들어와야 한다.
//someInteger는 Bool 타입이 아닌 Int 타입이기 때문에 컴파일 오류가 발생한다.
//if someInteger{}

//MARK: - switch

/*
 switch value {
 case pattern:
     code
 default:
     code
 }
 */

//범위 연산자를 활용하면 더욱 쉽고 유용하다.
switch someInteger {
case 0:
    print("zero")
case 1..<100:  // .. 이상 미만
    print("1~99")
case 100:
    print("100")
case 101...Int.max:  // ... 이상 이하
    print("over 100")
default:
    print("unknown")
}

//정수 외의 대부분의 기본 타입을 사용할 수 있다.
switch "yagom" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "yagom":
    print("YAGOM")
default:
    print("unknown")
}

//MARK: 10. 반복문-------------------------------------------------------------------------------------------------------------

var abc = [1,2,3]
let people = ["jungyeob" : 10, "eric" : 15, "mike" : 12]

//MARK: - for-in

/*
 for item in items{
    code
 }
 */

for integer in abc {
    print(integer)
}

//Dictionary의 item은 key와 value로 구성된 튜플 타입입니다.
for (name, age) in people {
    print("\(name): \(age)")
}

//MARK: - whille

/*
 while (condition) {    << ()는 선택사항, 안써줘도됨
    code
 */

while abc.count > 1 {
    abc.removeLast()
}


//MARK: - repeat-while

/*
 repeat {
    code
 } while condition
 */

repeat {
    abc.removeLast()
} while abc.count > 0
