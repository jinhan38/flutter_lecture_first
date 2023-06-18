import 'car.dart';
import 'car_interface.dart';

class Benz extends Car implements CarInterface {
  Benz({
    required double price,
    required String name,
    required String owner,
  }) : super(price, name, owner) {
    print('Benz $name을(를) 출고했습니다.');
  }

  void repair() {
    print('$owner이(가) $name을(를) 수리했습니다.');
  }

  @override
  void sell() {
    print('$owner가 Benz $name을 $price에 판매했습니다.');
  }
}
