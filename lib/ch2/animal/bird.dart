import 'package:flutter_lecture_first/ch2/animal/animal.dart';
import 'package:flutter_lecture_first/ch2/animal/animal_interface.dart';
import 'package:flutter_lecture_first/ch2/animal/dog_interface.dart';
import 'package:flutter_lecture_first/ch2/animal/item.dart';

/// 상속은 1개만 가능
/// interface 여러개 가능
class Bird extends Animal
    with Item, Item2
    implements AnimalInterface, DogInterface {
  /// 생성자
  /// 생성자는 해당 클래스를 생성할 때 사용하는 함수
  /// super 라는 키워드는 부모 클래스의 생성자에 값을 입력
  Bird(super.name, super.age);

  /// override : 부모 클래스에 있는 함수를 구현 한다는 의미
  @override
  void eat() {
    // do something
  }

  @override
  void sleep() {}

  /// 고급
  /// 부모 클래스에서 구현한 함수를 재구현
  @override
  void run() {
    /// super라는 키워드는 부모클래스의 것을 사용할 수 있음
    /// super.run(); 호출하면 부모 클래스의 run 함수를 호출하는 것
    super.run();
    print('Bird 클래스의 run');
  }

  @override
  void hunting() {}

  @override
  void rest() {}

  @override
  void fly() {}

  @override
  void jump() {}

  @override
  void play() {}

  @override
  void wakeUp() {}

  @override
  void nothing() {}

// @override
// void talk() {
//   super.talk();
// }
}
