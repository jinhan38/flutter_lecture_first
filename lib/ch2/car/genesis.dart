
import 'car.dart';
import 'car_interface.dart';

class Genesis extends Car implements CarInterface {
  Genesis({
    required double price,
    required String name,
    required String owner,
  }) : super(price, name, owner) {
    print('Genesis $name을(를) 출고했습니다.');
  }

  void wash() {
    print('$owner이(가) $name을(를) 세차했습니다.');
  }

  @override
  void sell() {
    print('$owner가 Genesis $name을 $price에 판매했습니다.');
  }
}