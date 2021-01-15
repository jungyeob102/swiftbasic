
/*
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

// 변수와 상수

import Swift

//상수, 변수의 선언
//상수 선언 키워드 let
//변수 선언 키워드 var

//상수의 선언
//  let 이름: 타입 = 값

//변수의 선언
//  var 이름: 타입 = 값

