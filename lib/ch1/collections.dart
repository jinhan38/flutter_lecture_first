import 'dart:ffi';

class Collections {
  /// List, Map, Set
  /// List/배열 : 시작 번호!!!,
  /// 일반적인 경우 : 1,2,3,4,5,6,7,8,9,10
  /// 개발에서는 0번 부터 시작 : 0, 1, 2, 3, 4,
  /// List는 순서가 있다. -> 인풋/아웃풋 index(순서) 사용
  /// Map은 순서가 없다. -> 인풋/아웃풋 key 사용
  Collections() {
    // listAdd();
    // listRemove();
    // listController();
    // collectionMap();
    collectionSet();
  }

  /// listAdd
  /// 변수 : String, int, bool
  /// List = 여러개의 변수
  void listAdd() {
    int age = 35;

    /// List<int> : 변수의 타입, int타입을 여러개 가짐
    List<int> listInt = [3, 8, 5, 1];
    print("listInt 1 : $listInt");

    listInt.add(age);
    print("listInt 2 : $listInt");

    listInt.addAll([6, 1, 54, 7, 8, 3]);
    print("listInt 3 : $listInt");

    /// index(첫번째) : 위치
    /// element : 값
    /// insert : 특정 위치에 값을 입력
    /// 기존의 값을 제거하는 것이 아니고, 추가하는 것
    listInt.insert(0, 100);
    print("listInt 4 : $listInt");
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.add("김진한");
    nameList.add("홍길동");
    nameList.add("이순신");
    nameList.add("오바마");
    nameList.add("기린");
    nameList.add("호랑이");
    nameList.add("사자");

    nameList.removeWhere((element) {
      return element == "김진한" || element == "사자";
    });
    print('nameList : $nameList');

    // print("nameList 1 : $nameList");
    // nameList.removeAt(1);
    // print("nameList 2 : $nameList");
    //
    // nameList.removeLast();
    // print("nameList 3 : $nameList");
    //
    // nameList.remove("김진한");
    // print("nameList 4 : $nameList");
    //
    // nameList.clear();
    // print("nameList 5 : $nameList");
  }

  void listController() {
    List<int> ageList = [4, 5, 2, 6, 7, 4, 8];

    /// 배열이 몇 개 인지 알려줌
    int size = ageList.length;
    print("size : $size");

    /// [index]를 넣어줌, index는 0번 부터 시작
    int first = ageList[0];
    print('first : $first');
    int second = ageList[1];
    print('second : $second');

    /// bool 값 리턴,
    /// ageList가 비어있다면 true,
    /// 데이터가 있다면 false
    /// ageList.length == 0;
    bool a = ageList.isEmpty;
    print("isEmpty : $a"); // false
    print("ageList check : $ageList");

    /// 데이터가 있는지 질문
    /// 데이터가 있다면 true
    /// 데이터가 없다면 false
    bool isNotEmpty = ageList.isNotEmpty;
    print('isNotEmpty : $isNotEmpty');
  }

  /// Map => key, value
  void collectionMap() {
    Map m = {
      444: 245,
      40.1458: "ㄹㄴㅇㄹ",
      "435345": "ㄹㄹ",

      /// key = 주소, 이름
      /// value = 값
      "key": "value",

      /// a라는 key에 알파벳이라는 value 할당
      "a": "알파벳",
    };

    print('mmmmm : $m');
    String value = m["a"];
    print('value : $value');

    /// 추가
    /// putIfAbsent
    m.putIfAbsent("b", () => "두번째");
    print('m 2 : $m');

    m.putIfAbsent("b", () => "세번째");
    print('m 3 : $m');

    /// key가 존재하건 안하건 무조건 입력
    m["b"] = "네번째";
    m["c"] = "다섯 번째";
    print('m 4 : $m');

    m.remove("a");
    print('m 5 : $m');

    /// <type1, type2>
    /// <key의 type, value의 타입>
    /// <String, dynamic> =>
    /// Key는 String, value 모든 타입 가능
    Map<String, dynamic> typeMap = {
      "a": "aaaaa",
      "b": 100,
      "c": true,
      "d": 50.5,
    };
    print('typeMap : $typeMap');
    m.length;
    m.clear();
  }

  /// 중복 값 비허용
  /// Set
  void collectionSet() {
    Set s = {"a", "b", "c"};
    s.add("d");
    print("set : $s");
    s.addAll(["a", 3, 4, 5, 6]);
    print("set 2 : $s");

    s.remove("b");
    s.removeWhere((e) {
      /// || = or
      /// && = And
      /// 값이 3, 4, 5이면 제거하세요.
      return e == 3 || e == 4 || e == 5;
    });
    print('sssss : $s');

    /// index 입력, 0번부터 시작
    var result = s.elementAt(1);
    print('result : $result');

    /// int 타입만 입력 가능
    Set<int> intSet = {};
    intSet.add(45);
    intSet.add(456674);
    // intSet.add("asdfasdf");
  }
}
