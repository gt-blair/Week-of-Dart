import 'dart:io';

class Teacher {
  late String name;
  late String employee_number;
  late List<String> subjects;

  Teacher(this.name, this.employee_number, this.subjects);

  void displayInfo() {
    print(
        "My name is $name of employee id: $employee_number and I'll take you through $subjects");
  }

  String returnInfo() {
    return "Teacher $name, $employee_number, $subjects";
  }
}

class Student {
  late String name;
  late String classStream;
  late List<String> subjects;

  Student(this.name, this.classStream, this.subjects);

  void displayInfo() {
    print("My name is $name of stream $classStream and I'm taking $subjects");
  }

  String returnInfo() {
    return "Student $name, $classStream, $subjects";
  }
}


void saveToFile(String output) {
  //Specifying the output file
  String outputPath = "output.txt";

  // Write the output with the append mode...
  // This allows for subsequent output to be stored alongside prev output
  File outputFile = File(outputPath);
  IOSink outputSink = outputFile.openWrite(mode: FileMode.append);
  outputSink.writeln(output); // We use writeln to write our data and a new line

  //Closw the output file
  outputSink.close();
  print("Data has been stored success fully at $outputPath");
}


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


void main() {
  //Optionally than typing Teacher you can just input the inital t
  //Functions are optimised to check on the initials
  print("Are you a Teacher(t) or a Student(s)?");
  String? teachOrStud = stdin.readLineSync();

  String output = returnOut(teachOrStud!);

  saveToFile(output);
}
