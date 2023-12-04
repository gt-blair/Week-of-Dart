import 'dart:io';

import 'Functions/printOut.dart';

void main() {
  print("Are you a Teacher or a Student:");
  String? teachOrStud = stdin.readLineSync();

  printOut(teachOrStud!);
}
