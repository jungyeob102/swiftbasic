
/*
강좌02. 명명법/콘솔로그/문자열 보간법
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

// 03. 상수와 변수

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

