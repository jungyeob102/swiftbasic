
/*
강좌02. 명명법/콘솔로그/문자열 보간법--------------------------------------------------------------------------------------------------
 콘솔로그
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

// 03. 상수와 변수---------------------------------------------------------------------------------------------------------------

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
 상수 선언 키워드 = var
 var 이름 : 타입 = 값
 
 변수 선언 키워드 = let
 let 이름 : 타입 = 값
 
 상수는 차후에 값을 변경할 수 없다. 그러나 변수는 차후에 값을 변경할 수 있다.
 MYTHINK - 따라서 언제나 고정된 값을 가지는 것은 상수로, 변할 가능성이 있으면 변수로 선언하는 것이 좋을 것이다.
 */

// 04. 기본 데이터 타입-----------------------------------------------------------------------------------------------------------
 
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

// 05. Any, AnyObject, nil ---------------------------------------------------------------------------------------------------

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
