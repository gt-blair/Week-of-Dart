import 'dart:io';

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
