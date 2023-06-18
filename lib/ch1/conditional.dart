class Conditional {
  /// 1. If
  /// 2. switch
  /// 3. 삼항연산자
  Conditional() {
    int r = conditionalIf(200);
    print('rrrr : $r');

    String result = testGrade(85);
    print('등급 : $result');

    String switchResult = testSwitch(50);
    print('switchResult : $switchResult');
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

  String testSwitch(int score) {
    String grade = "F";

    /// score 라는 변수의 값을 체크 하려는 목적
    switch (score) {
      case 90:
        // score의 값이 90인 경우
        grade = "A";

        break;
      case 80:
        // score의 값이 80인 경우
        grade = "B";
        break;
      case 70:
        // score의 값이 70인 경우
        grade = "C";
        break;
      default:
        grade = "No data";
        break;
    }
    return grade;
  }

  /// If 문은 범위 체크 가능
  /// Switch 문은 동일한 값을 체크
// String testSwitch(int score) {
//   String grade = "F";
//
//   switch (score) {
//     case 90:
//       // score가 90인 경우
//       // do something
//       grade = "A";
//
//       break;
//     case 80:
//       // score가 80인 경우
//       grade = "B";
//
//       break;
//     case 70:
//       // score가 70인 경우
//       grade = "C";
//
//       break;
//     default:
//       // 다른 조건에 해당하지 않은 경우
//       grade = "no data";
//       break;
//   }
//
//   return grade;
// }
}
