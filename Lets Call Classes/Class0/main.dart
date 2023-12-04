import 'classes.dart';

void main() {
  var student1 = Student();
  student1.name = "Hamza Nurr";
  student1.classStream = "7N";
  student1.subjects = ["Maths", "English", "Swahili"];

  var teacher1 = Teacher();
  teacher1.name = "Yusuf Esmail";
  teacher1.employee_number = "TN234234234";
  teacher1.subjects = ["Chemistry", "Zoology", "Biology"];

  student1.displayInfo();
  teacher1.displayInfo();
}
