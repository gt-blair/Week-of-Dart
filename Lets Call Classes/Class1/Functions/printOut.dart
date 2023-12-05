import "dart:io";

import "../../Class1/classes.dart";

void printOut(String name) {
  //Takes the whole name parameter and picks out the first alphabet in lowercase
  String firstLetter = name[0].toLowerCase();
  print("What is your name? ");
  String name2 = stdin.readLineSync()!;
  if (firstLetter == "s") {
    print("What is your Class Stream");
    String classStream = stdin.readLineSync()!;
    print("List the subjects you are learning seperated by a space: ");
    String subjects = stdin.readLineSync()!;

    List<String> subjectsList = subjects.split(" ");

    var student1 = Student(name2, classStream, subjectsList);
    student1.displayInfo();
  } else if (firstLetter == "t") {
    print("What is your employee number");
    String employee_number = stdin.readLineSync()!;
    print("List the subjects you teach seperated by a space: ");
    String subjects = stdin.readLineSync()!;

    List<String> subjectsList = subjects.split(" ");

    var teacher1 = Teacher(name2, employee_number, subjectsList);
    teacher1.displayInfo();
  } else {
    print("Invalid Input");
  }
}

String returnOut(String name) {
  //Takes the whole name parameter and picks out the first alphabet in lowercase
  String firstLetter = name[0].toLowerCase();
  print("What is your name? ");
  String name2 = stdin.readLineSync()!;
  if (firstLetter == "s") {
    print("What is your Class Stream");
    String classStream = stdin.readLineSync()!;
    print("List the subjects you are learning seperated by a space: ");
    String subjects = stdin.readLineSync()!;

    List<String> subjectsList = subjects.split(" ");

    var student1 = Student(name2, classStream, subjectsList);
    return student1.returnInfo();
  } else if (firstLetter == "t") {
    print("What is your employee number");
    String employee_number = stdin.readLineSync()!;
    print("List the subjects you teach seperated by a space: ");
    String subjects = stdin.readLineSync()!;

    List<String> subjectsList = subjects.split(" ");

    var teacher1 = Teacher(name2, employee_number, subjectsList);
    return teacher1.returnInfo();
  } else {
    return "Invalid Entry";
  }
}
