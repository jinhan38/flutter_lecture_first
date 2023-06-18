abstract class Car {
  double price;
  String name;
  String owner;

  Car(this.price, this.name, this.owner);

  void run() {
    print('$name이(가) 달리고 있습니다.');
  }

  void stop() {
    print("$name이(가) 정지했습니다.");
  }
}