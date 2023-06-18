import 'package:flutter_lecture_first/ch2/animal/animal.dart';
import 'package:flutter_lecture_first/ch2/animal/dog_interface.dart';

/// Bird 클래스와 다른 2가지 작업
/// 1. swim 함수 추가
/// 2. 생성자를 다른 방법으로 만들어볼 것
class Dog extends Animal implements DogInterface {
  // Dog(super.name, super.age);
  Dog({required String name, required int age}) : super(name, age);

  @override
  void eat() {
    print("강아지 $name이(가) 밥을 먹고 있습니다.");
  }

  @override
  void sleep() {
    print("강아지 $name이(가) 자고 있습니다.");
  }

  void swim() {
    print("강아지 $name이(가) 수영하고 있습니다.");
  }

  @override
  void jump() {}

  @override
  void play() {}
}
