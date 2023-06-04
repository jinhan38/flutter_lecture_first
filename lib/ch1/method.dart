class Method {
// 함수를 만드는 이유
// 동일한 코드를 줄이기 위해서,
// 반복되는 코드를 재사용하기 위해서
// 코드를 정리하기 위해서
// 코드의 역할을 정의하기 위해서
  Method() {
    int age = add();
    print('Method.Method age : $age');

    double result = calculate(10, 20); // 22.5
    print('Method.Method result : $result');

    String kk = introduce(name: "김진한", name2: "jinhan");
    print('Method.Method kk : $kk');

    var o = optional("김진한");
    print('ooo : $o');
  }

  // 리턴타입   함수이름  구현부
  // int       add()     {}
  // void = 리턴 타입 없다
  int add() {
    // do something
    return 30;
  }

  /// 계산 함수
  /// 1. 2개의 int 타입 값을 받으세요.
  /// 2. 2개의 숫자를 더하세요
  /// 3. 나누기 2를 하세요.
  /// 4. 1.5를 곱하세요
  double calculate(int a, int b) {
    return ((a + b) / 2) * 2.5;
  }

  /// 함수 안에 입력해야 하는 값이 여러 개인 경우가 있음
  String introduce({
    required String name,
    required String name2,
  }) {
    return "안녕하세요. $name입니다.";
  }

  /// {String b = ""} -> 값을 입력하지 않아도 됨.
  String optional(String a, {String b = "빈 값"}) {
    return "$a, $b, 잘 부탁드립니다.";
  }
}
