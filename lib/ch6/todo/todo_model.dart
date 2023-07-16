/// 데이터 클래스
/// 특정 데이터들을 담을 수 있는 클래스

class TodoModel {
  String name;
  bool complete;

  TodoModel(this.name, this.complete);

  @override
  String toString() {
    return 'TodoModel{name: $name, complete: $complete}';
  }
}
