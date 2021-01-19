import UIKit

var str = "Hello, playground"

import Foundation

//MARK: 문제 1번
//원가가 1000원인 과자를 1300원에 25개 팔았다. 총 판매액과 판매이익을 출력하는 프로그램을 작성하시오
var origin = 1000
var price = 1300
var num = 25

var total = price * num
var pay = origin * num

var profit = total - pay
print(profit)


//MARK: 문제 2번
/* 홍길동의 4과목 성적이 국어 89점, 수학 98점, 영어 87점, 과학 88점이다.
 name 변수에 "홍길동"을 저장하고, 평균을 구하여 출력하는 프로그램의 실행결과를 참조하여 작성하시오.
 실행결과:
 홍길동의 평균은 00.0점입니다.
 */

var korean  = 89
var math  = 98
var english  = 87
var science  = 88

var name = "홍길동"

var average = Double(korean + math + english + science) / 4

print("\(name)의 평균은 \(average)점 입니다")



//MARK: 문제 3번
/* 인치로 된 제품의 크기를 입력받아서 cm로 출력하는 프로그램을 작성하세요. (1inch = 2.54cm)
 힌트 : 키보드 입력은 readLine()
 */

으띠






//
