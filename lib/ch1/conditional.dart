class Conditional {
  /// 1. If
  /// 2. switch
  /// 3. 삼항연산자
  Conditional() {
    int r = conditionalIf(200);
    print('rrrr : $r');

    String result = testGrade(85);
    print('등급 : $result');

    // 테스트 커밋
  }

  int conditionalIf(int value) {
    int result = 0;
    if (value > 90) {
      // value가 90보다 클 경우 진입
      result = -10;
    } else {
      result = 10;
    }
    return result;
  }

  String testGrade(int score) {
    String grade = "F";
    if (score >= 90) {
      grade = "A";
    } else if (score >= 80) {
      grade = "B";
    } else if (score >= 70) {
      grade = "C";
    } else if (score >= 60) {
      grade = "D";
    } else {}

    return grade;
  }
}
