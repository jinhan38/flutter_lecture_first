import 'car.dart';
import 'car_interface.dart';

class Sonata extends Car implements CarInterface {
  Sonata({
    required double price,
    required String name,
    required String owner,
  }) : super(price, name, owner) {
    print('Sonata $name을(를) 출고했습니다.');
  }

  void getGas() {
    print('$owner이(가) $name을(를) 주유했습니다.');
  }

  @override
  void sell() {
    print('$owner가 Sonata $name을 $price에 판매했습니다.');
  }
}
