import 'dart:io';

import '../Class1/classes.dart';

void main() {
  print("Are you a Teacher or a Student:");
  String? teachOrStud = stdin.readLineSync();

  if (teachOrStud == "Teacher") {
    print("What is your name");
    String name = stdin.readLineSync()!;
    print("What is your employee number");
    String employee_number = stdin.readLineSync()!;
    print("List the subjects you teach seperated by a space: ");
    String subjects = stdin.readLineSync()!;

    List<String> subjectsList = subjects.split(" ");

    var teacher1 = Teacher(name, employee_number, subjectsList);
    teacher1.displayInfo();
  } else if (teachOrStud == "Student"){
    print("What is your name");
    String name = stdin.readLineSync()!;
    print("What is your Class Stream");
    String classStream = stdin.readLineSync()!;
    print("List the subjects you are learning seperated by a space: ");
    String subjects = stdin.readLineSync()!;

    List<String> subjectsList = subjects.split(" ");

    var student1 = Student(name, classStream, subjectsList);
    student1.displayInfo();
  }
}
