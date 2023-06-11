/// 클래스
/// 객체지향 -> 모든 것이 객체
/// Person이라는 이름의 객체
/// 클래스 안에는 변수들과 메소드(함수)들이 있다.
/// 다시 말해 클래스는 변수와 메소드들의 집합.
class Person {
  /// 생성자 1
  // Person() {
  //   print("person 생성");
  // }

  /// 생성자 2
  Person(this.name, this.age, this.weight);

  String name;
  int age;
  double weight;

  void talk() {
    print('$name이 대화를 신청했습니다.');
  }
}
