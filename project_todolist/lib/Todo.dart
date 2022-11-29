class Todo {
  String title;
  bool isDone;
  Todo(this.title, this.isDone);

  // bool get Done => isDone; // เรียก getter obj.Done คือการคืนค่า isDone

  // String get Title => title; // เรียก obj.Title คือ คืนค่า title

  String getTitle() => title;
  bool getDone() => isDone;

  void set setDone(bool v) {
    isDone = v;
  }

  void set Title(String t) {
    title = t;
  }

  // String toString() => '$Title $Done';
  @override
  String toString() {
    return '$title $isDone';
  }
}
