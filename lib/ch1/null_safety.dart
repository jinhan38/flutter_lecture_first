class NullSafety {
  NullSafety() {
    print('age : $age, name : $name');
    print('age2 : $age2, name2 : $name2');
  }

  /// Null : 아무 것도 없음을 의미
  /// 값 자체가 존재하지 않거나 할당하지 않은 상태
  /// NullSafety : Null 오류로부터 방지해주는 안전장치
  /// Null이라는 값을 잘 못 사용하면 오류가 발생
  /// Null pointer exception

  /// Nullable 타입은 null을 허용할 수 있음
  /// Non-nullable 타입은 null을 허용할 수 없음
  ///
  /// Nullable : 타입 뒤에 ?가 있는 것
  /// Non-nullable : 타입 뒤에 ?가 없는 것
  ///
  /// ?가 있으면 null 입력할 수 있고,
  /// 없으면 null을 입력할 수 없다.
  int age = 33;
  String name = "김진한";

  /// 초기화를 안한 상태(=을 사용해서 데이터 입력 안함)
  /// 초기화 안했으면 값은 null
  int? age2;
  String? name2 = "이순신";
}
