import 'dart:io';
import 'multiplication_table.dart' as multi_tabble;

class MultiplicationTableController {
  void multiTableRun() {
    final List _exitAnswer = ["no", "n"];
    multi_tabble.MultiplicationTable table = multi_tabble.MultiplicationTable();

    print("*** Welcome to Multiplication Table App ***");
    while (true) {
      while (true) {
        try {
          print("Enter the numer");
          int valueForTable = int.parse(stdin.readLineSync()!);
          table.getTable(valueForTable);
          break;
        } on FormatException {
          print("Please enter a number");
        }
      }
      print("Do you wana continue ?");
      if (_exitAnswer.contains(stdin.readLineSync()!)) {
        break;
      }
    }
  }
}
