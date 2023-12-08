import 'dart:io';

abstract class Person {
  late String name;
  late List<String> subjects;

  Person(this.name, this.subjects);

  void displayInfo(String role);
  String returnInfo(String role);
}

class Teacher extends Person {
  late String employeeNumber;

  Teacher(String name, this.employeeNumber, List<String> subjects)
      : super(name, subjects);

  @override
  void displayInfo(String role) {
    print(
        "My name is $name of employee id: $employeeNumber and I'll take you through $subjects");
  }

  @override
  String returnInfo(String role) {
    return "Teacher $name, $employeeNumber, $subjects";
  }
}

class Student extends Person {
  late String classStream;

  Student(String name, this.classStream, List<String> subjects)
      : super(name, subjects);

  @override
  void displayInfo(String role) {
    print("My name is $name of stream $classStream and I'm taking $subjects");
  }

  @override
  String returnInfo(String role) {
    return "Student $name, $classStream, $subjects";
  }
}

void saveToFile(String output) {
  String outputPath = "output.txt";
  File outputFile = File(outputPath);
  IOSink outputSink = outputFile.openWrite(mode: FileMode.append);
  outputSink.writeln(output);
  outputSink.close();
  print("Data has been stored successfully at $outputPath");
}

Person createPerson(String role, String name) {
  String firstLetter = role[0].toLowerCase();
  print("What is your name? ");
  String name2 = stdin.readLineSync()!;

  if (firstLetter == "s") {
    print("What is your Class Stream");
    String classStream = stdin.readLineSync()!;
    print("List the subjects you are learning separated by a space: ");
    String subjects = stdin.readLineSync()!;

    List<String> subjectsList = subjects.split(" ");
    return Student(name2, classStream, subjectsList);
  } else if (firstLetter == "t") {
    print("What is your employee number");
    String employeeNumber = stdin.readLineSync()!;
    print("List the subjects you teach separated by a space: ");
    String subjects = stdin.readLineSync()!;

    List<String> subjectsList = subjects.split(" ");
    return Teacher(name2, employeeNumber, subjectsList);
  } else {
    throw Exception("Invalid Entry");
  }
}

void main() {
  print("Are you a Teacher(t) or a Student(s)?");
  String? role = stdin.readLineSync();

  try {
    Person person = createPerson(role!, "dummyName");
    person.displayInfo(role);
    saveToFile(person.returnInfo(role));
  } catch (e) {
    print(e);
  }
}
