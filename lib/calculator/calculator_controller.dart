import 'dart:io';
import 'calculator.dart' as calculator;

class CalculatorController {
  final List _checkValues = ["*", "/", "+", "-"];
  final List _exitAnswer = ["no", "n"];
  calculator.Calculator calc = calculator.Calculator();
  List conditionValues = [0, "", 0];
  String valueCondition = "";
  String answer = "";

  String toRound(var toRoundValue) {
    if (toRoundValue.runtimeType != String) {
      if (toRoundValue % 1 == 0) {
        return toRoundValue.toInt().toString();
      }
    }
    return toRoundValue.toString();
  }

  String answerParser(List condition, String finalAnswer) {
    String answerParsed = "";
    condition.forEach((element) {
      answerParsed += ' ${toRound(element)} ';
    });
    return '$answerParsed = $finalAnswer';
  }

  void calcRun() {
    print("***Welcome to calculator***");

    while (true) {
      while (true) {
        print("Enter the the first number");
        try {
          conditionValues[0] = double.parse(stdin.readLineSync()!);
          break;
        } on FormatException {
          print("You should write a nummber");
        }
      }

      while (true) {
        print("Enter the the condition, in should be '+ - * /'");
        valueCondition = stdin.readLineSync()!;
        if (_checkValues.contains(valueCondition)) {
          conditionValues[1] = valueCondition;
          break;
        }
      }

      while (true) {
        print("Enter the the second number");
        try {
          conditionValues[2] = double.parse(stdin.readLineSync()!);
          break;
        } on FormatException {
          print("You should write a nummber");
        }
      }

      print(answerParser(conditionValues, calc.getAnswer(conditionValues)));

      print("Do you wana continue ?");
      if (_exitAnswer.contains(stdin.readLineSync()!)) {
        break;
      }
    }
  }
}
