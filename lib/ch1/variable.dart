class Variable {

  /// 변수 : String, int, double, bool, var, dynamic
  /// 변수 = 값을 변경할 수 있는 타입
  /// 상수 = 값을 변경할 수 없는 타입(final, const)
  Variable() {
    String name = "김진한";
    print(name);
    double weight = 75.6;
    bool check = false;
    print(check);

    int age = 33;
    print(age);
    age = 50;
    print(age);

    // variable
    // var 타입은 최초 입력한 타입을 인식
    var b = 10;

    // var 타입과 비슷
    // 모든 타입을 입력할 수 있다.
    // 실제 개발할 때 이게 무슨 값인지 알기 어려움
    dynamic d = "김진한";
    d = 12;
    d = 22.3;
    d = false;

    // 상수
    final String address = "seuol";
    const q = "ff";
    // address = "busan";
  }
}
