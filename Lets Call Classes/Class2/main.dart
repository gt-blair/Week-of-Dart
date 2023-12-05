import 'dart:io';

import '../Class1/Functions/printOut.dart';
import 'Functions/savetoTextFile.dart';

void main() {
  //Optionally than typing Teacher you can just input the inital t
  //Functions are optimised to check on the initials
  print("Are you a Teacher(t) or a Student(s)?");
  String? teachOrStud = stdin.readLineSync();

  String output = returnOut(teachOrStud!);

  saveToFile(output);
}
