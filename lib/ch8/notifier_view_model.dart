import 'package:flutter/cupertino.dart';

class NotifierViewModel with ChangeNotifier {
  /// 싱글톤
  /// 동일한 인스턴스를 계속 사용 가능
  static final NotifierViewModel _notifierViewModel =
      NotifierViewModel._singleton();

  factory NotifierViewModel() => _notifierViewModel;

  NotifierViewModel._singleton();

  int count = 0;

  void countUp() {
    count++;
    notifyListeners();
  }
}
