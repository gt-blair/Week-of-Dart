class Teacher {
  late String name;
  late String employee_number;
  late List<String> subjects;

  void displayInfo() {
    print(
        "My name is $name of employee id: $employee_number and I'll take you through $subjects");
  }
}

class Student {
  late String name;
  late String classStream;
  late List<String> subjects;

  void displayInfo() {
    print(
        "My name is $name of stream $classStream and I'm taking $subjects");
  }
}
