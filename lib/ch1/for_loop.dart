class ForLoop {
  ForLoop() {
    normalForLoop();
    enhancedForLoop();
    forEachLoop();
    testFor();
  }

  /// 전통적인 for문
  void normalForLoop() {
    /// for문의 형태
    /// int i = 0; => 값
    /// i < 5; => 종료 조건,
    ///           true 계속 진행
    ///           false 종료
    /// i++ => 한번 반복될 때 마다
    ///        i의 값을 1씩 증가
    for (int i = 0; i < 5; i++) {
      print("for i : $i");
    }

    List<String> list = ["a", "b", "c", "d", "e"];

    /// 데이터를 서버에서 받는 경우
    /// ex) 회원가입 목록
    for (int i = 0; i < list.length; i++) {
      print(list[i]);

      if (list[i] == "b" || list[i] == "d") {
        /// list[i]의 값이 b거나 d인 경우 진입
        print("찾았다 : ${list[i]}");
      }
    }
  }

  /// 향상된 for문
  void enhancedForLoop() {
    List<String> list = ["가", "나", "다", "라", "마"];

    /// in list => list 배열의 개수만큼
    /// String value => list에 있는 값이 차례차례 들어옴
    for (String value in list) {
      print(value);
    }
  }

  void forEachLoop() {
    List<String> list = ["가", "나", "다", "라", "마"];

    list.forEach((element) {
      print("element : $element");
    });
  }

  /// double 값으로 만들어진 배열(List)를
  /// for문을 사용해서 print를 출력해주세요
  /// 배열의 개수와 값은 각자 알아서 해주세요
  /// for문 3가지 모두 사용
  /// normal, enhanced, forEach
  void testFor() {
    List<double> doubleList = [
      1.1,
      2.5,
      3.333,
      54,
      77.5,
      2.1,
    ];

    /// normal
    for (int i = 0; i < doubleList.length; i++) {
      print("i : $i, value : ${doubleList[i]}");
    }

    /// enhanced
    for (var d in doubleList) {
      print("enhanced value : $d");
    }

    doubleList.forEach((element) {
      print('forEach element : $element');
    });
  }
}
