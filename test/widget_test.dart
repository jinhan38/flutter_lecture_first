import 'package:flutter/cupertino.dart';
import 'package:flutter_lecture_first/ch1/collections.dart';
import 'package:flutter_lecture_first/ch1/conditional.dart';
import 'package:flutter_lecture_first/ch1/for_loop.dart';
import 'package:flutter_lecture_first/ch1/method.dart';
import 'package:flutter_lecture_first/ch1/null_safety.dart';
import 'package:flutter_lecture_first/ch1/operator.dart';
import 'package:flutter_lecture_first/ch1/variable.dart';
import 'package:flutter_lecture_first/ch2/animal/bird.dart';
import 'package:flutter_lecture_first/ch2/animal/dog.dart';
import 'package:flutter_lecture_first/ch2/coffee/americano.dart';
import 'package:flutter_lecture_first/ch2/coffee/latte.dart';
import 'package:flutter_lecture_first/ch2/homework_car.dart';
import 'package:flutter_lecture_first/ch2/person.dart';
import 'package:flutter_lecture_first/ch2/product.dart';

void main() {
  // Variable();
  //
  // Operator();
  //
  // Method();
  //
  // Conditional();
  //
  // Collections();
  //
  // ForLoop();

  // /// 타입에는 String, int double, bool
  // /// 클래스를 생성할 때는 ()를 써줘야 함.
  // /// Person() = Person 클래스를 생성하는 코드
  // Person person = Person("김진한11", 34, 70.5);
  // person.talk();
  //
  // Person person2 = Person("김진한22", 40, 90.0);
  // person2.talk();
  //
  // Person person3 = Person("K군", 12, 35);
  // person3.talk();
  //
  // /// 더조은 회사의 선풍기를 판매하고, 몇 번 팔았는지 알고싶어
  // Product a = Product("선풍기", "더조은회사");
  //
  // /// 핸드폰 or 키오스크 화면에서 사용자가 버튼 클릭
  // a.sale();
  // a.sale();
  // a.sale();
  //
  // a.sum();
  //
  // Product computer = Product("컴퓨터", "더조은회사");
  // computer.sale();
  // computer.sale();
  // computer.sale();
  // computer.sale();
  // computer.sale();
  //
  // computer.sum();
  //
  // Americano americano = Americano("프리미엄 아메리카노", 8000, false, false);
  // americano.sale();
  // americano.service();
  // americano.refund();
  //
  // Latte latte = Latte("저렴한 라떼", 1500, true, true);
  // latte.service();
  // latte.refund();
  //
  // Conditional();
  //
  // /// Bird 클래스 생성
  // Bird bird1 = Bird("비둘기", 2);
  //
  // /// run 함수 호출
  // bird1.run();
  //
  // Dog dog1 = Dog(name: "흰둥이", age: 3);
  // dog1.run();
  // dog1.swim();
  // dog1.eat();
  // dog1.sleep();
  //
  // HomeWorkCar();

  var nullSafety = NullSafety();

  nullSafety.age = 40;
  nullSafety.name = "홍길동";

  nullSafety.age2 = 50;
  nullSafety.age2 = null;
  nullSafety.name2 = null;

  /// nullableType으로 선언을 하면 null로 인식
  /// non-nullableType인데 초기화를 안하면 오류 발생
  NullSafety? ns2;

  print('ns2 : $ns2');
}
