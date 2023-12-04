import 'dart:io';

import '../Class1/classes.dart';
import 'Functions/printOut.dart';

void main() {
  print("Are you a Teacher or a Student:");
  String? teachOrStud = stdin.readLineSync();

  printOut(teachOrStud!);
}
