import 'dart:io';
import 'even_checker.dart' as cheker;

class EvenChekerController {
  void checkerRun() {
    final List _exitAnswer = ["no", "n"];
    cheker.EvenChecker checker = cheker.EvenChecker();
    int valueToCheck = 0;
    print("*** Welcome to even checker ***");
    while (true) {
      print("Enter the number to check ");
      try {
        valueToCheck = int.parse(stdin.readLineSync()!);
        print(checker.checkNum(valueToCheck));
      } on FormatException {
        print("Please write a number not word");
      }
      print("Do you wana continue ?");
      if (_exitAnswer.contains(stdin.readLineSync()!)) {
        break;
      }
    }
  }
}
